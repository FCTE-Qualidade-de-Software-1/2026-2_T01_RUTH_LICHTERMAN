# Fase 4 — Execução e Resultados

Esta página reúne os resultados das quinze métricas, a interpretação das questões GQM, as relações entre características e as melhorias propostas. As classificações usam as faixas dos [níveis de pontuação](../fase-2/niveis-pontuacao.md) de forma descritiva e se referem apenas às execuções descritas na [Fase 3](../fase-3/index.md); métricas com cobertura incompleta ou procedimento diferente do previsto não recebem classificação.

## Resultados das métricas

| Métrica | Resultado | Classificação |
| :--- | :--- | :--- |
| M1 Conclusão de tarefas | P01: 3/3 tarefas sem ajuda; P02: 1/1. Ambos com 100% nas respectivas tarefas | Excelente |
| M2 Razão de tempo | Consulta de linha: P01 em 30 s e P02 em 71 s; razão de 2,37 | Bom |
| M3 Pontuação SUS | P01: 92,5 pontos | Excelente |
| M4 Checklist de acessibilidade | A fonte não acompanhou a ampliação do sistema; contraste inspecionado parcialmente; leitor de tela não avaliado | Avaliação parcial |
| M5 Erros por tarefa | Zero erros relatados por P01 em três tarefas: 0 erro/tarefa | Excelente |
| M6 Entradas inválidas | 5/5 casos bloqueados com orientação (100%) | Excelente |
| M7 Completude funcional | 12 funções com presença verificada; pré-cadastro e solicitação efetiva de segunda via sem verificação integral | Avaliação parcial |
| M8 Corretude funcional | Treze verificações com resultado compatível com o esperado nos respectivos escopos | Cobertura parcial |
| M9 Divergências | Nenhuma divergência na recarga e na viagem conhecida; sem conciliação após uso na catraca | Avaliação parcial |
| M10 Atualização em até 60 s | Uma recarga atualizada no aplicativo em 1 s, conforme medição documentada pelo avaliador (1/1, 100%) | Excelente |
| M11 Tempo médio de resposta | Em Wi-Fi, entre cerca de 2,9 s e 5,3 s, conforme a operação | Resultado por operação |
| M12 Degradação em rede | Razões móvel/Wi-Fi entre 0,97 e 1,00, sem limitação controlada da rede | Comparação exploratória |
| M13 Recuperação após falha | Perda de conexão: retomada manual, sem aviso do problema; 0/1 cenário atendeu ao critério completo | Insuficiente no cenário |
| M14 Falhas por operação | Zero falhas relatadas nas três operações normais (0/3, 0%) | Excelente |
| M15 Disponibilidade observada | 3/3 acessos bem-sucedidos em uma janela (100%) | Excelente |

*Tabela 1: Resultados das métricas na amostra. Fonte: elaborado pela equipe.*

| Operação | Wi-Fi | Dados móveis | Razão |
| :--- | :---: | :---: | :---: |
| Abrir extrato | 3,1 s | 3,0 s | 0,97 |
| Gerar código Pix | 3,0 s | 2,9 s | 0,97 |
| Abrir mapa e paradas | 5,3 s | 5,3 s | 1,00 |
| Abrir detalhes da linha | 2,9 s | 2,9 s | 1,00 |

*Tabela 2: Tempos aproximados por operação e comparação entre redes (M11 e M12). Fonte: elaborado pela equipe.*

Houve uma observação por operação e condição de rede. Os tempos móveis de mapa e linha foram informados pelo avaliador como iguais aos de Wi-Fi, sem nova gravação analisada. As diferenças de 0,1 s não sustentam superioridade de uma rede; a comparação não reproduz rede limitada controlada.

## Rastreabilidade das métricas

Os arquivos estão em [evidencias/gqm/](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/tree/main/evidencias/gqm). Os cálculos e seus limites estão em [resultados_por_metrica.md](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/resultados_por_metrica.md).

| Métricas | Registro (arquivo) |
| :--- | :--- |
| M1, M2, M5 | [registro_dos_testes.md](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/registro_dos_testes.md), [tempos_de_resposta.csv](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/tempos_de_resposta.csv) |
| M3 | [respostas_sus.csv](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/respostas_sus.csv) |
| M4 | [registro_dos_testes.md](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/registro_dos_testes.md) |
| M6–M8 | [registro_dos_testes.md](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/registro_dos_testes.md) |
| M9, M10 | [registro_dos_testes.md](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/registro_dos_testes.md), [tempos_de_resposta.csv](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/tempos_de_resposta.csv) |
| M11, M12 | [tempos_de_resposta.csv](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/tempos_de_resposta.csv), [video_evidencia1.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/videos/video_evidencia1.mp4), [video_evidencia2.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/videos/video_evidencia2.mp4), [video_evidencia3.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/videos/video_evidencia3.mp4), [video_evidencia4.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/videos/video_evidencia4.mp4) |
| M13–M15 | [registro_dos_testes.md](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/registro_dos_testes.md) |

*Tabela 3: Arquivos de origem das métricas. Fonte: elaborado pela equipe.*

Os quatro vídeos correspondem a TE01–TE04 e sustentam os tempos de extrato e geração Pix. Eles não cobrem a execução de P02, a atualização da recarga de M10, a rodada RN01 ou a perda de conexão RF01. Os registros textuais distinguem a origem de cada resultado.

## Respostas às questões GQM

| Questões | Resposta |
| :--- | :--- |
| Q1 a Q4 (O1, capacidade de interação) | **Q1:** evidência favorável na consulta de linha (sem ajuda, razão de 2,37); a hipótese completa, que abrange várias tarefas nos dois perfis, ficou inconclusiva. **Q2:** compatível com a hipótese apenas para P01, sem SUS de P02. **Q3:** inconclusiva, pelo checklist incompleto. **Q4:** zero erros e 100% de tratamento das entradas inválidas favorecem o resultado no escopo de P01 |
| Q5 a Q8 (O2, adequação funcional) | **Q5:** inconclusiva, pois duas funções não tiveram verificação integral. **Q6:** resultados compatíveis nas verificações executadas, com cobertura parcial. **Q7:** inconclusiva para o ciclo completo após uso na catraca. **Q8:** a recarga foi atualizada em 1 s e atendeu ao limite de 60 s |
| Q9 (O3, eficiência de desempenho) | O limite de 3 s em Wi-Fi não foi atendido em todas as operações (o mapa levou cerca de 5,3 s). A avaliação em rede limitada ficou inconclusiva, sem banda controlada |
| Q10 a Q12 (O4, confiabilidade) | **Q10:** o aplicativo permitiu a retomada manual, mas não informou o problema de conexão; 0/1 cenário atendeu ao critério completo. **Q11:** compatível com a hipótese nas três operações normais. **Q12:** 100% de acessos na janela observada; os demais horários não foram avaliados |

*Tabela 4: Interpretação das questões GQM. Fonte: elaborado pela equipe.*

A cobertura incompleta e a ausência de mínimos de observação fixados antes da coleta impedem um julgamento global dos objetivos O1 a O4.

## Julgamento por objetivo

| Objetivo | Síntese da interpretação |
| :--- | :--- |
| O1 Capacidade de interação | Indícios favoráveis nas tarefas observadas: conclusão sem ajuda, razão de tempo de 2,37 e SUS de P01 em 92,5. Acessibilidade parcial e conjuntos diferentes de tarefas impedem julgamento integral e comparação geral entre perfis |
| O2 Adequação funcional | Presença verificada em 12 de 14 funções, treze verificações de escopo delimitado e recarga coerente, atualizada em 1 s segundo medição documentada por P01. M7, M8 e M9 permanecem parciais; não há aprovação global |
| O3 Eficiência de desempenho | Tempos Wi-Fi entre cerca de 2,9 s e 5,3 s; nem toda operação atendeu ao limite de 3 s. Execuções únicas e ausência de rede limitada controlada restringem a comparação |
| O4 Confiabilidade | Um cenário sem aviso de perda de conexão, com retomada manual; três operações normais sem falha e três acessos bem-sucedidos na janela. Esses dados não demonstram confiabilidade ou disponibilidade contínuas |

*Tabela 5: Síntese qualitativa por objetivo, restrita à coleta exploratória. Fonte: elaborado pela equipe.*

O propósito da avaliação é apoiar a priorização de correções e melhorias. Os resultados orientam esse trabalho, sem aprovar, reprovar ou certificar o aplicativo como um todo.

## Relações entre características e melhorias

A perda de conexão mostrou ao mesmo tempo um problema de confiabilidade e de comunicação com o usuário: o aplicativo continuou carregando sem informar o problema, e foi preciso atualizar a tela manualmente. Não houve evidência pareada suficiente para relacionar maior latência a mais erros ou falhas; a abertura do mapa, embora mais lenta, terminou sem falha.

Melhorias propostas a partir dos achados, sem implementação no aplicativo real. A1 e A2 foram desenvolvidas em protótipo, conforme a seção seguinte:

1. **Informar a indisponibilidade de rede** e oferecer nova tentativa ou retomada da consulta (M13, Q10).
2. **Respeitar a preferência de tamanho de fonte do sistema** (M4, Q3).
3. **Investigar o tempo de abertura do mapa e das paradas**, de cerca de 5,3 s (M11).
4. **Ampliar a avaliação em estudo futuro**, conforme as limitações da coleta: acessibilidade, fluxos funcionais, conciliação após uso na catraca, janelas de disponibilidade, condições de rede e participantes.

## Ação de melhoria executada

Em 15/11/2026, foi concluído um protótipo de alta fidelidade para **A1 e A2**, justificado pelos achados de comunicação da perda de conexão (M13) e ampliação de fonte (M4). A entrega reúne telas editáveis e fluxos navegáveis no Figma, com dados fictícios.

**[Abrir o protótipo navegável de A1 e A2](https://www.figma.com/proto/imCHuQ8h2wmrkuvHPtCjcE?node-id=6-143&starting-point-node-id=6%3A143)**

- **A1:** aviso de conexão após 8 s nos percursos simulados de consulta e recarga, botão “Tentar novamente” e retomada dos dados representados. Foram conferidos os quatro percursos: consulta interrompida, recarga interrompida, reabertura e retorno após bloqueio.
- **A2:** telas com fonte de 100% e 200%, conteúdo com rolagem e botão principal com contraste de **5,66:1**, para texto branco sobre #006CA8. Na tela inicial, **A+ Fonte** abre a versão ampliada e **A− Fonte** retorna ao início de A1. Os controles são recursos da apresentação; a recomendação para o aplicativo continua sendo acompanhar a preferência de fonte do sistema.

![A1: aviso de conexão e nova tentativa](https://raw.githubusercontent.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/main/evidencias/prototipo/imagens/prototipo_sem_conexao.png){ width="220" }
![A2: fonte ampliada e contraste proposto](https://raw.githubusercontent.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/main/evidencias/prototipo/imagens/prototipo_fonte_200.png){ width="220" }

*Figura 1: Telas do protótipo de A1 e A2, com dados fictícios. A tela ampliada possui conteúdo com rolagem. Fonte: elaborado pela equipe.*

A [documentação da entrega](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/tree/main/evidencias/prototipo) reúne as instruções e as figuras. O [registro de verificação](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/prototipo/verificacao.md) detalha os percursos conferidos, o cálculo de contraste e os limites da simulação.

O protótipo não foi implementado no aplicativo e não comprova persistência, prevenção de duplicidade ou detecção real de rede. Não houve nova coleta GQM nem validação com participantes; **os resultados originais de M4 e M13 permanecem inalterados**. A3 e A4 continuam como propostas futuras.

## Limitações

A amostra de conveniência, o acúmulo dos papéis de usuário e avaliador por P01 e o uso de autorrelato limitam os resultados. P02 participou de apenas uma tarefa, e o SUS usou redação adaptada, sem tradução previamente validada. Acessibilidade, pré-cadastro, segunda via, alteração cadastral e o ciclo de recarga seguido de uso na catraca não foram integralmente testados, e a disponibilidade representa uma única janela de sondagem.

---

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 25/10/2026 | Resultados, interpretação GQM, melhorias e limitações, a partir da Seção VII do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | [Letícia Lopes](https://github.com/leticialopes20)|
| 1.1 | 15/11/2026 | Alinhamento da análise GQM e da rastreabilidade das métricas com o artigo e as evidências | [Lucas Branco](https://github.com/lucasbbranco) | — |
| 1.2 | 16/11/2026 | Registro da ação de melhoria executada em protótipo para A1 e A2, com link, figuras e verificação | [Lucas Branco](https://github.com/lucasbbranco) | — |
