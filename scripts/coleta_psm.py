#!/usr/bin/env python3
"""Coleta automática das métricas PSM/CID a partir das issues do GitHub.

Lê as issues, os eventos e os commits do repositório pela API do GitHub,
calcula os indicadores definidos em docs/gestao/psm.md e gera:

  docs/gestao/painel.md            página do painel (sobrescrita a cada execução)
  docs/gestao/img/progresso.svg    gráfico de progresso por milestone
  docs/gestao/img/esforco.svg      gráfico de esforço por integrante
  docs/gestao/dados/issues.csv     dados brutos das issues
  docs/gestao/dados/contribuicao.csv
  docs/gestao/dados/indicadores.csv
  docs/gestao/dados/medicoes.csv   histórico (só com --registrar)

Uso:
  python scripts/coleta_psm.py              atualiza o painel
  python scripts/coleta_psm.py --registrar  atualiza e grava uma medição oficial no histórico

Autenticação (opcional para repositório público, mas evita limite de requisições):
variável GITHUB_TOKEN ou GH_TOKEN, ou o login do GitHub CLI (gh auth login).
"""
import argparse
import csv
import datetime as dt
import json
import os
import re
import subprocess
import sys
import urllib.error
import urllib.request
from collections import defaultdict
from pathlib import Path

REPO = "FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN"

# login do GitHub -> nome exibido. Integrantes sem nenhuma issue também aparecem nas tabelas.
EQUIPE = {
    "arthurfernandesj": "Arthur Fernandes",
    "daniel-de-sousa": "Daniel Sousa",
    "giovanafontess": "Giovana Fontes",
    "hauedyws": "Hauedy Wegner",
    "leticialopes20": "Letícia Maria",
    "lucasbbranco": "Lucas Branco",
}

# Limites de alerta (os mesmos da Tabela 1 de docs/gestao/psm.md)
LIMITE_PROGRESSO = 80.0          # CP-1: % mínima na véspera da entrega
LIMITE_RAZAO = (0.8, 1.2)        # RC-1: faixa aceitável de horas reais / estimadas
LIMITE_DISTRIBUICAO = (10.0, 30.0)  # RC-2: % de esforço por integrante
LIMITE_RETRABALHO = 25.0         # DP-1: % máxima de issues reabertas

COR_SERIE = "#2a78d6"
COR_RESTANTE = "#d9d8d4"
COR_SUPERFICIE = "#fcfcfb"
COR_TEXTO = "#0b0b0b"
COR_TEXTO_2 = "#52514e"

RAIZ = Path(__file__).resolve().parent.parent
DIR_GESTAO = RAIZ / "docs" / "gestao"
DIR_DADOS = DIR_GESTAO / "dados"
DIR_IMG = DIR_GESTAO / "img"


# ----------------------------------------------------------------------------- API
def obter_token():
    for var in ("GITHUB_TOKEN", "GH_TOKEN"):
        if os.environ.get(var):
            return os.environ[var]
    try:
        r = subprocess.run(["gh", "auth", "token"], capture_output=True, text=True, timeout=10)
        if r.returncode == 0 and r.stdout.strip():
            return r.stdout.strip()
    except (OSError, subprocess.SubprocessError):
        pass
    return None


def api_paginada(caminho, token):
    itens, pagina = [], 1
    while True:
        sep = "&" if "?" in caminho else "?"
        url = f"https://api.github.com/repos/{REPO}/{caminho}{sep}per_page=100&page={pagina}"
        req = urllib.request.Request(url, headers={
            "Accept": "application/vnd.github+json",
            "User-Agent": "coleta-psm",
            **({"Authorization": f"Bearer {token}"} if token else {}),
        })
        with urllib.request.urlopen(req, timeout=30) as resp:
            lote = json.loads(resp.read().decode("utf-8"))
        itens.extend(lote)
        if len(lote) < 100:
            return itens
        pagina += 1


# ----------------------------------------------------------------------------- parsing
NUM = r"([0-9]+(?:[.,][0-9]+)?)"


def extrair_horas(corpo, rotulo):
    """Lê 'Horas estimadas'/'Horas reais' do texto da issue.

    Aceita o formato das issues criadas pelo script ('- Horas reais (...): 3')
    e o do formulário de issue ('### Horas reais' seguido do valor).
    """
    if not corpo:
        return None
    m = re.search(rf"Horas {rotulo}[^\n:]*:[ \t]*{NUM}", corpo, re.I)
    if not m:
        m = re.search(rf"#+\s*Horas {rotulo}[^\n]*\n\s*{NUM}", corpo, re.I)
    return float(m.group(1).replace(",", ".")) if m else None


def nome(login):
    return EQUIPE.get(login.lower(), login) if login else "Sem responsável"


def data_br(iso):
    return dt.datetime.fromisoformat(iso.replace("Z", "+00:00")).astimezone(FUSO).strftime("%d/%m/%Y") if iso else ""


def fmt(x, casas=1):
    return "-" if x is None else f"{x:.{casas}f}".replace(".", ",")


def celula(texto):
    return str(texto).replace("|", "\\|").replace("\n", " ")


try:
    from zoneinfo import ZoneInfo
    FUSO = ZoneInfo("America/Sao_Paulo")
except Exception:  # sem base de fusos instalada
    FUSO = dt.timezone(dt.timedelta(hours=-3))


# ----------------------------------------------------------------------------- cálculo
def coletar(token):
    issues_api = [i for i in api_paginada("issues?state=all", token) if "pull_request" not in i]
    eventos = api_paginada("issues/events", token)
    commits = api_paginada("commits", token)

    reabertas = {e["issue"]["number"] for e in eventos if e.get("event") == "reopened" and e.get("issue")}

    issues = []
    for i in issues_api:
        issues.append({
            "numero": i["number"],
            "titulo": i["title"],
            "url": i["html_url"],
            "estado": "fechada" if i["state"] == "closed" else "aberta",
            "milestone": (i.get("milestone") or {}).get("title", "Sem milestone"),
            "prazo_milestone": (i.get("milestone") or {}).get("due_on"),
            "labels": [l["name"] for l in i.get("labels", [])],
            "responsaveis": [a["login"] for a in i.get("assignees", [])],
            "criada_em": i["created_at"],
            "fechada_em": i.get("closed_at"),
            "horas_estimadas": extrair_horas(i.get("body"), "estimadas"),
            "horas_reais": extrair_horas(i.get("body"), "reais"),
            "reaberta": i["number"] in reabertas,
        })
    issues.sort(key=lambda x: x["numero"])

    commits_por_autor = defaultdict(int)
    for c in commits:
        login = (c.get("author") or {}).get("login")
        chave = login.lower() if login else c["commit"]["author"]["name"]
        commits_por_autor[chave] += 1
    return issues, commits_por_autor


def calcular(issues, agora):
    fechadas = [i for i in issues if i["estado"] == "fechada"]

    # CP-1 por milestone
    milestones = defaultdict(lambda: {"total": 0, "fechadas": 0, "prazo": None})
    for i in issues:
        m = milestones[i["milestone"]]
        m["total"] += 1
        m["fechadas"] += i["estado"] == "fechada"
        m["prazo"] = i["prazo_milestone"]
    for titulo, m in milestones.items():
        m["progresso"] = 100 * m["fechadas"] / m["total"] if m["total"] else 0.0
        if m["prazo"]:
            # O GitHub guarda só a data do milestone; o prazo vale até o fim desse dia (Brasília).
            prazo = dt.datetime.combine(dt.date.fromisoformat(m["prazo"][:10]), dt.time(23, 59), tzinfo=FUSO)
            dias = (prazo - agora).total_seconds() / 86400
            m["dias_restantes"] = dias
            m["situacao"] = "Alerta" if (dias <= 1 and m["progresso"] < LIMITE_PROGRESSO) else (
                "Prazo encerrado" if dias < 0 else "Em andamento")
        else:
            m["dias_restantes"] = None
            m["situacao"] = "Sem prazo definido"

    # RC-1 razão de esforço (issues fechadas com as duas horas preenchidas)
    com_horas = [i for i in fechadas if i["horas_estimadas"] and i["horas_reais"] is not None]
    soma_est = sum(i["horas_estimadas"] for i in com_horas)
    soma_real = sum(i["horas_reais"] for i in com_horas)
    razao = soma_real / soma_est if soma_est else None

    # RC-2 contribuição por integrante (horas divididas igualmente entre os responsáveis)
    pessoas = {login: {"atribuidas": 0, "fechadas": 0, "abertas": 0, "h_est": 0.0, "h_real": 0.0}
               for login in EQUIPE}
    for i in issues:
        resp = [r.lower() for r in i["responsaveis"]] or ["(sem responsável)"]
        for r in resp:
            p = pessoas.setdefault(r, {"atribuidas": 0, "fechadas": 0, "abertas": 0, "h_est": 0.0, "h_real": 0.0})
            p["atribuidas"] += 1
            p["fechadas" if i["estado"] == "fechada" else "abertas"] += 1
            if i["horas_estimadas"]:
                p["h_est"] += i["horas_estimadas"] / len(resp)
            if i["estado"] == "fechada" and i["horas_reais"]:
                p["h_real"] += i["horas_reais"] / len(resp)
    total_h = sum(p["h_real"] for k, p in pessoas.items() if k != "(sem responsável)")
    total_f = sum(p["fechadas"] for k, p in pessoas.items() if k != "(sem responsável)")
    for k, p in pessoas.items():
        p["pct_horas"] = 100 * p["h_real"] / total_h if total_h and k != "(sem responsável)" else None
        p["pct_fechadas"] = 100 * p["fechadas"] / total_f if total_f and k != "(sem responsável)" else None

    # DP-1 retrabalho
    retrabalho = 100 * sum(i["reaberta"] for i in fechadas) / len(fechadas) if fechadas else None

    return {
        "milestones": dict(milestones),
        "razao": razao, "soma_est": soma_est, "soma_real": soma_real, "n_com_horas": len(com_horas),
        "pessoas": pessoas, "total_horas": total_h,
        "retrabalho": retrabalho, "n_fechadas": len(fechadas), "n_reabertas": sum(i["reaberta"] for i in fechadas),
        "n_sem_responsavel": sum(1 for i in issues if not i["responsaveis"]),
    }


def indicadores(r, milestone_ativo):
    m = r["milestones"].get(milestone_ativo)
    linhas = []
    if m:
        linhas.append(("CP-1", "Calendário e Progresso", f"Progresso do milestone {milestone_ativo}",
                       f"{m['fechadas']}/{m['total']} ({fmt(m['progresso'])}%)", m["situacao"],
                       f"Abaixo de {LIMITE_PROGRESSO:.0f}% na véspera da entrega"))
    if r["razao"] is None:
        rc1_val, rc1_sit = "Sem dados", "Sem horas registradas nas issues fechadas"
    else:
        rc1_val = f"{fmt(r['razao'], 2)} ({fmt(r['soma_real'])} h / {fmt(r['soma_est'])} h, {r['n_com_horas']} issues)"
        rc1_sit = "Dentro do esperado" if LIMITE_RAZAO[0] <= r["razao"] <= LIMITE_RAZAO[1] else "Alerta"
    linhas.append(("RC-1", "Recursos e Custos", "Razão de esforço (horas reais / estimadas)", rc1_val, rc1_sit,
                   f"Fora da faixa {fmt(LIMITE_RAZAO[0])} a {fmt(LIMITE_RAZAO[1])}"))
    membros = {k: v for k, v in r["pessoas"].items() if k in EQUIPE}
    if r["total_horas"]:
        fora = [nome(k) for k, p in membros.items()
                if not (LIMITE_DISTRIBUICAO[0] <= p["pct_horas"] <= LIMITE_DISTRIBUICAO[1])]
        rc2_val = ", ".join(f"{nome(k).split()[0]} {fmt(p['pct_horas'], 0)}%" for k, p in membros.items())
        rc2_sit = "Alerta: " + ", ".join(fora) if fora else "Dentro do esperado"
    else:
        rc2_val, rc2_sit = "Sem dados", "Sem horas registradas nas issues fechadas"
    linhas.append(("RC-2", "Recursos e Custos", "Distribuição de esforço por integrante", rc2_val, rc2_sit,
                   f"Integrante abaixo de {LIMITE_DISTRIBUICAO[0]:.0f}% ou acima de {LIMITE_DISTRIBUICAO[1]:.0f}%"))
    if r["retrabalho"] is None:
        dp_val, dp_sit = "Sem dados", "Nenhuma issue fechada"
    else:
        dp_val = f"{r['n_reabertas']}/{r['n_fechadas']} ({fmt(r['retrabalho'])}%)"
        dp_sit = "Alerta" if r["retrabalho"] > LIMITE_RETRABALHO else "Dentro do esperado"
    linhas.append(("DP-1", "Desempenho dos Processos", "Taxa de retrabalho (issues reabertas)", dp_val, dp_sit,
                   f"Acima de {LIMITE_RETRABALHO:.0f}%"))
    return linhas


# ----------------------------------------------------------------------------- gráficos
def _eixo_limpo(ax):
    for lado in ("top", "right", "left"):
        ax.spines[lado].set_visible(False)
    ax.spines["bottom"].set_color("#c3c2b7")
    ax.tick_params(colors=COR_TEXTO_2, length=0)
    ax.xaxis.grid(True, color="#e8e7e3", linewidth=0.8)
    ax.set_axisbelow(True)


def grafico_progresso(r, caminho):
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
    from matplotlib.ticker import MaxNLocator

    ms = sorted(r["milestones"].items(), key=lambda kv: kv[0])
    fig, ax = plt.subplots(figsize=(8, 0.75 * len(ms) + 1.2), facecolor=COR_SUPERFICIE)
    ax.set_facecolor(COR_SUPERFICIE)
    nomes = [k for k, _ in ms][::-1]
    feitas = [v["fechadas"] for _, v in ms][::-1]
    totais = [v["total"] for _, v in ms][::-1]
    ax.barh(nomes, feitas, color=COR_SERIE, height=0.5, edgecolor=COR_SUPERFICIE, linewidth=2, label="Fechadas")
    ax.barh(nomes, [t - f for t, f in zip(totais, feitas)], left=feitas, color=COR_RESTANTE, height=0.5,
            edgecolor=COR_SUPERFICIE, linewidth=2, label="Abertas")
    for y, (f, t) in enumerate(zip(feitas, totais)):
        pct = 100 * f / t if t else 0
        ax.text(t + max(totais) * 0.01, y, f"{f} de {t} ({fmt(pct, 0)}%)", va="center", color=COR_TEXTO, fontsize=10)
    ax.set_xlim(0, max(totais) * 1.22 if totais else 1)
    ax.set_xlabel("Issues", color=COR_TEXTO_2)
    ax.set_title("Progresso por milestone", loc="left", color=COR_TEXTO, fontsize=12)
    ax.legend(loc="lower right", bbox_to_anchor=(1.0, 1.0), frameon=False, labelcolor=COR_TEXTO_2, ncol=2)
    ax.xaxis.set_major_locator(MaxNLocator(integer=True))
    _eixo_limpo(ax)
    ax.tick_params(axis="y", colors=COR_TEXTO)
    fig.tight_layout()
    fig.savefig(caminho, format="svg", facecolor=COR_SUPERFICIE)
    plt.close(fig)


def grafico_esforco(r, caminho):
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
    from matplotlib.ticker import MaxNLocator

    membros = [(k, p) for k, p in r["pessoas"].items() if k in EQUIPE]
    usar_horas = r["total_horas"] > 0
    valores = [p["h_real"] if usar_horas else p["fechadas"] for _, p in membros]
    nomes_m = [nome(k) for k, _ in membros]
    ordem = sorted(range(len(membros)), key=lambda i: valores[i])
    fig, ax = plt.subplots(figsize=(8, 0.5 * len(membros) + 1.4), facecolor=COR_SUPERFICIE)
    ax.set_facecolor(COR_SUPERFICIE)
    ax.barh([nomes_m[i] for i in ordem], [valores[i] for i in ordem], color=COR_SERIE, height=0.55,
            edgecolor=COR_SUPERFICIE, linewidth=2)
    topo = max(valores) if valores and max(valores) > 0 else 1
    for y, i in enumerate(ordem):
        rotulo = f"{fmt(valores[i])} h" if usar_horas else f"{valores[i]} issues"
        ax.text(valores[i] + topo * 0.01, y, rotulo, va="center", color=COR_TEXTO, fontsize=10)
    ax.set_xlim(0, topo * 1.2)
    unidade = "Horas reais em issues fechadas" if usar_horas else "Issues fechadas (sem horas registradas ainda)"
    ax.set_xlabel(unidade, color=COR_TEXTO_2)
    if not usar_horas:
        ax.xaxis.set_major_locator(MaxNLocator(integer=True))
    ax.set_title("Esforço por integrante", loc="left", color=COR_TEXTO, fontsize=12)
    _eixo_limpo(ax)
    ax.tick_params(axis="y", colors=COR_TEXTO)
    fig.tight_layout()
    fig.savefig(caminho, format="svg", facecolor=COR_SUPERFICIE)
    plt.close(fig)


# ----------------------------------------------------------------------------- saída
def gravar_csvs(issues, r, inds):
    DIR_DADOS.mkdir(parents=True, exist_ok=True)
    with open(DIR_DADOS / "issues.csv", "w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["numero", "titulo", "estado", "milestone", "labels", "responsaveis", "criada_em",
                    "fechada_em", "horas_estimadas", "horas_reais", "reaberta", "url"])
        for i in issues:
            w.writerow([i["numero"], i["titulo"], i["estado"], i["milestone"], ";".join(i["labels"]),
                        ";".join(i["responsaveis"]), i["criada_em"], i["fechada_em"] or "",
                        "" if i["horas_estimadas"] is None else i["horas_estimadas"],
                        "" if i["horas_reais"] is None else i["horas_reais"], int(i["reaberta"]), i["url"]])
    with open(DIR_DADOS / "contribuicao.csv", "w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["login", "nome", "issues_atribuidas", "issues_fechadas", "issues_abertas",
                    "horas_estimadas", "horas_reais", "pct_horas_reais", "pct_issues_fechadas"])
        for k, p in r["pessoas"].items():
            w.writerow([k, nome(k) if k in EQUIPE else k, p["atribuidas"], p["fechadas"], p["abertas"],
                        round(p["h_est"], 2), round(p["h_real"], 2),
                        "" if p["pct_horas"] is None else round(p["pct_horas"], 1),
                        "" if p["pct_fechadas"] is None else round(p["pct_fechadas"], 1)])
    with open(DIR_DADOS / "indicadores.csv", "w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["id", "categoria", "indicador", "valor", "situacao", "limite"])
        w.writerows(inds)


def registrar_medicao(inds, agora):
    arq = DIR_DADOS / "medicoes.csv"
    novo = not arq.exists()
    with open(arq, "a", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        if novo:
            w.writerow(["data", "id", "indicador", "valor", "situacao"])
        for l in inds:
            w.writerow([agora.strftime("%d/%m/%Y %H:%M"), l[0], l[2], l[3], l[4]])


def ler_medicoes():
    arq = DIR_DADOS / "medicoes.csv"
    if not arq.exists():
        return []
    with open(arq, encoding="utf-8") as f:
        return list(csv.DictReader(f))


def gerar_pagina(issues, r, inds, commits, agora, milestone_ativo):
    L = []
    a = L.append
    a("# Painel PSM/CID")
    a("")
    a("Esta página é gerada automaticamente pelo script [`scripts/coleta_psm.py`]"
      f"(https://github.com/{REPO}/blob/main/scripts/coleta_psm.py) a partir das issues, eventos e commits do "
      f"[repositório da equipe](https://github.com/{REPO}). Ela é atualizada a cada publicação do site. "
      "A definição dos indicadores, os limites e o registro das decisões de gestão estão em "
      "[Gestão do projeto com PSM/CID](psm.md).")
    a("")
    a(f"**Última coleta:** {agora.strftime('%d/%m/%Y às %H:%M')} (horário de Brasília). "
      f"**Issues analisadas:** {len(issues)}.")
    a("")
    if r["n_sem_responsavel"]:
        a(f"*Observação: {r['n_sem_responsavel']} issues ainda estão sem responsável e não entram na "
          "contribuição individual.*")
        a("")

    a("## Indicadores")
    a("")
    a("| ID | Categoria | Indicador | Valor atual | Situação | Limite de alerta |")
    a("|---|---|---|---|---|---|")
    for l in inds:
        a("| " + " | ".join(celula(x) for x in l) + " |")
    a("")
    a(f"*Tabela 1: Valores atuais dos indicadores PSM/CID. Fonte: [indicadores.csv](dados/indicadores.csv), "
      "gerado pelo script de coleta.*")
    a("")

    a("## Calendário e Progresso")
    a("")
    a("![Gráfico de barras horizontais com o número de issues fechadas e abertas em cada milestone]"
      "(img/progresso.svg)")
    a("")
    a("*Figura 1: Progresso das issues por milestone. Fonte: issues do GitHub.*")
    a("")
    a("| Milestone | Prazo | Issues | Fechadas | Abertas | Progresso | Situação |")
    a("|---|---|---|---|---|---|---|")
    for t, m in sorted(r["milestones"].items()):
        a(f"| {celula(t)} | {dt.date.fromisoformat(m['prazo'][:10]).strftime('%d/%m/%Y') if m['prazo'] else '-'} | {m['total']} | {m['fechadas']} | "
          f"{m['total'] - m['fechadas']} | {fmt(m['progresso'])}% | {m['situacao']} |")
    a("")
    a("*Tabela 2: Progresso por milestone. Fonte: issues do GitHub.*")
    a("")

    a("## Recursos e Custos: contribuição por integrante")
    a("")
    a("![Gráfico de barras horizontais com o esforço de cada integrante da equipe](img/esforco.svg)")
    a("")
    base = "horas reais registradas nas issues fechadas" if r["total_horas"] else \
        "issues fechadas, pois ainda não há horas registradas"
    a(f"*Figura 2: Esforço por integrante, medido em {base}. Fonte: issues do GitHub.*")
    a("")
    a("| Integrante | Issues atribuídas | Fechadas | Abertas | Horas estimadas | Horas reais | % das horas reais | % das issues fechadas | Commits |")
    a("|---|---|---|---|---|---|---|---|---|")
    for k, p in r["pessoas"].items():
        if k not in EQUIPE and k != "(sem responsável)":
            rotulo = k
        else:
            rotulo = nome(k) if k in EQUIPE else "Sem responsável"
        pct_h = "-" if p["pct_horas"] is None else fmt(p["pct_horas"]) + "%"
        pct_f = "-" if p["pct_fechadas"] is None else fmt(p["pct_fechadas"]) + "%"
        n_commits = commits.get(k, 0) if k in EQUIPE else "-"
        a(f"| {celula(rotulo)} | {p['atribuidas']} | {p['fechadas']} | {p['abertas']} | {fmt(p['h_est'])} | "
          f"{fmt(p['h_real'])} | {pct_h} | {pct_f} | {n_commits} |")
    a("")
    a("*Tabela 3: Contribuição por integrante. Quando uma issue tem mais de um responsável, as horas são "
      "divididas igualmente. Fonte: [contribuicao.csv](dados/contribuicao.csv).*")
    a("")

    a("## Quem fez o quê")
    a("")
    a("### Issues concluídas")
    a("")
    concl = [i for i in issues if i["estado"] == "fechada"]
    if concl:
        a("| Issue | Responsável | Milestone | Horas reais | Concluída em |")
        a("|---|---|---|---|---|")
        for i in sorted(concl, key=lambda x: x["fechada_em"] or ""):
            resp = ", ".join(nome(x) for x in i["responsaveis"]) or "Sem responsável"
            a(f"| [#{i['numero']}]({i['url']}) {celula(i['titulo'])} | {celula(resp)} | {celula(i['milestone'])} | "
              f"{fmt(i['horas_reais'])} | {data_br(i['fechada_em'])} |")
    else:
        a("Nenhuma issue concluída até o momento.")
    a("")
    a("### Issues em andamento")
    a("")
    abertas = [i for i in issues if i["estado"] == "aberta"]
    if abertas:
        a("| Issue | Responsável | Milestone | Horas estimadas |")
        a("|---|---|---|---|")
        for i in abertas:
            resp = ", ".join(nome(x) for x in i["responsaveis"]) or "Sem responsável"
            a(f"| [#{i['numero']}]({i['url']}) {celula(i['titulo'])} | {celula(resp)} | {celula(i['milestone'])} | "
              f"{fmt(i['horas_estimadas'])} |")
    else:
        a("Nenhuma issue aberta.")
    a("")

    a("## Histórico de medições registradas")
    a("")
    hist = ler_medicoes()
    if hist:
        a("| Data | ID | Indicador | Valor | Situação |")
        a("|---|---|---|---|---|")
        for h in hist:
            a(f"| {h['data']} | {h['id']} | {celula(h['indicador'])} | {celula(h['valor'])} | {celula(h['situacao'])} |")
        a("")
        a("*Tabela 4: Medições registradas com `python scripts/coleta_psm.py --registrar`. "
          "Fonte: [medicoes.csv](dados/medicoes.csv). A interpretação e a decisão de cada medição ficam na "
          "[Tabela 2 da página PSM/CID](psm.md#registro-de-medicoes-e-decisoes).*")
    else:
        a("Nenhuma medição oficial registrada ainda. Para registrar, rode "
          "`python scripts/coleta_psm.py --registrar` e faça commit dos arquivos gerados.")
    a("")

    a("## Dados brutos")
    a("")
    a("- [issues.csv](dados/issues.csv): todas as issues com responsáveis, datas e horas.")
    a("- [contribuicao.csv](dados/contribuicao.csv): totais por integrante.")
    a("- [indicadores.csv](dados/indicadores.csv): valores atuais dos indicadores.")
    if hist:
        a("- [medicoes.csv](dados/medicoes.csv): histórico de medições registradas.")
    a("")
    (DIR_GESTAO / "painel.md").write_text("\n".join(L), encoding="utf-8")


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--registrar", action="store_true", help="grava uma medição oficial em dados/medicoes.csv")
    args = ap.parse_args()

    agora = dt.datetime.now(FUSO)
    try:
        issues, commits = coletar(obter_token())
    except (urllib.error.URLError, TimeoutError) as e:
        print(f"Falha ao acessar a API do GitHub: {e}. O painel anterior foi mantido.", file=sys.stderr)
        sys.exit(1)

    r = calcular(issues, agora)
    abertos = [(t, m) for t, m in r["milestones"].items() if m["prazo"] and m["dias_restantes"] is not None
               and m["dias_restantes"] >= -1]
    milestone_ativo = min(abertos, key=lambda kv: kv[1]["dias_restantes"])[0] if abertos else \
        next(iter(sorted(r["milestones"])), None)
    inds = indicadores(r, milestone_ativo)

    DIR_IMG.mkdir(parents=True, exist_ok=True)
    grafico_progresso(r, DIR_IMG / "progresso.svg")
    grafico_esforco(r, DIR_IMG / "esforco.svg")
    gravar_csvs(issues, r, inds)
    if args.registrar:
        registrar_medicao(inds, agora)
    gerar_pagina(issues, r, inds, commits, agora, milestone_ativo)

    print(f"Painel atualizado: {len(issues)} issues, milestone ativo: {milestone_ativo}")
    for l in inds:
        print(f"  {l[0]}: {l[3]}  [{l[4]}]")
    if args.registrar:
        print("Medição registrada em docs/gestao/dados/medicoes.csv")


if __name__ == "__main__":
    main()
