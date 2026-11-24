# Registra as tarefas da Entrega 2 feitas sem issue (retroativas) e ajusta issues
# já concluídas que ficaram abertas ou sem horas reais.
#
# Requisitos: GitHub CLI (gh) instalado e autenticado (gh auth login).
#
# Uso, na raiz do repositório:
#   powershell -ExecutionPolicy Bypass -File scripts\retroativas_e2.ps1 -DryRun   (só mostra)
#   powershell -ExecutionPolicy Bypass -File scripts\retroativas_e2.ps1           (aplica)
#
# Pode ser executado mais de uma vez: issues novas com o mesmo título são ignoradas.
# Horas reais foram estimadas a partir dos commits e das atas; cada responsável pode
# corrigir o valor na issue depois. Depois de rodar, gere o painel de novo
# (scripts/coleta_psm.py) para atualizar o RC-2.

param([switch]$DryRun)

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
$repo = "FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN"
$c = "https://github.com/$repo/commit"
$ms = "E2: Fases 3 e 4"

# ---------------------------------------------------------------- EDITE AQUI
# Issues existentes: horas, responsáveis e fechamento.
$ajustes = @(
    @{ N = 40; Responsaveis = "HauedyWS"; Reais = "1"; Fechar = $true
       Comentario = "Medição realizada em 26/10/2026 (commits a97c9ae2 e bc0c8b29); registro em docs/gestao/dados/medicoes.csv, 26/10/2026 00:48." }
    @{ N = 53; Responsaveis = "lucasbbranco"; Reais = "6"; Fechar = $true
       Comentario = "Ação de melhoria executada: protótipo de alta fidelidade no Figma das ações A1 e A2, feito por Lucas e documentado em evidencias/prototipo/ (commit 0d673aeb). Realocada de Hauedy e Letícia para Lucas; registro em docs/gestao/dados/execucao.csv." }
    @{ N = 60; Responsaveis = "HauedyWS"; Reais = "4"; Fechar = $false
       Comentario = "Alocada para Hauedy e realizada por Letícia (4 h). Registro em docs/gestao/dados/execucao.csv: as horas reais contam para quem realizou." }
    @{ N = 43; Responsaveis = "arthurfernandesj,GiovanaFontesS"; Reais = "2"; Fechar = $false
       Comentario = "Correções do Ponto de Controle 1 feitas por Arthur e Giovana; horas reais divididas entre os dois." }
    @{ N = 61; Responsaveis = "leticialopes20"; Reais = "2"; Fechar = $false; Comentario = "" }
    @{ N = 22; Responsaveis = "daniel-de-sousa,GiovanaFontesS"; Estimadas = "2,5"; Reais = "3"; Fechar = $false; Comentario = "" }
    @{ N = 45; Responsaveis = "daniel-de-sousa"; Reais = "2"; Fechar = $false; Comentario = "" }
    @{ N = 71; Responsaveis = "arthurfernandesj,GiovanaFontesS"; Reais = "1"; Fechar = $true
       Comentario = "Revisão do artigo feita por Arthur e Giovana: SUS (Seção VI-I), coerência entre objetivos, questões e métricas (V-C), critério de situação de resposta e Tabela XV, consistência entre as Fases 2 e 3 (VI-F). Itens do GitPage seguem na #59." }
)

# Issues novas, retroativas, criadas já fechadas.
$novas = @(
    @{
        Titulo = "Retrospectiva da Entrega 1"
        Responsaveis = "daniel-de-sousa,GiovanaFontesS"
        Labels = "gestao,retroativa"
        Corpo = @"
## Descrição
Issue retroativa. Atividade de retrospectiva da Entrega 1 pedida pela professora, feita em sala por Giovana (facilitadora) e Daniel (relator): projeto como filme, casas de palha, madeira e tijolos, priorização por votos e plano de ações (Quê, Quem, Quando). Documento de 5 páginas redigido por Daniel e publicado no repositório.

## Critério da rubrica
Premissa 3 (gestão do projeto); PSM/CID, Desempenho dos Processos

## Critério de pronto
- [x] Retrospectiva realizada em sala
- [x] Material publicado no repositório

## Evidências
- $c/ebef719b (docs/T01 T02 - E1 RETROSPECTIVA.pdf, 28/10/2026)
- docs/atas/2026-11-03.md (item "Retrospectiva da Entrega 1")

## Esforço (PSM)
- Horas estimadas: 2,5
- Horas reais (preencher ao fechar): 3

Horas registradas a partir do histórico de commits e das atas; os responsáveis podem corrigir o valor.
"@
    }
    @{
        Titulo = "Slides da apresentação das métricas de gestão (PSM)"
        Responsaveis = "leticialopes20"
        Labels = "gestao,retroativa"
        Corpo = @"
## Descrição
Issue retroativa. Slides da apresentação das métricas de gestão do projeto (PSM/CID), prevista para 04/11 ou 11/11, usados como base pela equipe.

## Critério da rubrica
Premissa 3; Seção 2 (Gestão do projeto com métricas PSM/CID)

## Critério de pronto
- [x] Slides com as métricas PSM/CID do projeto
- [x] Material disponível para a equipe ajustar

## Evidências
- docs/atas/2026-11-03.md (item "Calendário": "usará como base o slide feito por Letícia")

## Esforço (PSM)
- Horas estimadas: 1,5
- Horas reais (preencher ao fechar): 2

Horas registradas a partir das atas; a responsável pode corrigir o valor.
"@
    }
    @{
        Titulo = "Slides do Ponto de Controle 2"
        Responsaveis = "arthurfernandesj,daniel-de-sousa,GiovanaFontesS,HauedyWS,leticialopes20,lucasbbranco"
        Labels = "gestao,retroativa"
        Corpo = @"
## Descrição
Issue retroativa. Slides do Ponto de Controle 2 (18 slides), cada parte produzida por quem a apresentou: Arthur (1 a 3, contexto, produto e objeto), Hauedy (4 e 5, modelo de qualidade e mudanças desde o PC1), Lucas (6 a 9, Fase 3), Giovana (10 a 12, Fase 4), Daniel (13 a 15) e Letícia (16 a 18, gestão do projeto e próximos passos). Ajuste geral feito por Arthur.

## Critério da rubrica
Ponto de Controle 2 (Seção 4 da especificação)

## Critério de pronto
- [x] Slides montados
- [x] Partes divididas entre os apresentadores

## Evidências
- docs/atas/2026-11-03.md (item "Apresentação do Ponto de Controle 2")
- docs/atas/2026-11-17.md (item "Divisão dos slides")

## Esforço (PSM)
- Horas estimadas: 4
- Horas reais (preencher ao fechar): 6

Horas registradas a partir das atas, no mesmo formato da #9 (slides do PC1); os responsáveis podem corrigir o valor.
"@
    }
    @{
        Titulo = "Ensaio da apresentação do Ponto de Controle 2"
        Responsaveis = "arthurfernandesj,GiovanaFontesS,HauedyWS,leticialopes20,lucasbbranco"
        Labels = "gestao,retroativa"
        Corpo = @"
## Descrição
Issue retroativa. Ensaio da apresentação do Ponto de Controle 2 na reunião de 17/11/2026 (19h58 às 21h05): estudo de cada parte, simulação completa (cerca de 25 min) e ajustes para caber nos 15 min.

## Critério da rubrica
Ponto de Controle 2 (Seção 4 da especificação)

## Critério de pronto
- [x] Apresentação simulada com todos os presentes
- [x] Ajustes de tempo e de conteúdo combinados

## Evidências
- docs/atas/2026-11-17.md (itens "Ensaio" e "Ajustes combinados")

## Esforço (PSM)
- Horas estimadas: 5
- Horas reais (preencher ao fechar): 5,5

Horas = duração da reunião (cerca de 1,1 h) x 5 presentes. Daniel estava ausente.
"@
    }
    @{
        Titulo = "GitPage: alinhar com a versão do artigo do Ponto de Controle 2"
        Responsaveis = "leticialopes20"
        Labels = "gitpage,artigo,retroativa"
        Corpo = @"
## Descrição
Issue retroativa. Atualização do GitPage com a versão do artigo do Ponto de Controle 2: citações e lista de referências, termos em inglês na pergunta de pesquisa, endereço do repositório, referencial teórico, PDF do artigo, revisores nas páginas das Fases 3 e 4 e exibição do TCLE em PDF na página.

## Critério da rubrica
F3-C7 e AG-C4 (GitPage: atualização, estrutura e rastreabilidade)

## Critério de pronto
- [x] Páginas do artigo conferidas contra a versão do PC2
- [x] PDF do artigo publicado no GitPage
- [x] TCLE exibido na página da Fase 3

## Evidências
- $c/d8397287
- $c/ee88bfa0
- $c/d3904e97
- $c/bb797726

## Esforço (PSM)
- Horas estimadas: 2
- Horas reais (preencher ao fechar): 2

Horas registradas a partir do histórico de commits (17/11, das 23h02 à 0h37 de 18/11); a responsável pode corrigir o valor.
"@
    }
    @{
        Titulo = "GitPage Fases 3 e 4: análise e rastreabilidade GQM"
        Responsaveis = "lucasbbranco"
        Labels = "gitpage,fase-3,fase-4,retroativa"
        Corpo = @"
## Descrição
Issue retroativa. Alinhamento das páginas das Fases 3 e 4 e da metodologia com a análise GQM e com a rastreabilidade entre métricas, registros e cálculos.

## Critério da rubrica
F4-C2 e F4-C3; AG-C4

## Critério de pronto
- [x] Páginas das Fases 3 e 4 com a análise GQM atualizada
- [x] Ligação entre métricas e registros em evidencias/gqm/

## Evidências
- $c/26311dd6 (15/11/2026)

## Esforço (PSM)
- Horas estimadas: 1
- Horas reais (preencher ao fechar): 1,5

Horas registradas a partir do histórico de commits; o responsável pode corrigir o valor.
"@
    }
    @{
        Titulo = "Medição PSM da Entrega 2 e atualização do painel"
        Responsaveis = "HauedyWS"
        Labels = "gestao,retroativa"
        Corpo = @"
## Descrição
Issue retroativa. Coleta dos indicadores PSM/CID da Entrega 2 com o scripts/coleta_psm.py e atualização do painel (progresso, estimado vs. realizado e esforço por integrante), usados na apresentação do Ponto de Controle 2.

## Critério da rubrica
Premissa 3; Seção 2 (Calendário e Progresso, Recursos e Custos, Desempenho dos Processos)

## Critério de pronto
- [x] Indicadores recalculados a partir das issues
- [x] Painel e gráficos atualizados

## Evidências
- $c/4c8820d3 (docs/gestao/painel.md, dados/*.csv e img/*.svg atualizados em 12/11/2026)
- docs/atas/2026-11-17.md (indicadores PSM apresentados no ensaio)

## Esforço (PSM)
- Horas estimadas: 2
- Horas reais (preencher ao fechar): 2,5

Horas informadas pelo responsável.
"@
    }
    @{
        Titulo = "Gestão: criação, atribuição e registro retroativo das issues"
        Responsaveis = "HauedyWS"
        Labels = "gestao,retroativa"
        Corpo = @"
## Descrição
Issue retroativa. Criação do backlog de issues do projeto (Fases 1 a 4) com descrição, critério da rubrica, critério de pronto e estimativa; atribuição dos responsáveis e das horas; e, na Entrega 2, levantamento do que foi feito sem issue (commits desde 27/10, comparação entre versões do artigo e atas) para registrar as issues retroativas, corrigir horas e registrar quem realizou cada tarefa em execucao.csv.

## Critério da rubrica
Premissa 3; Seção 2 (PSM/CID: evidências em commits, issues e milestones)

## Critério de pronto
- [x] Issues das Fases 1 a 4 criadas a partir de scripts/issues.json
- [x] Responsáveis e estimativas atribuídos
- [x] Tarefas da Entrega 2 sem issue registradas como retroativas
- [x] Alocado vs. realizado atualizado em docs/gestao/dados/execucao.csv

## Evidências
- $c/4318216f (template de issue e scripts/criar_issues.ps1)
- $c/ec6c8149 (scripts/atribuir_issues.ps1)
- scripts/retroativas_e2.ps1

## Esforço (PSM)
- Horas estimadas: 3
- Horas reais (preencher ao fechar): 3

Horas informadas pelo responsável.
"@
    }
)
# ---------------------------------------------------------------------------

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) { Write-Host "Instale o GitHub CLI: winget install --id GitHub.cli" -ForegroundColor Red; exit 1 }
gh auth status *> $null
if ($LASTEXITCODE -ne 0) { Write-Host "Rode: gh auth login" -ForegroundColor Red; exit 1 }

$tmp = [System.IO.Path]::GetTempFileName()
$utf8 = New-Object System.Text.UTF8Encoding $false

Write-Host "== Ajustes em issues existentes ==" -ForegroundColor Cyan
foreach ($a in $ajustes) {
    $n = $a.N
    $info = gh issue view $n --repo $repo --json body,state,title,assignees | ConvertFrom-Json
    $corpo = [string]$info.body
    if ($corpo -match 'Horas reais[^\n:]*:') {
        $corpo = [regex]::Replace($corpo, '(Horas reais[^\n:]*:)[ \t]*[0-9.,]*', ('$1 ' + $a.Reais), 1)
    } else {
        # Formato do formulário de issue: "### Horas reais" seguido do valor ou de "_No response_"
        $corpo = [regex]::Replace($corpo, '(#+[ \t]*Horas reais[^\n]*\r?\n)\s*(_No response_|[0-9.,]+)?', ('$1' + "`n" + $a.Reais), 1)
    }
    if ($a.Estimadas) {
        if ($corpo -match 'Horas estimadas[^\n:]*:') {
            $corpo = [regex]::Replace($corpo, '(Horas estimadas[^\n:]*:)[ \t]*[0-9.,]*', ('$1 ' + $a.Estimadas), 1)
        } else {
            $corpo = [regex]::Replace($corpo, '(#+[ \t]*Horas estimadas[^\n]*\r?\n)\s*(_No response_|[0-9.,]+)?', ('$1' + "`n" + $a.Estimadas), 1)
        }
    }
    $novos = $a.Responsaveis.Split(",") | ForEach-Object { $_.Trim() }
    $remover = @($info.assignees | ForEach-Object { $_.login } | Where-Object { $novos -notcontains $_ })
    $fechar = $a.Fechar -and ($info.state -eq "OPEN")
    $txtRem = if ($remover.Count -gt 0) { " (remove: " + ($remover -join ", ") + ")" } else { "" }
    $acao = if ($fechar) { "horas reais $($a.Reais) h e FECHA" } else { "horas reais $($a.Reais) h" }
    Write-Host ("#{0} [{1}]{2}: {3} - {4}" -f $n, $a.Responsaveis, $txtRem, $acao, $info.title)
    if ($DryRun) { continue }

    [System.IO.File]::WriteAllText($tmp, $corpo, $utf8)
    $ghArgs = @("issue", "edit", $n, "--repo", $repo, "--add-assignee", $a.Responsaveis, "--body-file", $tmp)
    if ($remover.Count -gt 0) { $ghArgs += @("--remove-assignee", ($remover -join ",")) }
    gh @ghArgs *> $null
    if ($LASTEXITCODE -ne 0) { Write-Host "  falhou ao editar #$n" -ForegroundColor Red; continue }
    if ($fechar -and $a.Comentario) { gh issue close $n --repo $repo --reason completed --comment $a.Comentario *> $null }
    elseif ($fechar) { gh issue close $n --repo $repo --reason completed *> $null }
    elseif ($a.Comentario) { gh issue comment $n --repo $repo --body $a.Comentario *> $null }
    Start-Sleep -Milliseconds 600
}

Write-Host "== Issues retroativas novas ==" -ForegroundColor Cyan
$existentes = (gh issue list --repo $repo --state all --limit 500 --json title | ConvertFrom-Json) | ForEach-Object { $_.title }
$criadas = 0
foreach ($nv in $novas) {
    if ($existentes -contains $nv.Titulo) { Write-Host ("Já existe, ignorando: " + $nv.Titulo); continue }
    Write-Host ("NOVA [{0}] [{1}]: {2}" -f $nv.Responsaveis, $nv.Labels, $nv.Titulo)
    if ($DryRun) { continue }
    [System.IO.File]::WriteAllText($tmp, $nv.Corpo, $utf8)
    $url = gh issue create --repo $repo --title $nv.Titulo --body-file $tmp --assignee $nv.Responsaveis --milestone $ms --label $nv.Labels
    if ($LASTEXITCODE -ne 0 -or -not $url) { Write-Host "  falha ao criar" -ForegroundColor Red; continue }
    $criadas++
    Write-Host ("  criada: " + $url)
    gh issue close $url --repo $repo --reason completed --comment "Tarefa concluída antes da abertura da issue (registro retroativo)." *> $null
    Write-Host "  fechada (retroativa)"
    Start-Sleep -Milliseconds 800
}

Remove-Item $tmp -ErrorAction SilentlyContinue
Write-Host ""
Write-Host "Concluído. Issues novas criadas: $criadas" -ForegroundColor Green
Write-Host "Próximo passo: rode o scripts/coleta_psm.py para atualizar o painel e o RC-2."
