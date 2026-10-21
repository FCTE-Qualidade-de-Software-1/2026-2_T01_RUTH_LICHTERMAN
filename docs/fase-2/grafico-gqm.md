# Gráfico GQM

A Figura 1 mostra a hierarquia completa da avaliação: oito [objetivos](objetivos.md) (nível conceitual), doze [questões](questoes.md) (nível operacional) e quinze [métricas](metricas.md) (nível quantitativo). A Tabela 1, logo abaixo, traz a mesma hierarquia em texto.

```mermaid
flowchart LR
    subgraph C["Nível conceitual (objetivos)"]
        direction TB
        O1["O1 Facilidade de uso"]
        O2["O2 Acessibilidade"]
        O3["O3 Prevenção de erros do usuário"]
        O4["O4 Correção e completude"]
        O5["O5 Consistência das informações"]
        O6["O6 Tempo de resposta"]
        O7["O7 Estabilidade e recuperação"]
        O8["O8 Disponibilidade dos serviços"]
    end
    subgraph Q["Nível operacional (questões)"]
        direction TB
        Q1["Q1 Eficácia e eficiência nas tarefas"]
        Q2["Q2 Percepção de facilidade de uso"]
        Q3["Q3 Acessibilidade básica"]
        Q4["Q4 Prevenção e tratamento de erros"]
        Q5["Q5 Funções previstas presentes"]
        Q6["Q6 Resultados esperados"]
        Q7["Q7 Coerência entre saldo, histórico e extrato"]
        Q8["Q8 Saldo atualizado no prazo"]
        Q9["Q9 Tempo de resposta adequado"]
        Q10["Q10 Recuperação após interrupções"]
        Q11["Q11 Frequência de falhas"]
        Q12["Q12 Disponibilidade dos serviços"]
    end
    subgraph M["Nível quantitativo (métricas)"]
        direction TB
        M1["M1 Taxa de conclusão de tarefas"]
        M2["M2 Razão de tempo por tarefa"]
        M3["M3 Pontuação SUS"]
        M4["M4 Conformidade com checklist de acessibilidade"]
        M5["M5 Erros por tarefa"]
        M6["M6 Tratamento de entradas inválidas"]
        M7["M7 Completude funcional"]
        M8["M8 Corretude funcional"]
        M9["M9 Divergências entre informações"]
        M10["M10 Saldo atualizado em até 60 s"]
        M11["M11 Tempo médio de resposta"]
        M12["M12 Razão de degradação em rede limitada"]
        M13["M13 Taxa de recuperação após falha"]
        M14["M14 Taxa de falhas por operação"]
        M15["M15 Disponibilidade observada"]
    end
    O1 --> Q1 & Q2
    O2 --> Q3
    O3 --> Q4
    O4 --> Q5 & Q6
    O5 --> Q7 & Q8
    O6 --> Q9
    O7 --> Q10 & Q11
    O8 --> Q12
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

| Característica | Objetivo | Questão | Métricas |
| :--- | :--- | :--- | :--- |
| Usabilidade | O1 Facilidade de uso | Q1 Eficácia e eficiência nas tarefas | M1, M2 |
| Usabilidade | O1 Facilidade de uso | Q2 Percepção de facilidade de uso | M3 |
| Usabilidade | O2 Acessibilidade | Q3 Acessibilidade básica | M4 |
| Usabilidade | O3 Prevenção de erros do usuário | Q4 Prevenção e tratamento de erros | M5, M6 |
| Adequação funcional | O4 Correção e completude | Q5 Funções previstas presentes | M7 |
| Adequação funcional | O4 Correção e completude | Q6 Resultados esperados | M8 |
| Adequação funcional | O5 Consistência das informações | Q7 Coerência entre saldo, histórico e extrato | M9 |
| Adequação funcional | O5 Consistência das informações | Q8 Saldo atualizado no prazo | M10 |
| Eficiência de desempenho | O6 Tempo de resposta | Q9 Tempo de resposta adequado | M11, M12 |
| Confiabilidade | O7 Estabilidade e recuperação | Q10 Recuperação após interrupções | M13 |
| Confiabilidade | O7 Estabilidade e recuperação | Q11 Frequência de falhas | M14 |
| Confiabilidade | O8 Disponibilidade dos serviços | Q12 Disponibilidade dos serviços | M15 |

*Tabela 1: Matriz de rastreabilidade objetivo, questão e métrica. Fonte: elaborado pela equipe.*

---

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 21/10/2026 | Gráfico GQM completo e matriz de rastreabilidade | [Hauedy Wegner](https://github.com/HauedyWS) | |
