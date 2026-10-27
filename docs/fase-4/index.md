# Fase 4 — Execução e Resultados

Esta página reúne os resultados das quinze métricas, a interpretação das questões GQM, as relações entre características e as melhorias propostas. As classificações usam as faixas dos [níveis de pontuação](../fase-2/niveis-pontuacao.md) de forma descritiva e se referem apenas às execuções descritas na [Fase 3](../fase-3/index.md); métricas com cobertura incompleta ou procedimento diferente do previsto não recebem classificação.

## Resultados das métricas

| Métrica | Resultado | Classificação |
| :--- | :--- | :--- |
| M1 Conclusão de tarefas | P01: 3/3 tarefas sem ajuda; P02: 1/1. Ambos com 100% nas respectivas tarefas | Excelente |
| M2 Razão de tempo | Consulta de linha: P01 em 30 s e P02 em 71 s; razão de 2,37 | Bom |
| M3 Pontuação SUS | P01: 92,5 pontos | Excelente |
| M4 Checklist de acessibilidade | A fonte não acompanhou a ampliação do sistema; contraste inspecionado parcialmente; leitor de tela não avaliado | Avaliação parcial |
| M5 Erros por tarefa | Zero erros relatados por P01 em três tarefas | Excelente |
| M6 Entradas inválidas | 5/5 casos bloqueados com orientação (100%) | Excelente |
| M7 Completude funcional | 12 funções com presença verificada; pré-cadastro e solicitação efetiva de segunda via sem verificação integral | Avaliação parcial |
| M8 Corretude funcional | Treze verificações com resultado compatível com o esperado nos respectivos escopos | Cobertura parcial |
| M9 Divergências | Nenhuma divergência na recarga e na viagem conhecida; sem conciliação após uso na catraca | Avaliação parcial |
| M10 Atualização em até 60 s | Uma recarga atualizada no aplicativo em 1 s (1/1, 100%) | Excelente |
| M11 Tempo médio de resposta | Em Wi-Fi, entre cerca de 2,9 s e 5,3 s, conforme a operação | Resultado por operação |
| M12 Degradação em rede | Razões móvel/Wi-Fi entre 0,97 e 1,00, sem limitação controlada da rede | Comparação exploratória |
| M13 Recuperação após falha | Perda de conexão: retomada manual, sem aviso do problema; 0/1 cenário atendeu ao critério completo | Insuficiente no cenário |
| M14 Falhas por operação | Zero falhas nas três operações normais (0%) | Excelente |
| M15 Disponibilidade observada | 3/3 acessos bem-sucedidos em uma janela (100%) | Excelente |

*Tabela 1: Resultados das métricas na amostra. Fonte: elaborado pela equipe.*

| Operação | Wi-Fi | Dados móveis | Razão |
| :--- | :---: | :---: | :---: |
| Abrir extrato | 3,1 s | 3,0 s | 0,97 |
| Gerar código Pix | 3,0 s | 2,9 s | 0,97 |
| Abrir mapa e paradas | 5,3 s | 5,3 s | 1,00 |
| Abrir detalhes da linha | 2,9 s | 2,9 s | 1,00 |

*Tabela 2: Tempos aproximados por operação e comparação entre redes (M11 e M12). Fonte: elaborado pela equipe.*

## Respostas às questões GQM

| Questões | Resposta |
| :--- | :--- |
| Q1 a Q4 (O1, capacidade de interação) | **Q1:** evidência favorável na consulta de linha (sem ajuda, razão de 2,37); a hipótese completa, que abrange várias tarefas nos dois perfis, ficou inconclusiva. **Q2:** compatível com a hipótese apenas para P01, sem SUS de P02. **Q3:** inconclusiva, pelo checklist incompleto. **Q4:** zero erros e 100% de tratamento das entradas inválidas favorecem o resultado no escopo de P01 |
| Q5 a Q8 (O2, adequação funcional) | **Q5:** inconclusiva, pois duas funções não tiveram verificação integral. **Q6:** resultados compatíveis nas verificações executadas, com cobertura parcial. **Q7:** inconclusiva para o ciclo completo após uso na catraca. **Q8:** a recarga foi atualizada em 1 s e atendeu ao limite de 60 s |
| Q9 (O3, eficiência de desempenho) | O limite de 3 s em Wi-Fi não foi atendido em todas as operações (o mapa levou cerca de 5,3 s). A avaliação em rede limitada ficou inconclusiva, sem banda controlada |
| Q10 a Q12 (O4, confiabilidade) | **Q10:** não atendeu integralmente na perda de rede, por falta de aviso e retomada manual. **Q11:** compatível com a hipótese nas três operações normais. **Q12:** 100% de acessos na janela observada; os demais horários não foram avaliados |

*Tabela 3: Interpretação das questões GQM. Fonte: elaborado pela equipe.*

A cobertura incompleta e a ausência de mínimos de observação fixados antes da coleta impedem um julgamento global dos objetivos O1 a O4.

## Relações entre características e melhorias

A perda de conexão mostrou ao mesmo tempo um problema de confiabilidade e de comunicação com o usuário: o aplicativo continuou carregando sem informar o problema, e foi preciso atualizar a tela manualmente. Não houve evidência pareada suficiente para relacionar maior latência a mais erros ou falhas; a abertura do mapa, embora mais lenta, terminou sem falha.

Melhorias propostas a partir dos achados (ainda sem implementação):

1. **Informar a indisponibilidade de rede** e oferecer nova tentativa ou retomada da consulta (M13, Q10).
2. **Respeitar a preferência de tamanho de fonte do sistema** (M4, Q3).

## Limitações

A amostra de conveniência, o acúmulo dos papéis de usuário e avaliador por P01 e o uso de autorrelato limitam os resultados. P02 participou de apenas uma tarefa, e o SUS usou redação adaptada, sem tradução previamente validada. Acessibilidade, pré-cadastro, segunda via, alteração cadastral e o ciclo de recarga seguido de uso na catraca não foram integralmente testados, e a disponibilidade representa uma única janela de sondagem.

---

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 25/10/2026 | Resultados, interpretação GQM, melhorias e limitações, a partir da Seção VII do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | |
