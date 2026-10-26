# Gráfico GQM

A Figura 1 mostra a hierarquia completa da avaliação: quatro [objetivos](objetivos.md) (nível conceitual), doze [questões](questoes.md) (nível operacional) e quinze [métricas](metricas.md) (nível quantitativo). A Tabela 1, logo abaixo, traz a mesma hierarquia em texto.

```mermaid
flowchart LR
    subgraph C["Nível conceitual (objetivos)"]
        direction TB
        O1["O1 Capacidade de interação"]
        O2["O2 Adequação funcional"]
        O3["O3 Eficiência de desempenho"]
        O4["O4 Confiabilidade"]
    end
    subgraph Q["Nível operacional (questões)"]
        direction TB
        Q1["Q1 Conclusão e tempo de tarefas"]
        Q2["Q2 Facilidade de uso percebida"]
        Q3["Q3 Inclusividade e assistência"]
        Q4["Q4 Prevenção de erros"]
        Q5["Q5 Funções previstas presentes"]
        Q6["Q6 Resultados esperados"]
        Q7["Q7 Coerência das informações"]
        Q8["Q8 Saldo atualizado no prazo"]
        Q9["Q9 Tempo de resposta adequado"]
        Q10["Q10 Recuperação de interrupções"]
        Q11["Q11 Frequência de falhas"]
        Q12["Q12 Disponibilidade dos serviços"]
    end
    subgraph M["Nível quantitativo (métricas)"]
        direction TB
        M1["M1 Taxa de conclusão de tarefas"]
        M2["M2 Razão de tempo por tarefa"]
        M3["M3 Pontuação SUS"]
        M4["M4 Checklist de acessibilidade"]
        M5["M5 Erros por tarefa"]
        M6["M6 Tratamento de entradas inválidas"]
        M7["M7 Completude funcional"]
        M8["M8 Corretude funcional"]
        M9["M9 Divergências entre informações"]
        M10["M10 Saldo atualizado em até 60 s"]
        M11["M11 Tempo médio de resposta"]
        M12["M12 Degradação em rede limitada"]
        M13["M13 Taxa de recuperação após falha"]
        M14["M14 Taxa de falhas por operação"]
        M15["M15 Disponibilidade observada"]
    end
    O1 --> Q1 & Q2 & Q3 & Q4
    O2 --> Q5 & Q6 & Q7 & Q8
    O3 --> Q9
    O4 --> Q10 & Q11 & Q12
    Q1 --> M1 & M2
    Q2 --> M3
    Q3 --> M4
    Q4 --> M5 & M6
    Q5 --> M7
    Q6 --> M8
    Q7 --> M9
    Q8 --> M10
    Q9 --> M11 & M12
    Q10 --> M13
    Q11 --> M14
    Q12 --> M15
```

*Figura 1: Hierarquia GQM da avaliação do BRB Mobilidade. Fonte: elaborado pela equipe.*

| Objetivo | Questão | Métricas |
| :--- | :--- | :--- |
| O1 Capacidade de interação | Q1 Conclusão e tempo de tarefas | M1, M2 |
| O1 Capacidade de interação | Q2 Facilidade de uso percebida | M3 |
| O1 Capacidade de interação | Q3 Inclusividade e assistência | M4 |
| O1 Capacidade de interação | Q4 Prevenção de erros | M5, M6 |
| O2 Adequação funcional | Q5 Funções previstas presentes | M7 |
| O2 Adequação funcional | Q6 Resultados esperados | M8 |
| O2 Adequação funcional | Q7 Coerência das informações | M9 |
| O2 Adequação funcional | Q8 Saldo atualizado no prazo | M10 |
| O3 Eficiência de desempenho | Q9 Tempo de resposta adequado | M11, M12 |
| O4 Confiabilidade | Q10 Recuperação de interrupções | M13 |
| O4 Confiabilidade | Q11 Frequência de falhas | M14 |
| O4 Confiabilidade | Q12 Disponibilidade dos serviços | M15 |

*Tabela 1: Matriz de rastreabilidade objetivo, questão e métrica. Fonte: elaborado pela equipe.*

---

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 21/10/2026 | Gráfico GQM completo e matriz de rastreabilidade | [Hauedy Wegner](https://github.com/HauedyWS) | |
| 2.0 | 25/10/2026 | Gráfico com quatro objetivos, conforme a Figura 2 da versão atual do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | |
