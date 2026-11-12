# Painel PSM/CID

Esta página é gerada automaticamente pelo script [`scripts/coleta_psm.py`](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/scripts/coleta_psm.py) a partir das issues, eventos e commits do [repositório da equipe](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN). Ela é atualizada a cada publicação do site. A definição dos indicadores, os limites e o registro das decisões de gestão estão em [Gestão do projeto com PSM/CID](psm.md).

**Última coleta:** 12/11/2026 às 15:29 (horário de Brasília). **Issues analisadas:** 62.

## Indicadores

<div class="psm-kpis"><div class="psm-kpi warn"><span>CP-1 · Planejado vs. concluído</span><strong>93,3%</strong><em class="flat">concluído em E1: Fases 1 e 2 · esperado 100,0% · desvio 6,7 p.p.</em><span class="psm-badge warn">Investigar</span></div><div class="psm-kpi ok"><span>RC-1 · Estimado vs. real</span><strong>1,07</strong><em class="flat">79,0 h reais ÷ 73,8 h estimadas</em><span class="psm-badge ok">Dentro do esperado</span></div><div class="psm-kpi ok"><span>RC-2 · Esforço por integrante</span><strong>12% a 30%</strong><em class="flat">menor e maior participação nas horas reais</em><span class="psm-badge ok">Dentro do esperado</span></div><div class="psm-kpi warn"><span>DP-1 · Tempo de ciclo</span><strong>4,2 dias</strong><em class="flat">média em 40 issues · 3 paradas</em><span class="psm-badge warn">Investigar 37 issues a mais de 10% da média; Alerta: 3 issues com responsável há mais de 3 dias</span></div></div>

??? info "Valores e limites de todos os indicadores (tabela)"
    | ID | Categoria | Indicador | Valor atual | Situação | Limite de alerta |
    |---|---|---|---|---|---|
    | CP-1 | Calendário e Progresso | Planejado vs. concluído (E1: Fases 1 e 2) | 42/45 concluídas (93,3%); esperado 100,0%; desvio 6,7 p.p. | Investigar | Desvio acima de 5 p.p.: investigar; acima de 10 p.p.: ação corretiva |
    | RC-1 | Recursos e Custos | Estimado vs. realizado (horas reais / estimadas) | 1,07 (79,0 h / 73,8 h, 49 issues) | Dentro do esperado | Fora da faixa 0,8 a 1,2 |
    | RC-2 | Recursos e Custos | Esforço por integrante (% das horas reais) | Arthur 30%, Daniel 16%, Giovana 13%, Hauedy 13%, Letícia 12%, Lucas 16% | Dentro do esperado | Integrante abaixo de 10% ou acima de 30% |
    | DP-1 | Desempenho dos Processos | Tempo de ciclo (atribuição até fechamento) | média 4,2 dias (40 issues) | Investigar 37 issues a mais de 10% da média; Alerta: 3 issues com responsável há mais de 3 dias | Issue a mais de 10% da média (mínimo 1 dia): investigar; aberta com responsável há mais de 3 dias: cobrar ou dividir |

    *Tabela 1: Valores atuais dos indicadores PSM/CID. Fonte: [indicadores.csv](dados/indicadores.csv).*

## Calendário e Progresso

![Gráfico de barras horizontais com o número de issues fechadas e abertas em cada milestone](img/progresso.svg)

*Figura 1: Progresso das issues por milestone. Fonte: issues do GitHub.*

| Milestone | Prazo | Issues | Fechadas | Abertas | Concluído | Esperado | Desvio | Situação |
|---|---|---|---|---|---|---|---|---|
| E1: Fases 1 e 2 | 26/10/2026 | 45 | 42 | 3 | 93,3% | 100,0% | 6,7 p.p. | Investigar |
| E2: Fases 3 e 4 | - | 17 | 8 | 9 | 47,1% | - | - | Sem prazo definido |

*Tabela 2: Planejado vs. concluído por milestone. Esperado = fração do prazo do milestone já decorrida; desvio = esperado - concluído. Fonte: issues do GitHub.*

## Recursos e Custos: contribuição por integrante

![Gráfico de barras horizontais com o esforço de cada integrante da equipe](img/esforco.svg)

*Figura 2: Esforço por integrante, medido em horas reais registradas nas issues fechadas. Fonte: issues do GitHub.*

| Integrante | Issues atribuídas | Fechadas | Abertas | Horas estimadas | Horas reais | % das horas reais | % das issues fechadas | Commits |
|---|---|---|---|---|---|---|---|---|
| Arthur Fernandes | 16 | 15 | 1 | 19,1 | 23,5 | 29,7% | 23,8% | 5 |
| Daniel Sousa | 12 | 11 | 1 | 17,2 | 12,8 | 16,1% | 17,5% | 8 |
| Giovana Fontes | 16 | 12 | 4 | 23,1 | 10,0 | 12,7% | 19,0% | 6 |
| Hauedy Wegner | 10 | 7 | 3 | 19,5 | 10,0 | 12,7% | 11,1% | 15 |
| Letícia Lopes | 15 | 9 | 6 | 18,2 | 9,8 | 12,3% | 14,3% | 17 |
| Lucas Branco | 10 | 9 | 1 | 15,1 | 13,0 | 16,5% | 14,3% | 4 |

*Tabela 3: Contribuição por integrante. Horas estimadas ficam com quem foi alocado; horas reais, com quem realizou a tarefa. Quando há mais de uma pessoa, as horas são divididas igualmente. Fonte: [contribuicao.csv](dados/contribuicao.csv).*

## Recursos e Custos: horas estimadas vs. reais

Paralelo entre o esforço planejado e o realizado (medida *Estimate vs. Actual Effort* do PSM/CID). O planejado é a soma das horas estimadas das tarefas concluídas que cada pessoa recebeu; o realizado é a soma das horas reais das tarefas que cada pessoa de fato executou.

![Gráfico de barras agrupadas com horas estimadas e horas reais por integrante](img/planejado-real.svg)

*Figura 3: Horas estimadas (alocadas) e horas reais (realizadas) por integrante, nas issues concluídas. Fonte: issues do GitHub e execucao.csv.*

| Integrante | Horas estimadas (alocadas) | Horas reais (realizadas) | Diferença |
|---|---|---|---|
| Arthur Fernandes | 18,1 | 23,5 | 5,4 |
| Daniel Sousa | 14,8 | 12,8 | -2,0 |
| Giovana Fontes | 12,6 | 10,0 | -2,6 |
| Hauedy Wegner | 11,5 | 10,0 | -1,5 |
| Letícia Lopes | 7,2 | 9,8 | 2,5 |
| Lucas Branco | 12,6 | 13,0 | 0,4 |

*Tabela 4: Horas estimadas vs. reais por integrante. Diferença positiva: a pessoa trabalhou mais do que o alocado; negativa: menos. Fonte: issues do GitHub.*

??? note "Estimado vs. real por issue"
    | Issue | Estimado (h) | Real (h) | Real ÷ estimado |
    |---|---|---|---|
    | [#1](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/1) Estrutura inicial do GitPage (MkDocs) | 1,0 | 1,0 | 1,00 |
    | [#2](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/2) Publicação automática no GitHub Pages | 1,0 | 0,5 | 0,50 |
    | [#3](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/3) Fase 1: apresentação do software | 0,5 | 0,5 | 1,00 |
    | [#4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/4) Fase 1: levantamento de funcionalidades e serviços | 1,0 | 1,0 | 1,00 |
    | [#5](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/5) Fase 1: requisitos e necessidades dos usuários | 1,0 | 1,0 | 1,00 |
    | [#6](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/6) Fase 1: tecnologias e integração | 0,5 | 0,5 | 1,00 |
    | [#7](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/7) Artigo: introdução | 2,0 | 2,0 | 1,00 |
    | [#8](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/8) Artigo: metodologia | 1,0 | 2,0 | 2,00 |
    | [#9](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/9) Slides do Ponto de Controle 1 | 3,0 | 5,0 | 1,67 |
    | [#10](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/10) Fase 1: propósito da avaliação, decisões apoiadas e quem as toma | 1,5 | 1,5 | 1,00 |
    | [#11](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/11) Fase 1: requisitante e partes interessadas | 1,5 | 1,0 | 0,67 |
    | [#12](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/12) Fase 1: tipo de produto e descrição estruturada com diagrama de contexto | 2,0 | 1,0 | 0,50 |
    | [#13](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/13) Fase 1: modelo de qualidade adaptado com diagrama | 2,0 | 1,0 | 0,50 |
    | [#14](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/14) Fase 1: seleção e priorização de 3 a 4 características (sem usabilidade) | 2,0 | 1,0 | 0,50 |
    | [#15](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/15) Fase 1: escopo, profundidade e objetos de avaliação | 0,5 | 0,5 | 1,00 |
    | [#16](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/16) Fase 1: ODS, metas e indicadores | 1,0 | 1,0 | 1,00 |
    | [#17](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/17) Fase 2: objetivos de medição no template GQM | 1,5 | 1,5 | 1,00 |
    | [#18](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/18) Fase 2: questões de avaliação | 1,5 | 1,5 | 1,00 |
    | [#19](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/19) Fase 2: hipóteses para todas as questões | 1,0 | 1,0 | 1,00 |
    | [#20](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/20) Fase 2: métricas com definição, cálculo, fonte, coleta e interpretação | 2,0 | 4,0 | 2,00 |
    | [#21](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/21) Fase 2: níveis de pontuação e critérios de julgamento | 2,0 | 2,0 | 1,00 |
    | [#22](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/22) Fase 2: diagrama GQM completo | 1,0 | 1,0 | 1,00 |
    | [#23](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/23) Fase 2: consistência entre as Fases 1 e 2 | 1,0 | 1,0 | 1,00 |
    | [#24](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/24) Artigo: migrar para template SBC/ACM/IEEE em LaTeX | 3,0 | 3,0 | 1,00 |
    | [#25](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/25) Artigo: referencial teórico | 0,5 | 0,3 | 0,60 |
    | [#26](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/26) Artigo: seções da Fase 1 e da Fase 2 | 4,0 | 4,0 | 1,00 |
    | [#28](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/28) Artigo: revisão final da E1 | 2,0 | 1,5 | 0,75 |
    | [#29](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/29) GitPage: versão e data no rodapé, sumário e links entre páginas | 1,0 | 1,0 | 1,00 |
    | [#30](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/30) GitPage: links para repositório, release e evidências | 0,5 | 0,5 | 1,00 |
    | [#31](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/31) GitPage: remover emojis e ícones | 0,2 | 0,2 | 1,00 |
    | [#32](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/32) GitPage: texto alternativo em todas as imagens | 0,5 | 0,5 | 1,00 |
    | [#33](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/33) Página de uso de IA | 0,5 | 0,5 | 1,00 |
    | [#34](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/34) Página de referências | 1,0 | 1,0 | 1,00 |
    | [#35](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/35) README enxuto e remoção do .venv do repositório | 0,5 | 0,5 | 1,00 |
    | [#36](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/36) Template de issue e milestones | 1,0 | 1,0 | 1,00 |
    | [#37](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/37) Release E1 | 2,0 | 1,0 | 0,50 |
    | [#38](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/38) Página PSM/CID com as três categorias | 3,0 | 4,0 | 1,33 |
    | [#41](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/41) Tabela de contribuição com percentual de esforço | 1,5 | 1,0 | 0,67 |
    | [#42](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/42) Atas das reuniões | 1,0 | 1,0 | 1,00 |
    | [#43](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/43) Correções do Ponto de Controle 1 | 2,0 | 2,0 | 1,00 |
    | [#44](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/44) Fase 3: método de avaliação e instruções repetíveis | 3,0 | 4,0 | 1,33 |
    | [#45](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/45) Fase 3: recursos, ambiente e massa de dados | 2,0 | 1,0 | 0,50 |
    | [#46](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/46) Fase 3: cronograma da avaliação | 2,0 | 1,0 | 0,50 |
    | [#49](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/49) Fase 4: dados brutos organizados e rastreáveis | 2,0 | 2,0 | 1,00 |
    | [#50](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/50) Fase 4: análise e respostas às questões GQM | 2,0 | 2,0 | 1,00 |
    | [#51](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/51) Fase 4: julgamento, conclusões e coerência com o propósito | 3,0 | 4,0 | 1,33 |
    | [#57](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/57) Padronizar nomenclatura da ISO/IEC 25010 (2011 x 2023) no artigo e no GitPage | 2,0 | 3,0 | 1,50 |
    | [#61](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/61) GitPage: páginas da Fase 1 | 1,0 | 4,5 | 4,50 |
    | [#63](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/63) Artigo: substituir tabela de características por parágrafo e corrigir erros de digitação | 1,0 | 2,0 | 2,00 |

## Desempenho dos Processos: tempo de ciclo

Média: **4,2 dias** em 40 issues. Faixa sem investigação: 3,2 a 5,2 dias (média ± o maior valor entre 10% da média e 1 dia).

??? note "Tempo de ciclo por issue"
    | Issue | Responsável | Atribuída em | Fechada em | Tempo de ciclo (dias) | Situação |
    |---|---|---|---|---|---|
    | [#31](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/31) GitPage: remover emojis e ícones | Letícia Lopes | 20/10/2026 | 20/10/2026 | 1 | Investigar |
    | [#57](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/57) Padronizar nomenclatura da ISO/IEC 25010 (2011 x 2023) no artigo e no GitPage | Arthur Fernandes, Hauedy Wegner | 21/10/2026 | 23/10/2026 | 3 | Investigar |
    | [#20](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/20) Fase 2: métricas com definição, cálculo, fonte, coleta e interpretação | Arthur Fernandes, Giovana Fontes | 21/10/2026 | 23/10/2026 | 3 | Investigar |
    | [#15](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/15) Fase 1: escopo, profundidade e objetos de avaliação | Arthur Fernandes, Giovana Fontes | 23/10/2026 | 23/10/2026 | 1 | Investigar |
    | [#50](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/50) Fase 4: análise e respostas às questões GQM | Lucas Branco | 23/10/2026 | 23/10/2026 | 1 | Investigar |
    | [#25](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/25) Artigo: referencial teórico | Arthur Fernandes, Giovana Fontes, Lucas Branco | 23/10/2026 | 23/10/2026 | 1 | Investigar |
    | [#11](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/11) Fase 1: requisitante e partes interessadas | Daniel Sousa | 25/10/2026 | 25/10/2026 | 1 | Investigar |
    | [#10](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/10) Fase 1: propósito da avaliação, decisões apoiadas e quem as toma | Giovana Fontes | 23/10/2026 | 26/10/2026 | 4 | Dentro da faixa |
    | [#17](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/17) Fase 2: objetivos de medição no template GQM | Daniel Sousa | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#18](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/18) Fase 2: questões de avaliação | Daniel Sousa | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#19](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/19) Fase 2: hipóteses para todas as questões | Daniel Sousa | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#21](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/21) Fase 2: níveis de pontuação e critérios de julgamento | Daniel Sousa | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#22](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/22) Fase 2: diagrama GQM completo | Daniel Sousa, Giovana Fontes | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#23](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/23) Fase 2: consistência entre as Fases 1 e 2 | Daniel Sousa | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#24](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/24) Artigo: migrar para template SBC/ACM/IEEE em LaTeX | Giovana Fontes | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#26](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/26) Artigo: seções da Fase 1 e da Fase 2 | Lucas Branco | 23/10/2026 | 26/10/2026 | 4 | Dentro da faixa |
    | [#34](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/34) Página de referências | Lucas Branco | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#29](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/29) GitPage: versão e data no rodapé, sumário e links entre páginas | Letícia Lopes | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#30](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/30) GitPage: links para repositório, release e evidências | Letícia Lopes | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#33](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/33) Página de uso de IA | Letícia Lopes | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#35](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/35) README enxuto e remoção do .venv do repositório | Hauedy Wegner | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#36](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/36) Template de issue e milestones | Hauedy Wegner | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#28](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/28) Artigo: revisão final da E1 | Giovana Fontes | 23/10/2026 | 26/10/2026 | 4 | Dentro da faixa |
    | [#13](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/13) Fase 1: modelo de qualidade adaptado com diagrama | Giovana Fontes | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#38](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/38) Página PSM/CID com as três categorias | Hauedy Wegner | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#41](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/41) Tabela de contribuição com percentual de esforço | Letícia Lopes | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#32](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/32) GitPage: texto alternativo em todas as imagens | Letícia Lopes | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#42](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/42) Atas das reuniões | Letícia Lopes | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#14](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/14) Fase 1: seleção e priorização de 3 a 4 características (sem usabilidade) | Daniel Sousa | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#16](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/16) Fase 1: ODS, metas e indicadores | Daniel Sousa | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#63](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/63) Artigo: substituir tabela de características por parágrafo e corrigir erros de digitação | Letícia Lopes | 26/10/2026 | 26/10/2026 | 1 | Investigar |
    | [#60](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/60) GitPage: Fases 3 e 4 conforme a versão final do artigo | Hauedy Wegner | 26/10/2026 | 26/10/2026 | 1 | Investigar |
    | [#37](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/37) Release E1 | Hauedy Wegner | 25/10/2026 | 26/10/2026 | 2 | Investigar |
    | [#12](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/12) Fase 1: tipo de produto e descrição estruturada com diagrama de contexto | Arthur Fernandes | 25/10/2026 | 04/11/2026 | 11 | Investigar |
    | [#43](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/43) Correções do Ponto de Controle 1 | Arthur Fernandes | 25/10/2026 | 06/11/2026 | 13 | Investigar |
    | [#44](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/44) Fase 3: método de avaliação e instruções repetíveis | Arthur Fernandes | 25/10/2026 | 07/11/2026 | 14 | Investigar |
    | [#46](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/46) Fase 3: cronograma da avaliação | Arthur Fernandes | 25/10/2026 | 07/11/2026 | 14 | Investigar |
    | [#51](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/51) Fase 4: julgamento, conclusões e coerência com o propósito | Arthur Fernandes | 23/10/2026 | 07/11/2026 | 16 | Investigar |
    | [#49](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/49) Fase 4: dados brutos organizados e rastreáveis | Lucas Branco | 23/10/2026 | 07/11/2026 | 16 | Investigar |
    | [#45](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/45) Fase 3: recursos, ambiente e massa de dados | Daniel Sousa | 25/10/2026 | 11/11/2026 | 18 | Investigar |

    *Tabela 5: Tempo de ciclo das issues concluídas, de (data de fechamento - data da primeira atribuição) + 1, como no PSM/CID Parte 2, seção 8.5. Issues retroativas ficam de fora. Fonte: issues e eventos do GitHub.*

**Issues do milestone ativo com responsável há mais de 3 dias sem fechar:** [#27](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/27) (19 dias), [#39](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/39) (19 dias), [#40](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/40) (19 dias)

A lista de atividades de cada integrante está em [Contribuição da Equipe](../contribuicao.md), e as issues, no [GitHub](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues?q=is%3Aissue).

## Histórico de medições registradas

| Data | ID | Indicador | Valor | Situação |
|---|---|---|---|---|
| 26/10/2026 00:10 | CP-1 | Planejado vs. concluído (E1: Fases 1 e 2) | 15/43 concluídas (34,9%); esperado 86,4%; desvio 51,5 p.p. | Ação corretiva |
| 26/10/2026 00:10 | RC-1 | Estimado vs. realizado (horas reais / estimadas) | 1,24 (24,6 h / 19,8 h, 16 issues) | Alerta |
| 26/10/2026 00:10 | RC-2 | Esforço por integrante (% das horas reais) | Arthur 35%, Daniel 9%, Giovana 22%, Hauedy 8%, Letícia 1%, Lucas 25% | Alerta: Arthur Fernandes, Daniel Sousa, Hauedy Wegner, Letícia Lopes |
| 26/10/2026 00:10 | DP-1 | Tempo de ciclo (atribuição até fechamento) | média 1,6 dias (7 issues) | Investigar 2 issues a mais de 10% da média; Alerta: 7 issues com responsável há mais de 3 dias |
| 26/10/2026 00:48 | CP-1 | Planejado vs. concluído (E1: Fases 1 e 2) | 30/43 concluídas (69,8%); esperado 86,8%; desvio 17,0 p.p. | Ação corretiva |
| 26/10/2026 00:48 | RC-1 | Estimado vs. realizado (horas reais / estimadas) | 1,12 (45,5 h / 40,8 h, 31 issues) | Dentro do esperado |
| 26/10/2026 00:48 | RC-2 | Esforço por integrante (% das horas reais) | Arthur 19%, Daniel 21%, Giovana 23%, Hauedy 8%, Letícia 5%, Lucas 24% | Alerta: Hauedy Wegner, Letícia Lopes |
| 26/10/2026 00:48 | DP-1 | Tempo de ciclo (atribuição até fechamento) | média 2,0 dias (22 issues) | Investigar 7 issues a mais de 10% da média; Alerta: 5 issues com responsável há mais de 3 dias |
| 26/10/2026 23:10 | CP-1 | Planejado vs. concluído (E1: Fases 1 e 2) | 40/45 concluídas (88,9%); esperado 99,5%; desvio 10,6 p.p. | Ação corretiva |
| 26/10/2026 23:10 | RC-1 | Estimado vs. realizado (horas reais / estimadas) | 1,13 (63,0 h / 55,8 h, 41 issues) | Dentro do esperado |
| 26/10/2026 23:10 | RC-2 | Esforço por integrante (% das horas reais) | Arthur 18%, Daniel 19%, Giovana 16%, Hauedy 14%, Letícia 15%, Lucas 17% | Dentro do esperado |
| 26/10/2026 23:10 | DP-1 | Tempo de ciclo (atribuição até fechamento) | média 2,0 dias (32 issues) | Investigar 10 issues a mais de 10% da média |

*Tabela 6: Medições registradas com `python scripts/coleta_psm.py --registrar`. Fonte: [medicoes.csv](dados/medicoes.csv). A interpretação e a decisão de cada medição ficam na [Tabela 3 da página PSM/CID](psm.md#medicoes-e-decisoes).*

## Dados brutos

- [issues.csv](dados/issues.csv): todas as issues com responsáveis, datas e horas.
- [contribuicao.csv](dados/contribuicao.csv): totais por integrante.
- [indicadores.csv](dados/indicadores.csv): valores atuais dos indicadores.
- [medicoes.csv](dados/medicoes.csv): histórico de medições registradas.
