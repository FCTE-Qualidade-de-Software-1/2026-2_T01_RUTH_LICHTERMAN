# Gestão do projeto com PSM/CID

Esta página registra como a equipe acompanha a execução do próprio projeto, conforme a Premissa 3 e a Seção 2 da especificação do trabalho final. As métricas da [Fase 2](../fase-2/index.md) seguem o GQM e avaliam o produto (BRB Mobilidade). As métricas desta página seguem o modelo PSM/CID e avaliam o trabalho da equipe. Por isso, elas não entram no [gráfico GQM](../fase-2/grafico-gqm.md).

## Fonte dos dados

Os dados vêm do repositório da equipe no GitHub:

- **Issues:** cada tarefa é uma issue com responsável, critério de pronto, horas estimadas e horas reais.
- **Milestones:** agrupam as issues de cada entrega (E1: Fases 1 e 2; E2: Fases 3 e 4) e mostram o progresso.
- **Labels:** classificam as issues por área (`fase-1`, `fase-2`, `fase-3`, `fase-4`, `artigo`, `gitpage`, `gestao`).
- **Commits e pull requests:** ligam o trabalho entregue às issues.

As tarefas concluídas antes da adoção das issues foram registradas como issues retroativas (label `retroativa`).

## Indicadores

| ID | Categoria | Indicador | Cálculo | Fonte | Limite de alerta |
|---|---|---|---|---|---|
| CP-1 | Calendário e Progresso | Progresso do milestone | issues fechadas ÷ issues do milestone × 100 | Milestone ativo | Abaixo de 80% na véspera da entrega |
| RC-1 | Recursos e Custos | Razão de esforço | soma das horas reais ÷ soma das horas estimadas (issues fechadas) | Campos de horas das issues | Fora da faixa de 0,8 a 1,2 |
| RC-2 | Recursos e Custos | Distribuição de esforço | horas reais do integrante ÷ horas reais da equipe × 100 | Campos de horas das issues | Integrante abaixo de 10% ou acima de 30% |
| DP-1 | Desempenho dos Processos | Taxa de retrabalho | issues reabertas ÷ issues fechadas × 100 | Histórico das issues | Acima de 25% |

*Tabela 1: Indicadores PSM/CID adotados pela equipe. Fonte: elaborado pela equipe.*

Os limites são valores iniciais. Qualquer ajuste deve ser registrado na Tabela 2, com a justificativa.

## Procedimento de medição

1. Abrir o milestone ativo e anotar o número de issues fechadas e o total (CP-1).
2. Somar as horas estimadas e as horas reais das issues fechadas, no total e por integrante (RC-1 e RC-2).
3. Contar as issues reabertas no período (DP-1).
4. Registrar os valores na Tabela 2, com a interpretação e a decisão de gestão tomada.

## Registro de medições e decisões

| Data | Indicador | Valor | Situação | Interpretação | Decisão, responsável e prazo | Evidência |
|---|---|---|---|---|---|---|
| A preencher | CP-1 | | | | | Milestone E1 |
| A preencher | RC-1 | | | | | Issues fechadas |
| A preencher | RC-2 | | | | | Issues fechadas |
| A preencher | DP-1 | | | | | Histórico das issues |

*Tabela 2: Registro das medições, interpretações e decisões de gestão. Fonte: elaborado pela equipe.*

## Histórico de versão

| Versão | Data | Descrição | Autor(a) |
|---|---|---|---|
| 0.1 | 19/10/2026 | Criação da página com indicadores e procedimento de medição | Hauedy |
