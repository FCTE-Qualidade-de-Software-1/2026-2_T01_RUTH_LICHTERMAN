# Ruth Lichterman: avaliação de qualidade do BRB Mobilidade

Trabalho final de Qualidade de Software 1 (FCTE/UnB, 2026/2, turma T01). A equipe avalia a qualidade do aplicativo **BRB Mobilidade** com base na ISO/IEC 25010:2023, no método GQM e no processo de avaliação da ISO/IEC 25040.

**[Acessar a documentação](https://fcte-qualidade-de-software-1.github.io/2026-2_T01_RUTH_LICHTERMAN/)** · [Releases](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/releases) · [Painel PSM](https://fcte-qualidade-de-software-1.github.io/2026-2_T01_RUTH_LICHTERMAN/gestao/painel/)

## Entregas

| Entrega | Conteúdo | Prazo | Release |
| :--- | :--- | :--- | :--- |
| E1 | Fases 1 e 2 e primeira versão do artigo | 26/10/2026 | [v1.0](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/releases/tag/v1.0) |
| E2 | Fases 3 e 4 e versão final do artigo | A definir | - |

## Equipe

| <img src="https://github.com/arthurfernandesj.png" width="90" alt="Arthur Fernandes"> | <img src="https://github.com/daniel-de-sousa.png" width="90" alt="Daniel Sousa"> | <img src="https://github.com/GiovanaFontesS.png" width="90" alt="Giovana Fontes"> | <img src="https://github.com/HauedyWS.png" width="90" alt="Hauedy Wegner"> | <img src="https://github.com/leticialopes20.png" width="90" alt="Letícia Lopes"> | <img src="https://github.com/lucasbbranco.png" width="90" alt="Lucas Branco"> |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [Arthur Fernandes](https://github.com/arthurfernandesj) | [Daniel Sousa](https://github.com/daniel-de-sousa) | [Giovana Fontes](https://github.com/GiovanaFontesS) | [Hauedy Wegner](https://github.com/HauedyWS) | [Letícia Lopes](https://github.com/leticialopes20) | [Lucas Branco](https://github.com/lucasbbranco) |

## Organização do repositório

| Pasta | Conteúdo |
| :--- | :--- |
| `docs/` | Páginas do GitPage (MkDocs) |
| `docs/gestao/` | Gestão com PSM/CID, painel gerado automaticamente e dados brutos |
| `scripts/` | Coleta das métricas PSM e scripts de criação e atribuição de issues |
| `.github/` | Template de issue e publicação automática do site |

## Como trabalhamos

Cada tarefa é uma issue criada pelo template **Tarefa**, com responsável, milestone e horas estimadas. Ao concluir, o responsável preenche as horas reais e fecha a issue. O [painel PSM](https://fcte-qualidade-de-software-1.github.io/2026-2_T01_RUTH_LICHTERMAN/gestao/painel/) e a [tabela de contribuição](https://fcte-qualidade-de-software-1.github.io/2026-2_T01_RUTH_LICHTERMAN/contribuicao/) são atualizados automaticamente a cada publicação.

## Executar localmente

```bash
pip install -r requirements.txt -r scripts/requirements-psm.txt
python scripts/coleta_psm.py   # opcional: atualiza o painel PSM
mkdocs serve
```

O site fica disponível em `http://127.0.0.1:8000`.
