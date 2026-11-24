# Fase 3 — Projeto da Avaliação

Nesta fase, a equipe define **como** as métricas da [Fase 2](../fase-2/index.md) foram coletadas: ambiente, participantes, tarefas e procedimentos. A coleta teve caráter exploratório, e as diferenças entre o que foi especificado e o que foi executado estão registradas abaixo.

O método é de caixa-preta, executado como usuário final, porque a equipe não tem acesso ao código-fonte, a registros internos nem a ambiente de homologação. Os procedimentos e sua origem estão documentados nos [registros da coleta](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/registro_dos_testes.md).

## Ambiente

| Item | Valor |
| :--- | :--- |
| Aparelho | Redmi Note 10S |
| Sistema | Android 13, compilação TP1A.220624.014 |
| Aplicativo | BRB Mobilidade, versão 1.0.60 |
| Redes | Wi-Fi e dados móveis (4G identificado nas gravações) |
| Técnicas | Testes de caixa-preta, gravações de tela e registros do avaliador |

*Tabela 1: Ambiente da avaliação. Fonte: elaborado pela equipe.*

### Requisitos de Hardware e Software

- **Requisitos Mínimos do Produto:** Smartphone com tela sensível ao toque, acesso à internet (Wi-Fi ou dados móveis 3G/4G/5G) e sistema operacional Android (v8.0 ou superior) ou iOS (v12.0 ou superior).
- **Ambiente Efetivo de Execução:** Dispositivo Redmi Note 10S sob sistema operacional Android 13 (compilação TP1A.220624.014), executando a versão 1.0.60 do aplicativo BRB Mobilidade.
- **Ferramentas de Suporte:** Softwares de gravação de tela para registro das sessões de uso, formulários eletrônicos para o questionário SUS adaptado e planilhas eletrônicas para tabulação de tempos e erros.

## Participantes

A amostra de conveniência teve dois participantes, identificados por códigos:

| Código | Perfil | Participação |
| :--- | :--- | :--- |
| P01 | Com experiência prévia no aplicativo, principalmente na consulta de ônibus; também responsável pela execução dos testes | Três tarefas, questionário SUS e demais medições |
| P02 | 55 anos, sem experiência prévia | Somente a consulta de linha |

*Tabela 2: Participantes da avaliação. Fonte: elaborado pela equipe.*

### Conhecimento dos Avaliadores e Participantes

- **Equipe Avaliadora:** Alunos de Engenharia de Software responsáveis pela elaboração do protocolo, condução dos testes e registro de evidências.
- **Nível de Conhecimento dos Participantes:**
  - **P01 (Perfil Experiente):** Possui alto conhecimento técnico em informática/tecnologia e experiência prévia com o aplicativo BRB Mobilidade, atuando como referência de tempo de execução.
  - **P02 (Perfil Leigo):** Usuária de 55 anos, com conhecimento básico de informática e sem experiência prévia no aplicativo, representando a parcela de usuários que necessita de maior acessibilidade e facilidade de aprendizagem.

As sessões só são gravadas com consentimento registrado. Os registros textuais identificam os participantes por códigos. As evidências, incluindo quatro vídeos, estão disponíveis no [repositório da equipe](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/tree/main/evidencias/gqm). O tratamento e a divulgação dos dados devem observar a proteção das informações pessoais, conforme a Lei Geral de Proteção de Dados.

### Termo de Consentimento Livre e Esclarecido (TCLE):

[Baixar em PDF](./arquivos/TCLE_padrao_BRB_Mobilidade.pdf){ download } · [Baixar em Word](./arquivos/TCLE_padrao_BRB_Mobilidade.docx){ download }

<object data="arquivos/TCLE_padrao_BRB_Mobilidade.pdf#view=FitH" type="application/pdf" width="100%" height="700" aria-label="Termo de Consentimento Livre e Esclarecido (TCLE) em PDF">
  <p>Seu navegador não conseguiu exibir o PDF. Use o link acima para baixá-lo.</p>
</object>

*Fonte: elaborado pela equipe.*


## Tarefas e procedimentos de coleta

| Métricas | Procedimento executado |
| :--- | :--- |
| M1, M5 | P01 executou três tarefas (consultar o extrato, consultar o histórico de recargas e consultar uma linha e seu itinerário). Conclusão sem ajuda e erros registrados por autorrelato após a execução |
| M2 | Consulta de linha com os mesmos pontos de início e fim para P01 e P02, sem dicas de navegação; o tempo de P01 é a referência de usuário experiente |
| M3 | Questionário SUS aplicado somente a P01, com redação adaptada em português |
| M4 | Inspeção da ampliação de fonte do sistema e triagem de contraste em vídeo |
| M6 | Cinco casos de entradas inválidas: valor vazio, R$ 2,69, R$ 350,01, cartão vazio e par cartão/CPF incompatível |
| M7, M8 | Inventário de 14 funções e treze verificações funcionais de consultas, geração e cópia do código Pix, estados de recarga, acesso a formulários e preservação das informações após reabertura |
| M9, M10 | Uma recarga real de R$ 2,70, com conferência do total e do estado da solicitação; uma viagem conhecida conferida no extrato. Para M10, medição de 1 s documentada segundo P01, sem análise independente do registro original |
| M11, M12 | Uma observação por operação e por rede (Wi-Fi e dados móveis), separando a espera pelo resultado da digitação e da escolha de opções |
| M13 | Perda de conexão com retorno da rede; reabertura após encerramento como evidência complementar |
| M14 | Rodada normal de extrato, histórico e itinerário, com limite de observação de 30 s |
| M15 | Três tentativas de acesso em uma janela, por volta de 13h30 de 23/10/2026 |

*Tabela 3: Procedimentos de coleta por métrica. Fonte: elaborado pela equipe.*

Os quatro vídeos publicados correspondem a TE01–TE04, de extrato e geração Pix em Wi-Fi e dados móveis. Os tempos de mapa e linha em dados móveis (TE07 e TE08) foram informados por P01 como iguais aos de Wi-Fi, sem nova gravação analisada. O [índice das evidências](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/README.md) apresenta a ligação entre os registros e M1–M15.

### Massa de Dados Definida e Justificada

- **Massa de Dados Definida:** 
  - **Recarga Financeira:** Operação padronizada via Pix no valor fixo de R$ 2,70 (valor de tarifa de transporte público).
  - **Entradas Inválidas:** Conjunto padronizado de 5 cenários de erro (valor vazio, R$ 2,69, R$ 350,01, número de cartão vazio e incompatibilidade entre CPF e cartão).
  - **Escopo de Funcionalidades:** Inventário delimitado a 14 funções mapeadas no aplicativo e 1 linha de ônibus de referência para testes de consulta e navegação.
- **Justificativa da Massa de Dados:** A seleção delimita os casos avaliados e evita custos com múltiplas recargas. Na comparação de consulta de linha, foram mantidos os mesmos marcos de início e fim, sem dicas de navegação; as condições ambientais não foram integralmente controladas.

## Aplicação da SUS (M3)

A *System Usability Scale* (SUS) é a única métrica da questão Q2 (O1), que pergunta como os passageiros percebem a facilidade de uso do BRB Mobilidade. Ela complementa a eficácia e a eficiência de Q1 (M1, M2) e os erros de Q4 (M5), porque capta a percepção, e não o comportamento observado.

**Instrumento e escala.** São dez afirmações respondidas em escala de 1 (discordo totalmente) a 5 (concordo totalmente). Os itens ímpares são positivos e os pares, negativos. Em tradução livre:

1. Acho que gostaria de usar o sistema com frequência.
2. Achei-o desnecessariamente complexo.
3. Achei-o fácil de usar.
4. Acho que precisaria de ajuda de uma pessoa com conhecimento técnico para usá-lo.
5. Achei que as funções estavam bem integradas.
6. Achei que havia inconsistência demais.
7. Imagino que a maioria das pessoas aprenderia a usá-lo rapidamente.
8. Achei-o muito trabalhoso de usar.
9. Senti-me muito confiante ao usá-lo.
10. Precisei aprender várias coisas antes de conseguir usá-lo.

**Cálculo.** Cada item vale de 0 a 4 pontos: nos ímpares, a resposta menos 1; nos pares, 5 menos a resposta. A soma, de 0 a 40, é multiplicada por 2,5:

> SUS = 2,5 × [ soma dos itens ímpares (resposta − 1) + soma dos itens pares (5 − resposta) ]

O resultado vai de 0 a 100, mas não é um percentual. Ele é comparado com a referência de 68 pontos da literatura e com as faixas dos [níveis de pontuação](../fase-2/niveis-pontuacao.md): insuficiente abaixo de 51, satisfatório de 51 a 67,9, bom de 68 a 79,9 e excelente a partir de 80. Com mais de um respondente por perfil, calcula-se a pontuação de cada um e depois a média por perfil.

**Planejado e executado.** O plano previa aplicar a SUS logo após as tarefas, a pelo menos três respondentes por perfil. O questionário foi respondido apenas por P01, que também executou os testes e já conhecia o aplicativo, com redação adaptada e sem tradução previamente validada. A pontuação (37 × 2,5 = 92,5) não representa o perfil sem experiência. As respostas estão em [respostas_sus.csv](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/blob/main/evidencias/gqm/respostas_sus.csv); a aplicação a P02 e a outros participantes permanece pendente.

## Cronograma

| # | Atividade | Métricas | Período | Esforço estimado (h) | Saída no repositório |
| :-: | :--- | :--- | :--- | :-: | :--- |
| E1 | Entrega 1: Fases 1 e 2, GitPage, tabela de contribuição e release E1 | — | 22/10/2026 | — | Release E1 |
| 1 | Definir o método e as instruções ao avaliador; montar o cronograma e verificar a consistência com a Fase 2 | M1–M15 | 22/10/2026 | 5 | Método, roteiros e cronograma |
| 2 | Preparar ambiente e massa de dados (conta, saldo inicial, entradas inválidas, rede limitada) | M5–M14 | 23/10/2026 | 3 | Registro do ambiente |
| 3 | Sessões com participantes (tarefas e SUS) | M1–M3, M5 | 23/10/2026 | 3 | Gravações e formulários |
| 4 | Testes funcionais, de desempenho e de falhas | M4, M6–M14 | 23/10/2026 | 5 | Planilhas e capturas |
| 5 | Ampliar futuramente a sondagem para três janelas | M15 | Proposta, não executada | 4 | Planilha de sondagem |
| 6 | Consolidar dados, calcular métricas, julgar e definir ações de melhoria (Fase 4) | M1–M15, O1–O4 | 23/10/2026 | 2 | Scripts, planilhas e [Fase 4](../fase-4/index.md) |
| 7 | Executar a ação de melhoria | A1, A2 | 15/11/2026 | 4 | Entrega técnica |
| 8 | Corrigir os pontos indicados no Ponto de Controle 1 | Conforme as correções | 29/10/2026 | 6 | Commits e issues fechadas |
| 9 | Fechar artigo, GitPage e release E2 | Todas | 20/11/2026 | 2 | Release E2 |
| 10 | Preparar e realizar a apresentação do trabalho final | Todas | 21/11/2026 | 3 | Slides no repositório |

*Tabela 4: Cronograma do projeto, da Entrega 1 até a apresentação final. Fonte: elaborado pela equipe.*

A consolidação usou a coleta efetiva, incluindo somente a janela de disponibilidade de 23/10/2026; a ampliação da sondagem permanece proposta.

## Adaptações em relação à especificação

- O checklist de acessibilidade ficou incompleto: área de toque e leitor de tela não foram avaliados.
- A comparação entre redes usou dados móveis sem limitação controlada de banda.
- A sondagem de disponibilidade foi feita em uma única janela, em vez de diferentes horários.
- Houve uma observação por operação e condição de rede, sem estimativa de variabilidade nem percentil 90.
- Não foram fixados mínimos de observação antes da coleta.

Por isso, na [Fase 4](../fase-4/index.md), as faixas de pontuação são aplicadas apenas de forma descritiva, restrita às amostras observadas.

O protocolo ampliado apresentado no artigo é uma proposta para eventual extensão da avaliação, formalizada após a coleta exploratória. Seus mínimos de participantes, repetições e janelas não são apresentados como já executados nesta coleta.

---

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 25/10/2026 | Ambiente, participantes, procedimentos e adaptações, a partir da Seção VI do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | [Letícia Lopes](https://github.com/leticialopes20)|
| 1.1 | 11/11/2026 | Recurso, Ambiente e Massa de Dados a partir do artigo  | [Daniel Sousa](https://github.com/daniel-de-sousa) | [Arthur Fernandes](https://github.com/arthurfernandesj) |
| 1.2 | 12/11/2026 | Adicionando pasta do arquivos e o termo TCLE em PDF e Word | [Arthur Fernandes](https://github.com/arthurfernandesj) | [Hauedy Wegner](https://github.com/HauedyWS) |
| 1.3 | 15/11/2026 | Alinhamento dos procedimentos e da origem das evidências GQM com o artigo | [Lucas Branco](https://github.com/lucasbbranco) | [Letícia Lopes](https://github.com/leticialopes20) |
| 1.4 | 17/11/2026 | Adiciona a exibição do TCLE em PDF diretamente na página, mantendo os links de download | [Letícia Lopes](https://github.com/leticialopes20) | [Hauedy Wegner](https://github.com/HauedyWS) |
| 1.5 | 24/11/2026 | Aplicação da SUS e cronograma, a partir das Seções VI-D e VI-I da versão final do artigo | [Hauedy Wegner](https://github.com/HauedyWS) |[Letícia Lopes](https://github.com/leticialopes20)  |
