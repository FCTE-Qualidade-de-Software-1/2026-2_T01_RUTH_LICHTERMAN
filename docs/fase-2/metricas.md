# Métricas

*Nível quantitativo.* Cada métrica responde a uma [questão](questoes.md) e é documentada com definição, procedimento de cálculo, fonte dos dados, procedimento de coleta e critério de interpretação. As faixas de cada métrica estão em [Níveis de pontuação](niveis-pontuacao.md). As métricas marcadas como **críticas** tratam de dinheiro ou de falha de operação e limitam o julgamento do objetivo. Os roteiros, formulários e o ambiente de coleta serão detalhados na Fase 3.

## Usabilidade (O1, O2, O3)

| Métrica | Definição | Cálculo | Fonte dos dados | Procedimento de coleta | Interpretação |
| :--- | :--- | :--- | :--- | :--- | :--- |
| M1 Taxa de conclusão de tarefas (Q1) | Tarefas-alvo concluídas sem ajuda do avaliador | (concluídas sem ajuda ÷ tentadas) × 100 | Sessões com participantes: registro do observador e gravação de tela | Participante executa o roteiro (recarregar, ver saldo, ver extrato, bloquear cartão, buscar linha) sem ajuda | Maior é melhor (%) |
| M2 Razão de tempo por tarefa (Q1) | Tempo do participante em relação ao de um integrante experiente (1 = igual) | média de (tempo do participante ÷ tempo de referência) nas tarefas concluídas | Gravações das sessões e tempo de referência de um integrante experiente | Cronometragem a partir das gravações | Menor é melhor (razão) |
| M3 Pontuação SUS (Q2) | Usabilidade percebida, medida pelo questionário SUS [1] | ímpares: resposta − 1; pares: 5 − resposta; soma × 2,5; média dos participantes | Questionário SUS em português | Aplicado ao fim de cada sessão | Maior é melhor (0 a 100; 68 é a média de referência [2]) |
| M4 Conformidade com checklist de acessibilidade (Q3) | Itens atendidos nas telas principais: contraste, área de toque, rótulos para leitor de tela, ampliação de texto e não depender só da cor | (itens atendidos ÷ itens aplicáveis) × 100 | Telas principais do aplicativo e leitor de tela do sistema | Inspeção pelos avaliadores com checklist derivado da WCAG 2.1 [3] | Maior é melhor (%) |
| M5 Erros por tarefa (Q4) | Ações que desviam do caminho previsto: opção errada, dado inválido, retorno de tela | total de erros ÷ tarefas tentadas | Gravações e registro do observador | Contagem com os critérios definidos no roteiro | Menor é melhor (erros por tarefa) |
| M6 Tratamento de entradas inválidas (Q4) | Entradas inválidas bloqueadas com mensagem que indica o campo e o motivo | (casos tratados ÷ casos testados) × 100 | Respostas do aplicativo a entradas inválidas | Avaliadores testam CPF inválido, cartão inexistente, valor fora do permitido e campo vazio | Maior é melhor (%) |

*Tabela 1: Métricas de usabilidade. Fonte: elaborado pela equipe.*

## Adequação funcional (O4, O5)

| Métrica | Definição | Cálculo | Fonte dos dados | Procedimento de coleta | Interpretação |
| :--- | :--- | :--- | :--- | :--- | :--- |
| M7 Completude funcional (Q5) | Funções do inventário disponíveis no aplicativo | (disponíveis ÷ inventário) × 100 | Inventário de funções montado com a [descrição do produto](../fase-1/1-descricao.md) | Verificação de cada função do inventário no aplicativo | Maior é melhor (%) |
| M8 Corretude funcional (Q6), **crítica** | Casos de teste com resultado igual ao esperado | (aprovados ÷ executados) × 100 | Casos de teste por função | Execução pela equipe, com registro em planilha | Maior é melhor (%) |
| M9 Divergências entre informações (Q7), **crítica** | Inconsistências entre saldo, histórico e extrato após cada operação | contagem, conferindo saldo anterior + recargas − usos = saldo atual | Capturas de tela de saldo, histórico e extrato | Captura antes e depois de cada operação e conferência em planilha | Menor é melhor (esperado: zero) |
| M10 Saldo atualizado em até 60 s (Q8), **crítica** | Recargas Pix com saldo atualizado até 60 s após a confirmação do pagamento | (atualizadas em até 60 s ÷ realizadas) × 100 | Comprovante do Pix e tela de saldo | Registro do horário do comprovante e do horário em que o saldo muda | Maior é melhor (%) |

*Tabela 2: Métricas de adequação funcional. Fonte: elaborado pela equipe.*

## Eficiência de desempenho (O6)

| Métrica | Definição | Cálculo | Fonte dos dados | Procedimento de coleta | Interpretação |
| :--- | :--- | :--- | :--- | :--- | :--- |
| M11 Tempo médio de resposta (Q9) | Tempo entre o comando e a exibição completa do resultado (consultas e geração do código Pix) | média dos tempos por operação (s), com percentil 90 como complemento | Gravações de tela em Wi-Fi | Cronometragem de cada operação a partir das gravações | Menor é melhor (s; cerca de 1 s preserva o fluxo do usuário e 10 s é o limite da atenção [4]) |
| M12 Razão de degradação em rede limitada (Q9) | Variação do tempo de resposta em rede móvel limitada em relação ao Wi-Fi | tempo médio em rede limitada ÷ tempo médio em Wi-Fi, nas operações de M11 | Mesmas medições de M11 | Repetição das operações de M11 com limitação de banda | Menor é melhor (razão) |

*Tabela 3: Métricas de eficiência de desempenho. Fonte: elaborado pela equipe.*

## Confiabilidade (O7, O8)

| Métrica | Definição | Cálculo | Fonte dos dados | Procedimento de coleta | Interpretação |
| :--- | :--- | :--- | :--- | :--- | :--- |
| M13 Taxa de recuperação após falha (Q10) | Falhas provocadas (perda de conexão, fechamento forçado, bloqueio de tela) em que o aplicativo informa e permite retomar sem perda ou duplicidade | (recuperadas ÷ provocadas) × 100 | Roteiro de cenários de falha | Execução dos cenários pela equipe, com captura de tela | Maior é melhor (%) |
| M14 Taxa de falhas por operação (Q11), **crítica** | Operações que terminam em falha: fechamento inesperado, tela de erro ou sem resposta | (operações com falha ÷ executadas) × 100 | Registro consolidado de todas as sessões e testes | Anotação de cada operação e do seu desfecho | Menor é melhor (%) |
| M15 Disponibilidade observada (Q12) | Tentativas de acesso às funções principais bem-sucedidas nas janelas de amostragem | (bem-sucedidas ÷ tentativas) × 100 | Sondagens às funções principais | Tentativas pela manhã, no pico da tarde e à noite, registradas em planilha | Maior é melhor (%; vale só para o período observado) |

*Tabela 4: Métricas de confiabilidade. Fonte: elaborado pela equipe.*

## Referências

> [1] BROOKE, J. SUS: a quick and dirty usability scale. In: JORDAN, P. W. et al. (ed.). *Usability Evaluation in Industry*. London: Taylor & Francis, 1996. p. 189–194.

> [2] BANGOR, A.; KORTUM, P. T.; MILLER, J. T. An empirical evaluation of the System Usability Scale. *International Journal of Human–Computer Interaction*, v. 24, n. 6, p. 574–594, 2008.

> [3] W3C. *Web Content Accessibility Guidelines (WCAG) 2.1*. W3C Recommendation, 2018. Disponível em: <https://www.w3.org/TR/WCAG21/>.

> [4] NIELSEN, J. *Usability Engineering*. San Diego: Academic Press, 1993.

---

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 21/10/2026 | Métricas M1 a M15 a partir do artigo, com fonte dos dados e coleta separadas | [Hauedy Wegner](https://github.com/HauedyWS) | |
