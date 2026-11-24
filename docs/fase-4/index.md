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

### Situação de resposta das questões

Além do julgamento das hipóteses, cada questão foi classificada pela situação de resposta, isto é, se o conteúdo coletado permite respondê-la. Uma questão é **respondida completamente** quando todas as suas métricas foram calculadas pelo procedimento previsto, com a cobertura mínima proposta; **respondida parcialmente** quando há evidência para ao menos uma métrica, mas procedimento, cobertura ou perfis ficaram aquém do previsto, e a hipótese só pode ser julgada no escopo observado; e **não respondida** quando nenhuma métrica tem evidência utilizável. Esse critério foi formalizado na consolidação, após a coleta.

| Q | Situação | Evidência e hipótese no escopo observado | O que falta para a resposta integral |
| :-: | :--- | :--- | :--- |
| Q1 | Respondida parcialmente | M1: P01 3/3, P02 1/1; M2: 71/30 ≈ 2,37 (uma tarefa). Compatível (M1 Excelente; M2 Bom), só na consulta de linha | Cinco tarefas nos dois perfis, referência por mediana de três repetições, três participantes por perfil |
| Q2 | Respondida parcialmente | M3: SUS de P01 = 92,5. Compatível (≥ 68) só no perfil experiente | SUS do perfil sem experiência e respostas por item de P01 |
| Q3 | Respondida parcialmente | M4 não calculada: fonte não acompanhou o sistema; contraste de 11:1, 14:1 e 3,7:1; leitor de tela e área de toque não avaliados; inconclusiva | Checklist completo, contraste sem compressão, leitor de tela e área de toque |
| Q4 | Respondida parcialmente | M5: 0/3 (autorrelato de P01); M6: 5/5. Compatível (ambas Excelente); M5 com três tarefas | M5 pelas gravações, com dois avaliadores; perfil sem experiência |
| Q5 | Respondida parcialmente | M7: 12 de 14 funções verificadas (85,7%). Inconclusiva: só seria refutada se as duas pendentes estivessem ausentes | Verificar pré-cadastro e solicitação efetiva de segunda via |
| Q6 | Respondida parcialmente | M8: 13/13 verificações aprovadas (abertura, apresentação ou execução), para 14 funções. Compatível nos casos executados | Um caso por função, com execução (por exemplo, salvar alterações) |
| Q7 | Respondida parcialmente | M9: sem divergência na recarga (10,70 + 2,70 = 13,40) e em uma viagem conhecida; sem uso na catraca | Três conferências, ao menos uma após uso na catraca |
| Q8 | Respondida parcialmente | M10: 1/1 recarga em 1 s (medição documentada pelo avaliador). Compatível em uma recarga | Três recargas, com comprovante e gravação |
| Q9 | Respondida parcialmente | M11 (Wi-Fi): 2,9 a 5,3 s; M12: 0,97 a 1,00, sem banda limitada. Não atendida na abertura do mapa (observação única); rede limitada inconclusiva | Cinco repetições, percentil 90 e banda limitada por ferramenta |
| Q10 | Respondida parcialmente | M13: 0/1 (perda de conexão, retomada manual e sem aviso). Não atendida no único cenário provocado | Perda na recarga, fechamento forçado e bloqueio de tela, com repetições |
| Q11 | Respondida parcialmente | M14: 0/3 falhas. Compatível (Excelente), com três operações | Vinte operações normais |
| Q12 | Respondida parcialmente | M15: 3/3 em uma janela (cerca de 13h30 de 23/10/2026). Compatível nessa janela | Janelas de manhã, pico da tarde e noite |

*Tabela 5: Situação de resposta das questões GQM. Nenhuma questão foi respondida completamente ou ficou sem resposta. Fonte: elaborado pela equipe.*

As pendências se agrupam em cinco frentes: o segundo perfil de passageiro (Q1, Q2 e Q4); a cobertura de funções e conferências (Q5 a Q7); repetições e condições controladas (Q8, Q9 e Q11); cenários e janelas adicionais (Q10 e Q12); e o checklist de acessibilidade (Q3).

## Julgamento por objetivo

| Objetivo | Síntese da interpretação |
| :--- | :--- |
| O1 Capacidade de interação | Indícios favoráveis nas tarefas observadas: conclusão sem ajuda, razão de tempo de 2,37 e SUS de P01 em 92,5. Acessibilidade parcial e conjuntos diferentes de tarefas impedem julgamento integral e comparação geral entre perfis |
| O2 Adequação funcional | Presença verificada em 12 de 14 funções, treze verificações de escopo delimitado e recarga coerente, atualizada em 1 s segundo medição documentada por P01. M7, M8 e M9 permanecem parciais; não há aprovação global |
| O3 Eficiência de desempenho | Tempos Wi-Fi entre cerca de 2,9 s e 5,3 s; nem toda operação atendeu ao limite de 3 s. Execuções únicas e ausência de rede limitada controlada restringem a comparação |
| O4 Confiabilidade | Um cenário sem aviso de perda de conexão, com retomada manual; três operações normais sem falha e três acessos bem-sucedidos na janela. Esses dados não demonstram confiabilidade ou disponibilidade contínuas |

*Tabela 6: Síntese qualitativa por objetivo, restrita à coleta exploratória. Fonte: elaborado pela equipe.*

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

As páginas [Versão 1](../prototipo/v1.md) e [Verificação da v1](../prototipo/v1-verificacao.md) reúnem as instruções, as figuras e a conferência dos percursos; os arquivos originais estão na [pasta de evidências](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/tree/main/evidencias/prototipo). A verificação detalha os percursos conferidos, o cálculo de contraste e os limites da simulação.

O protótipo não foi implementado no aplicativo e não comprova persistência, prevenção de duplicidade ou detecção real de rede. Não houve nova coleta GQM nem validação com participantes; **os resultados originais de M4 e M13 permanecem inalterados**. A3 e A4 continuam como propostas futuras.


### Protótipo v2
 
Em 24/11/2026, o protótipo foi evoluído para uma segunda versão (v2), com base em melhorias identificadas ao navegar pela v1 e em melhorias propostas pela equipe para o aplicativo. A v1 e a sua documentação foram mantidas. A v2 amplia a cobertura para as telas do aplicativo de ponta a ponta e acrescenta:
 
- **Conexão normal, lenta e sem internet** em Início, Pix, Extrato, Mapa e Linha, com mensagem e nova tentativa (continuação de A1; M13, Q10). O estado de carregamento do mapa representa o achado de M11, sem medir nem reduzir o tempo real.
- **Texto ampliado** na tela de Perfil, em 125% e 150% (M4, Q3). A ampliação de 200% da v1 continua sendo a referência de A2.
- **Saldo e recarga coerentes:** o valor escolhido segue do Pix até o Início e o Saldo, e a tela “Entenda seu saldo” mostra a composição do total (M9, M10, Q7).

**[Abrir o protótipo navegável da v2](https://www.figma.com/proto/cKG7Stdd8v0K7UFOhxd02t/BRB-MOBILIDADE--PROTOTIPA%C3%87%C3%83O--Copy-?node-id=3174-357&p=f&scaling=scale-down&content-scaling=fixed&starting-point-node-id=3174%3A357)**
 
![Início com atalhos e ônibus favorito, e Perfil e configurações da v2](../prototipo/img/v2/inicio_perfil.png){ width="480" }
 
*Figura 2: Tela inicial e perfil da v2, com os atalhos e o ônibus favorito em tempo real. Fonte: elaborado pela equipe.*
 
![Conexão lenta e sem internet em Início, Pix e Extrato na v2](../prototipo/img/v2/conexao.png){ width="560" }
 
*Figura 3: Estados de conexão lenta e sem internet na v2, com mensagem e nova tentativa. Fonte: elaborado pela equipe.*
 
A [página da v2](../prototipo/v2.md) explica o que mudou no visual, nos botões, nos fluxos e nos estados de conexão, com imagens, a tabela que liga cada achado à mudança correspondente e as melhorias no aplicativo que não vêm da avaliação (atalhos de Extrato de uso, Bloquear cartão e Fale conosco no Início, ônibus favorito em tempo real e perfil com poucas opções). A [Protótipos](../prototipo/index.md) reúne as duas versões. A v2 também não foi implementada no aplicativo, não houve nova coleta GQM nem validação com participantes, e **os resultados originais permanecem inalterados**.

## Limitações

A amostra de conveniência, o acúmulo dos papéis de usuário e avaliador por P01 e o uso de autorrelato limitam os resultados. P02 participou de apenas uma tarefa, e o SUS usou redação adaptada, sem tradução previamente validada. Acessibilidade, pré-cadastro, segunda via, alteração cadastral e o ciclo de recarga seguido de uso na catraca não foram integralmente testados, e a disponibilidade representa uma única janela de sondagem.


## Conclusão

A avaliação do BRB Mobilidade em capacidade de interação, adequação funcional, eficiência de desempenho e confiabilidade, com base na ISO/IEC 25010:2023 e no GQM, indica resultados favoráveis nas tarefas observadas de capacidade de interação (conclusão sem ajuda, razão de tempo de 2,37 e SUS de 92,5, só de P01) e coerência do saldo após a recarga. Três pontos ficaram abaixo da hipótese: a abertura do mapa acima de 3 s (O3), a perda de conexão sem aviso (O4) e a fonte que não acompanha o sistema (O1).

As doze questões GQM foram respondidas apenas parcialmente ([Tabela 5](#situacao-de-resposta-das-questoes)); por isso não se atribuiu julgamento global a O1–O4. Os resultados atendem ao propósito da [Fase 1](../fase-1/2-proposito.md) ao indicar onde priorizar correções: aviso de perda de conexão (A1), texto que respeita a fonte do sistema (A2) e abertura do mapa (A3). A ação executada foi o protótipo de alta fidelidade de A1 e A2.

Como trabalhos futuros, propõe-se ampliar os participantes por perfil (incluindo a SUS para passageiros sem experiência), as janelas de disponibilidade, a rede limitada controlada e a conciliação após uso na catraca, além de completar o checklist de acessibilidade, conforme o protocolo ampliado do artigo.

---

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 25/10/2026 | Resultados, interpretação GQM, melhorias e limitações, a partir da Seção VII do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | [Letícia Lopes](https://github.com/leticialopes20)|
| 1.1 | 15/11/2026 | Alinhamento da análise GQM e da rastreabilidade das métricas com o artigo e as evidências | [Lucas Branco](https://github.com/lucasbbranco) | [Letícia Lopes](https://github.com/leticialopes20)|
| 1.2 | 16/11/2026 | Registro da ação de melhoria executada em protótipo para A1 e A2, com link, figuras e verificação | [Lucas Branco](https://github.com/lucasbbranco) | [Letícia Lopes](https://github.com/leticialopes20) |
| 1.3 | 24/11/2026 | Situação de resposta das questões GQM e conclusão, a partir das Seções VII-G e VIII da versão final do artigo | [Hauedy Wegner](https://github.com/HauedyWS) |[Letícia Lopes](https://github.com/leticialopes20) |
| 1.4 | 24/11/2026 | Adiciona informações sobre a versão 2 do prototipo | [Letícia Lopes](https://github.com/leticialopes20) | [Lucas Branco](https://github.com/lucasbbranco)|