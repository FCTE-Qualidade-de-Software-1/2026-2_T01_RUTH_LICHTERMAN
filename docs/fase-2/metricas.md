# Métricas

*Nível quantitativo.* Cada métrica responde a uma [questão](questoes.md) e é documentada com definição, procedimento de cálculo, fonte dos dados, procedimento de coleta e critério de interpretação. As faixas numéricas de cada métrica estão em [Níveis de pontuação](niveis-pontuacao.md). As métricas **críticas** (M8, M9, M10 e M14) tratam de dinheiro ou de falha de operação e limitam o julgamento do objetivo. O alcance do que foi efetivamente executado em cada métrica está na [Fase 3](../fase-3/index.md).

## O1 — Capacidade de interação

| Métrica | Definição e cálculo | Fonte dos dados | Procedimento de coleta | Interpretação |
| :--- | :--- | :--- | :--- | :--- |
| M1 Taxa de conclusão de tarefas (Q1) | Tarefas concluídas sem ajuda: (concluídas sem ajuda ÷ tentadas) × 100 | Relato das execuções de cada participante | Registrar ajuda e conclusão por participante em cada tarefa | Maior é melhor (%) |
| M2 Razão de tempo por tarefa (Q1) | Tempo do participante em relação ao experiente: média de (t ÷ t_ref) nas tarefas concluídas | Gravações das tarefas | Cronometrar com os mesmos marcos de início e fim para todos, sem dicas de navegação; o tempo do participante experiente é a referência | Menor é melhor (razão) |
| M3 Pontuação SUS (Q2) | Ímpares: resposta − 1; pares: 5 − resposta; soma × 2,5 [1] | Questionário SUS, em português | Aplicar as dez questões ao fim do uso | Maior é melhor (0 a 100; 68 é a referência [2]) |
| M4 Checklist de acessibilidade (Q3) | (itens atendidos ÷ itens aplicáveis) × 100, quando o checklist estiver completo | Telas do aplicativo e recursos de acessibilidade do sistema | Inspeção com checklist derivado da WCAG 2.1 [3]: ampliação de fonte do sistema, contraste, área de toque e leitor de tela | Maior é melhor (%) |
| M5 Erros por tarefa (Q4) | Erros de operação: total de erros ÷ tarefas tentadas | Relato do participante na rodada normal | Contar ações incorretas; exploração e retorno sem erro não contam automaticamente | Menor é melhor (erros por tarefa) |
| M6 Tratamento de entradas inválidas (Q4) | Entradas inválidas bloqueadas com orientação: (casos atendidos ÷ testados) × 100 | Respostas do aplicativo a entradas inválidas | Testar cinco casos (valor vazio, abaixo e acima dos limites, cartão vazio e par cartão/CPF incompatível) e registrar bloqueio e mensagem | Maior é melhor (%) |

*Tabela 1: Métricas de capacidade de interação. Fonte: elaborado pela equipe.*

## O2 — Adequação funcional

| Métrica | Definição e cálculo | Fonte dos dados | Procedimento de coleta | Interpretação |
| :--- | :--- | :--- | :--- | :--- |
| M7 Completude funcional (Q5) | (funções disponíveis ÷ funções do inventário) × 100 | Inventário de 14 funções, derivado da [descrição do produto](../fase-1/1-descricao.md) | Conferir cada função no aplicativo, distinguindo presença, encaminhamento externo e função não verificada | Maior é melhor (%) |
| M8 Corretude funcional (Q6), **crítica** | (casos aprovados ÷ executados) × 100, no escopo de cada caso | Verificações funcionais de consultas, formulários e recargas | Executar as verificações e registrar o resultado; a abertura de uma tela não comprova a conclusão integral do fluxo | Maior é melhor (%) |
| M9 Divergências entre informações (Q7), **crítica** | Contagem de divergências, conferindo saldo anterior + recargas − usos = saldo atual | Total, histórico e extrato do aplicativo | Conferir as informações antes e depois das operações, incluindo uma viagem conhecida | Menor é melhor (esperado: zero) |
| M10 Atualização em até 60 s (Q8), **crítica** | (recargas atualizadas no limite ÷ realizadas) × 100 | Comprovante do Pix e saldo no aplicativo | Registrar o intervalo entre a confirmação do Pix e o crédito aparecer no aplicativo | Maior é melhor (%) |

*Tabela 2: Métricas de adequação funcional. Fonte: elaborado pela equipe.*

## O3 — Eficiência de desempenho

| Métrica | Definição e cálculo | Fonte dos dados | Procedimento de coleta | Interpretação |
| :--- | :--- | :--- | :--- | :--- |
| M11 Tempo médio de resposta (Q9) | Tempo entre o comando e o resultado completo; média por operação, com percentil 90 como complemento previsto | Vídeos de consultas e da geração do código Pix | Cronometrar a espera pelo resultado, separada da digitação e da escolha de opções | Menor é melhor (s; cerca de 1 s preserva o fluxo do usuário e 10 s é o limite da atenção [4]) |
| M12 Degradação em rede limitada (Q9) | Razão entre os tempos médios em rede limitada e em Wi-Fi, para a mesma operação | Mesmas medições de M11 | Repetir as operações de M11 em rede limitada | Menor é melhor (razão) |

*Tabela 3: Métricas de eficiência de desempenho. Fonte: elaborado pela equipe.*

## O4 — Confiabilidade

| Métrica | Definição e cálculo | Fonte dos dados | Procedimento de coleta | Interpretação |
| :--- | :--- | :--- | :--- | :--- |
| M13 Taxa de recuperação após falha (Q10) | (cenários que informam o problema e permitem retomar sem perda ou duplicidade ÷ cenários provocados) × 100 | Cenários de falha provocados | Provocar perda de conexão e retorno da rede; usar a reabertura após encerramento como evidência complementar, distinguindo retomada de aviso de erro | Maior é melhor (%) |
| M14 Taxa de falhas por operação (Q11), **crítica** | Falhas espontâneas: (operações com falha ÷ operações executadas) × 100 | Rodada normal de extrato, histórico e itinerário | Observar cada operação por até 30 s; excluir interrupções provocadas e rejeições esperadas | Menor é melhor (%) |
| M15 Disponibilidade observada (Q12) | (tentativas bem-sucedidas ÷ tentativas) × 100 | Tentativas de acesso às funções principais | Registrar data, horário e resultado de cada tentativa | Maior é melhor (%; vale só para as janelas observadas) |

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
| 2.0 | 25/10/2026 | Métricas agrupadas por objetivo (O1 a O4) e procedimentos atualizados conforme a versão atual do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | |
