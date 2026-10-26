# Gestão do projeto com PSM/CID

Esta página registra como a equipe mede o próprio trabalho, conforme a Premissa 3 e a Seção 2 da especificação do trabalho final. As métricas da [Fase 2](../fase-2/index.md) seguem o GQM e avaliam o produto (BRB Mobilidade). As métricas desta página seguem o PSM (*Practical Software and Systems Measurement*), na versão para desenvolvimento contínuo e iterativo (CID), e avaliam o trabalho da equipe. Por isso, elas não entram no [gráfico GQM](../fase-2/grafico-gqm.md).

No PSM, cada medida existe para responder a uma **necessidade de informação** e apoiar uma **decisão** (Aula 09). Por isso, cada indicador abaixo foi tirado da tabela de categorias, conceitos mensuráveis e medidas do guia e descrito no template de instância do modelo de informação da Aula 09 (slide 19).

## Propósito e contexto

| Elemento | Definição |
| :--- | :--- |
| Analisar | o processo de trabalho da equipe Ruth Lichterman |
| Com o propósito de | acompanhar e controlar o andamento das entregas |
| Com respeito a | progresso das tarefas, esforço (estimado, realizado e por integrante) e velocidade do fluxo de trabalho |
| Do ponto de vista | da equipe e da professora da disciplina |
| No contexto | da disciplina Qualidade de Software 1 (FCTE/UnB, 2026/2, turma T01): equipe de 6 integrantes, duas entregas (E1: Fases 1 e 2, prazo 26/10/2026; E2: Fases 3 e 4) e tarefas organizadas em issues e milestones no GitHub |

*Tabela 1: Propósito da medição do projeto. Fonte: elaborado pela equipe, com base no modelo de objetivo da Aula 08.*

## Origem das medidas

A especificação pede medidas nas três categorias de informação do PSM. A Tabela 2 liga cada indicador à linha de onde ele foi tirado na Tabela 5 do guia PSM/CID, Parte 1, e à especificação da Parte 2, quando existe.

| ID | Categoria de informação | Conceito mensurável | Medida do guia | Origem no guia | Especificação na Parte 2 |
| :--- | :--- | :--- | :--- | :--- | :--- |
| CP-1 | Calendário e Progresso (*Schedule and Progress*) | Progresso das unidades de trabalho (*Work Unit Progress*) | *Committed vs. Completed* | Tabela 5, linha 1 | Seção 8.3, com critérios de decisão de 5% e 10% |
| RC-1 | Recursos e Custos (*Resources and Cost*) | Desempenho financeiro (*Financial Performance*) | *Estimate vs. Actual Effort* e *Estimation Accuracy* | Tabela 5, linhas 8 e 9 | Não há; o cálculo e o critério foram definidos pela equipe |
| RC-2 | Recursos e Custos (*Resources and Cost*) | Desempenho financeiro (*Financial Performance*) | *Effort* | Tabela 5, linha 7 | Não há; o cálculo e o critério foram definidos pela equipe |
| DP-1 | Desempenho dos Processos (*Process Performance*) | Eficiência do processo: velocidade (*Process Efficiency – Speed*) | *Cycle Time* | Tabela 5, linhas 30 e 32 | Seção 8.5, com critério de decisão de 10% da média |

*Tabela 2: Origem de cada indicador no PSM/CID. Fonte: PSM/CID Parte 1 (2021), Tabela 5, e Parte 2 (2021), seções 8.3 e 8.5.*

O guia foi escrito para equipes ágeis que medem *story points* e *features*. Neste projeto, a unidade de trabalho é a **issue** e a iteração é o **milestone** de cada entrega.

## 1. CP-1 Planejado vs. concluído

| Campo do template | Definição |
| :--- | :--- |
| Necessidade de informação | As tarefas planejadas para a entrega estão sendo concluídas no ritmo do prazo? Quais estão em risco? |
| Conceito mensurável | Progresso das unidades de trabalho |
| Entidades relevantes | Issues do milestone da entrega |
| Atributos | Situação da issue (aberta ou fechada); datas de criação e de prazo do milestone |
| Medidas básicas | 1. P = issues planejadas no milestone. 2. C = issues fechadas no milestone. 3. Fração do prazo do milestone já decorrida |
| Método de medição | 1 e 2. Contagem automática das issues pela API do GitHub. 3. (agora − criação do milestone) ÷ (prazo − criação do milestone) |
| Tipo de método de medição | 1, 2 e 3. Objetivo |
| Escala | 1 e 2. Inteiros de zero ao infinito. 3. Reais de 0 a 1 |
| Tipo de escala | 1, 2 e 3. Razão |
| Unidade de medida | 1 e 2. Issue. 3. Adimensional |
| Medidas derivadas | Percentual concluído; progresso esperado; desvio |
| Função de medição | Concluído (%) = C × 100 ÷ P. Esperado (%) = fração decorrida × 100. Desvio (p.p.) = esperado − concluído |
| Indicador | Gráfico de progresso por milestone e Tabela 2 do [Painel PSM](painel.md) |
| Modelo de análise | Quanto maior o desvio, maior o risco de a entrega não ficar pronta no prazo. Um desvio alto com muitas tarefas já feitas indica registro atrasado nas issues, e não trabalho atrasado |
| Critérios de decisão | **Guia (Parte 2, seção 8.3):** diferença entre o planejado e o concluído acima de 5%, investigar as causas; acima de 10%, tomar ação corretiva. **Adaptação da equipe:** o guia compara no fim da iteração; aqui a comparação é feita durante o milestone, contra o progresso esperado para a data |

*Tabela 3: Instância do modelo de informação do CP-1. Fonte: elaborado pela equipe, com base na Aula 09 e no PSM/CID.*

## 2. RC-1 Estimado vs. realizado

| Campo do template | Definição |
| :--- | :--- |
| Necessidade de informação | As estimativas de esforço da equipe são precisas? Em que tipo de tarefa a equipe mais erra a estimativa? |
| Conceito mensurável | Desempenho financeiro |
| Entidades relevantes | Issues fechadas com horas estimadas e horas reais preenchidas |
| Atributos | Esforço estimado e esforço realizado |
| Medidas básicas | 1. E = soma das horas estimadas. 2. R = soma das horas reais |
| Método de medição | 1. Leitura do campo *Horas estimadas*, preenchido na criação da issue. 2. Leitura do campo *Horas reais*, preenchido pelo responsável ao fechar |
| Tipo de método de medição | 1 e 2. Subjetivo (estimativa e registro feitos pelas pessoas); a leitura dos campos é automática |
| Escala | 1 e 2. Reais de zero ao infinito |
| Tipo de escala | 1 e 2. Razão |
| Unidade de medida | 1 e 2. Hora |
| Medida derivada | Razão de esforço |
| Função de medição | Razão = R ÷ E |
| Indicador | Valor do RC-1 na Tabela 1 e colunas de horas na Tabela 3 do [Painel PSM](painel.md) |
| Modelo de análise | Razão acima de 1: a equipe subestimou o esforço; abaixo de 1: superestimou |
| Critérios de decisão | **Equipe:** razão fora da faixa de 0,8 a 1,2, revisar as estimativas das issues restantes do mesmo tipo |

*Tabela 4: Instância do modelo de informação do RC-1. Fonte: elaborado pela equipe, com base na Aula 09 e no PSM/CID.*

## 3. RC-2 Esforço por integrante

| Campo do template | Definição |
| :--- | :--- |
| Necessidade de informação | Quanto esforço cada integrante dedicou ao projeto? O trabalho está distribuído de forma equilibrada? |
| Conceito mensurável | Desempenho financeiro (esforço) |
| Entidades relevantes | Issues fechadas e integrantes da equipe |
| Atributos | Horas reais e responsáveis de cada issue |
| Medidas básicas | 1. Hᵢ = horas reais do integrante i. 2. H = horas reais da equipe |
| Método de medição | 1. Soma das horas reais das issues fechadas em que o integrante é responsável; em issues com mais de um responsável, as horas são divididas igualmente. 2. Soma de todas as horas reais |
| Tipo de método de medição | 1 e 2. Subjetivo (registro das pessoas); o cálculo é automático |
| Escala | 1 e 2. Reais de zero ao infinito |
| Tipo de escala | 1 e 2. Razão |
| Unidade de medida | 1 e 2. Hora-pessoa |
| Medida derivada | Percentual de esforço do integrante |
| Função de medição | Esforço (%) = Hᵢ × 100 ÷ H |
| Indicador | Gráfico de esforço por integrante no [Painel PSM](painel.md) e tabela por entrega na página [Contribuição da Equipe](../contribuicao.md) |
| Modelo de análise | Percentual muito acima da média indica sobrecarga; muito abaixo indica pouca participação ou trabalho não registrado |
| Critérios de decisão | **Equipe:** integrante abaixo de 10% ou acima de 30%, rebalancear atribuindo as próximas issues a quem está abaixo da faixa. As horas reais já registradas não são alteradas |

*Tabela 5: Instância do modelo de informação do RC-2. Fonte: elaborado pela equipe, com base na Aula 09 e no PSM/CID.*

## 4. DP-1 Tempo de ciclo

| Campo do template | Definição |
| :--- | :--- |
| Necessidade de informação | Quanto tempo uma tarefa leva desde que alguém a assume até ficar pronta? Há tarefas paradas? |
| Conceito mensurável | Eficiência do processo: velocidade |
| Entidades relevantes | Issues atribuídas, exceto as retroativas (criadas já concluídas) |
| Atributos | Data da primeira atribuição e data de fechamento |
| Medidas básicas | 1. Data de início: primeira atribuição de responsável. 2. Data de fim: fechamento da issue |
| Método de medição | 1. Leitura do evento *assigned* no histórico da issue. 2. Leitura da data de fechamento, ambas pela API do GitHub |
| Tipo de método de medição | 1 e 2. Objetivo |
| Escala | 1 e 2. Datas do calendário |
| Tipo de escala | 1 e 2. Intervalar |
| Unidade de medida | 1 e 2. Dia |
| Medidas derivadas | Tempo de ciclo de cada issue; média de tempo de ciclo; idade das issues abertas com responsável |
| Função de medição | Tempo de ciclo = (data de fim − data de início) + 1, em dias, como no guia (Parte 2, seção 8.5). Idade = (hoje − data de início) + 1 |
| Indicador | Tabela 4 e lista de issues paradas no [Painel PSM](painel.md) |
| Modelo de análise | Tempos maiores indicam tarefas grandes demais ou paradas; a comparação entre medições mostra se o fluxo está ficando mais previsível |
| Critérios de decisão | **Guia (Parte 2, seção 8.5):** investigar qualquer issue com tempo de ciclo a mais de 10% da média. Como a unidade é o dia inteiro, a tolerância mínima é de 1 dia. **Equipe:** issue do milestone ativo com responsável há mais de 3 dias sem fechar, cobrar o responsável ou dividir a tarefa (critério revisto na Medição 2) |

*Tabela 6: Instância do modelo de informação do DP-1. Fonte: elaborado pela equipe, com base na Aula 09 e no PSM/CID.*

Os critérios marcados como "Equipe" foram definidos pelo grupo para o prazo curto das entregas e podem ser revistos a cada medição, com a justificativa registrada abaixo.

## Coleta automática

Os dados vêm das issues, dos eventos e dos commits do [repositório](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN). Cada tarefa é uma issue criada pelo template da equipe, com responsável, milestone e os campos *Horas estimadas* e *Horas reais*. As tarefas concluídas antes da adoção das issues foram registradas como issues retroativas (label `retroativa`).

O script [`scripts/coleta_psm.py`](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/scripts/coleta_psm.py) lê esses dados pela API do GitHub, calcula os quatro indicadores e gera o [Painel PSM](painel.md), a página [Contribuição da Equipe](../contribuicao.md) e os dados brutos em CSV. Ele roda automaticamente a cada publicação do site, quando uma issue é fechada ou reaberta e a cada 3 horas. Uma medição oficial é gravada com `python scripts/coleta_psm.py --registrar`, que acrescenta os valores ao histórico [`medicoes.csv`](dados/medicoes.csv).

## Calendário das medições

| Medição | Data | Momento |
| :--- | :--- | :--- |
| 1 | 26/10/2026, 00h10 | Início do dia da Entrega 1 |
| 2 | 26/10/2026, 00h48 | Depois das decisões da Medição 1, para verificar o efeito delas |
| 3 | A definir | Metade do prazo da Entrega 2 |
| 4 | A definir | Véspera da Entrega 2 |

*Tabela 7: Calendário das medições. Fonte: elaborado pela equipe.*

## Registro de medições e decisões

| Medição | Indicador | Valor | Situação | Interpretação | Decisão, responsável e prazo |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 (26/10) | CP-1 | 15 de 43 issues da E1 concluídas (34,9%); esperado 86,4%; desvio de 51,5 p.p. | Ação corretiva | A maior parte das issues abertas já foi feita no artigo e no site (por exemplo, #10, #17 a #19, #21 a #24, #26, #29, #30 e #33 a #36), mas não foi fechada porque as horas reais não foram informadas. O desvio mede, sobretudo, registro atrasado. Continuam pendentes de fato #27, #28, #32, #37, #41 e #42 | Cada responsável informa as horas reais das issues concluídas, e Hauedy as fecha com o script `scripts/atribuir_issues.ps1`. Responsáveis: todos. Prazo: 26/10 |
| 1 (26/10) | RC-1 | 1,24 (24,6 h reais ÷ 19,8 h estimadas, 16 issues) | Fora da faixa | A equipe subestimou tarefas de apresentação e de redação: #9 (3 h estimadas, 5 h reais), #20 (2 h e 4 h) e #8 (1 h e 2 h) | Nas issues de redação e de apresentação da E2, estimar com margem de 25%. Responsável: quem cria a issue. Prazo: criação das issues da E2 |
| 1 (26/10) | RC-2 | Arthur 35%, Lucas 25%, Giovana 22%, Daniel 9%, Hauedy 8%, Letícia 1% | Fora da faixa | Arthur concentrou as primeiras tarefas. O trabalho de repositório e GitPage de Hauedy e Letícia ainda não tinha issue com horas registradas | Em 25/10, as issues abertas foram atribuídas para equilibrar o esforço previsto, sem novas issues para Arthur (previsão na página [Contribuição da Equipe](../contribuicao.md)). Hauedy e Letícia abrem issues com as horas reais do trabalho ainda não registrado. Prazo: 26/10 |
| 1 (26/10) | DP-1 | Média de 1,6 dia (7 issues); #20 e #57 com 3 dias; 7 issues com responsável desde 23/10 (#10, #26, #28, #48, #49, #51 e #52) | Investigar e alerta | #20 e #57 foram tarefas grandes (todas as métricas e a padronização da norma). Entre as paradas, #10 e #26 já estão feitas, #28 é a revisão final, prevista para o dia da entrega, e #48 a #52 são da E2 | Fechar #10 e #26 junto com a decisão do CP-1. Na E2, dividir tarefas grandes em issues menores. Responsável: Hauedy. Prazo: criação das issues da E2 |
| 2 (26/10) | CP-1 | 30 de 43 issues da E1 concluídas (69,8%); esperado 86,8%; desvio de 17,0 p.p. | Ação corretiva | A decisão da Medição 1 reduziu o desvio de 51,5 para 17,0 p.p. Das 13 issues abertas, #38 a #41 foram concluídas nesta noite e ainda não fechadas; #12, #13, #14 e #16 dependem de confirmação dos responsáveis; #27, #28, #32, #37 e #42 estão pendentes | Fechar #38 a #41 com as horas reais (Hauedy). Responsáveis por #12, #13, #14 e #16 confirmam se o conteúdo já está no artigo. Giovana conclui #27 e #28, Letícia conclui #32 e #42, e Hauedy faz a release (#37) por último. Prazo: envio da E1 |
| 2 (26/10) | RC-1 | 1,12 (45,5 h reais ÷ 40,8 h estimadas, 31 issues) | Dentro da faixa | A razão entrou na faixa porque as 15 issues fechadas após a Medição 1 tiveram as horas reais registradas iguais à estimativa, por decisão da equipe. A subestimação observada na Medição 1 continua valendo para as tarefas de redação e de apresentação | Manter a margem de 25% decidida na Medição 1. Quem gastou um tempo diferente do estimado corrige o campo *Horas reais* da issue. Prazo: E2 |
| 2 (26/10) | RC-2 | Lucas 24%, Giovana 23%, Daniel 21%, Arthur 19%, Hauedy 8%, Letícia 5% | Fora da faixa | O rebalanceamento resolveu a sobrecarga de Arthur e a baixa participação de Daniel. Hauedy e Letícia continuam abaixo de 10% porque #38 a #41 e o trabalho de repositório ainda não têm horas reais registradas | Fechar #38 a #41 e abrir issues com as horas reais do trabalho de repositório e GitPage ainda não registrado. Responsáveis: Hauedy e Letícia. Prazo: 26/10 |
| 2 (26/10) | DP-1 | Média de 2,0 dias (22 issues); #10 e #26 com 4 dias; 5 issues com responsável há mais de 3 dias (#28, #48, #49, #51 e #52) | Investigar e alerta | #10 e #26 já estavam feitas e só foram fechadas agora, então o tempo de ciclo delas mede o atraso de registro. #28 está prevista para o dia da entrega. #48 a #52 são da E2, que ainda não começou | Revisão do critério da equipe: a partir desta medição, só contam como paradas as issues do milestone ativo. Fechar cada issue no mesmo dia em que for concluída. Responsáveis: todos. Prazo: E2 |

*Tabela 8: Registro das medições, interpretações e decisões de gestão. Fonte: [medicoes.csv](dados/medicoes.csv) e decisões da equipe.*

---

### Histórico de versão

| Versão | Data | Descrição | Autor(a) |
| :--- | :--- | :--- | :--- |
| 0.1 | 19/10/2026 | Criação da página com indicadores e procedimento de medição | Hauedy |
| 1.0 | 26/10/2026 | Indicadores ligados à Tabela 5 do PSM/CID, fichas no template da Aula 09, troca da taxa de retrabalho pelo tempo de ciclo e registro da Medição 1 | Hauedy |
| 1.1 | 26/10/2026 | Registro da Medição 2 e revisão do critério de issues paradas | Hauedy |
