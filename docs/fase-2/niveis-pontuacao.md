# Níveis de Pontuação e Critérios de Julgamento

## Níveis de pontuação

Cada [métrica](metricas.md) é classificada em quatro níveis, com pontuação de 0 a 3. O nível **Bom** corresponde ao valor esperado nas [hipóteses](hipoteses.md).

| Métrica | Insuficiente (0) | Satisfatório (1) | Bom (2) | Excelente (3) |
| :--- | :--- | :--- | :--- | :--- |
| M1 Conclusão de tarefas (%) | < 70 | 70 a 84,9 | 85 a 94,9 | ≥ 95 |
| M2 Razão de tempo | > 4 | > 3 e ≤ 4 | > 2 e ≤ 3 | ≤ 2 |
| M3 Pontuação SUS | < 51 | 51 a 67,9 | 68 a 79,9 | ≥ 80 |
| M4 Checklist de acessibilidade (%) | < 50 | 50 a 69,9 | 70 a 89,9 | ≥ 90 |
| M5 Erros por tarefa | > 1 | > 0,5 e ≤ 1 | > 0,2 e ≤ 0,5 | ≤ 0,2 |
| M6 Entradas inválidas tratadas (%) | < 60 | 60 a 79,9 | 80 a 94,9 | ≥ 95 |
| M7 Completude funcional (%) | < 75 | 75 a 89,9 | 90 a 99,9 | 100 |
| M8 Corretude funcional (%) | < 85 | 85 a 94,9 | 95 a 99,9 | 100 |
| M9 Divergências (nº) | ≥ 3 | 2 | 1 | 0 |
| M10 Atualização em até 60 s (%) | < 80 | 80 a 89,9 | 90 a 97,9 | ≥ 98 |
| M11 Tempo médio de resposta (s) | > 5 | > 3 e ≤ 5 | > 2 e ≤ 3 | ≤ 2 |
| M12 Degradação em rede limitada | > 4 | > 3 e ≤ 4 | > 2 e ≤ 3 | ≤ 2 |
| M13 Recuperação após falha (%) | < 50 | 50 a 69,9 | 70 a 89,9 | ≥ 90 |
| M14 Falhas por operação (%) | > 10 | > 5 e ≤ 10 | > 2 e ≤ 5 | ≤ 2 |
| M15 Disponibilidade observada (%) | < 90 | 90 a 94,9 | 95 a 98,9 | ≥ 99 |

*Tabela 1: Níveis de pontuação por métrica. Fonte: elaborado pela equipe.*

**Origem dos limiares.** Os limiares do SUS seguem a média de referência de 68 pontos da literatura [1]; os de tempo de resposta seguem os limites de 1 s e 10 s de Nielsen [2]. O limite de 60 s foi adotado como critério desta avaliação. Os demais limiares foram definidos pela equipe.

## Critérios de julgamento

O julgamento ocorre em três passos:

1. **Questão:** cada questão é comparada com a sua hipótese. A hipótese é **confirmada** se todas as métricas da questão estão no nível Bom ou acima, **parcialmente confirmada** se a pior está em Satisfatório e **refutada** se alguma está em Insuficiente. Nas questões Q1 a Q4, a interpretação é feita por perfil de passageiro.
2. **Objetivo:** a pontuação do objetivo é a média das pontuações das suas métricas.
3. **Característica:** como cada objetivo corresponde a uma característica, ela é julgada pela pontuação do seu objetivo.

| Pontuação do objetivo | Julgamento da característica |
| :--- | :--- |
| ≥ 2,5 | Atende |
| ≥ 1,5 e < 2,5 | Atende parcialmente |
| < 1,5 | Não atende |

*Tabela 2: Julgamento das características. Fonte: elaborado pela equipe.*

**Regras complementares:**

- **Métricas críticas.** M8, M9, M10 e M14 tratam de dinheiro ou de falha de operação. Se uma delas ficar em Insuficiente, o objetivo correspondente (O2 ou O4) é julgado como **não atende**, independentemente da média.
- **Métricas inconclusivas.** O plano prevê excluir da média as métricas sem observações suficientes ou com cobertura incompleta.

**Exemplo:** em O4, se M13 ficar em Bom (2), M14 em Satisfatório (1) e M15 em Excelente (3), a média é 2,0 e a confiabilidade atende parcialmente. Se M14 ficasse em Insuficiente, O4 seria julgado como não atende, qualquer que fosse a média.

Como não foram fixados mínimos de observação antes da coleta e a cobertura foi parcial, na execução as faixas foram aplicadas apenas de forma descritiva, sem média global dos objetivos (ver [Fase 4](../fase-4/index.md)).

## Referências

> [1] BANGOR, A.; KORTUM, P. T.; MILLER, J. T. An empirical evaluation of the System Usability Scale. *International Journal of Human–Computer Interaction*, v. 24, n. 6, p. 574–594, 2008.

> [2] NIELSEN, J. *Usability Engineering*. San Diego: Academic Press, 1993.

---

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 21/10/2026 | Níveis de pontuação e critérios de julgamento a partir do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | |
| 2.0 | 25/10/2026 | Julgamento da característica pelo seu objetivo e regras para métricas inconclusivas, conforme a versão atual do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | |
