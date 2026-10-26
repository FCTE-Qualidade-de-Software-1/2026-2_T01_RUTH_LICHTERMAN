# Gráfico GQM

A Figura 1 mostra a hierarquia completa da avaliação: quatro [objetivos](objetivos.md) (nível conceitual), doze [questões](questoes.md) (nível operacional) e quinze [métricas](metricas.md) (nível quantitativo). A Tabela 1, logo abaixo, traz a mesma hierarquia em texto.

*Figura 1: Hierarquia GQM da avaliação do BRB Mobilidade.*

```mermaid
flowchart LR
    accTitle: Estrutura GQM da avaliação, de objetivos a métricas
    accDescr {
        Fluxograma da esquerda para a direita com três níveis: objetivos (conceitual), questões (operacional) e métricas (quantitativo). Cada objetivo se desdobra em questões, e cada questão em métricas.
        O1, Capacidade de interação, tem quatro questões. Q1, conclusão e tempo de tarefas, mede M1 taxa de conclusão de tarefas e M2 razão de tempo por tarefa. Q2, facilidade de uso percebida, mede M3 pontuação SUS. Q3, inclusividade e assistência, mede M4 checklist de acessibilidade. Q4, prevenção de erros, mede M5 erros por tarefa e M6 tratamento de entradas inválidas.
        O2, Adequação funcional, tem quatro questões. Q5, funções previstas presentes, mede M7 completude funcional. Q6, resultados esperados, mede M8 corretude funcional. Q7, coerência das informações, mede M9 divergências entre informações. Q8, saldo atualizado no prazo, mede M10 saldo atualizado em até 60 segundos.
        O3, Eficiência de desempenho, tem uma questão. Q9, tempo de resposta adequado, mede M11 tempo médio de resposta e M12 degradação em rede limitada.
        O4, Confiabilidade, tem três questões. Q10, recuperação de interrupções, mede M13 taxa de recuperação após falha. Q11, frequência de falhas, mede M14 taxa de falhas por operação. Q12, disponibilidade dos serviços, mede M15 disponibilidade observada.
    }
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

*Fonte: elaborado pela equipe.*

*Tabela 1: Matriz de rastreabilidade objetivo, questão e métrica.*

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

*Fonte: elaborado pela equipe.*

---

## Visão Geral 

De forma geral, o diagrama GQM permite visualizar como a avaliação da qualidade do BRB Mobilidade foi estruturada, estabelecendo uma relação entre os objetivos definidos, as questões que orientam a investigação e as métricas utilizadas para mensurar os resultados. Essa organização possibilita que cada característica avaliada seja analisada de maneira sistemática, com critérios observáveis e quantificáveis. Assim, as métricas fornecem dados que ajudam a responder às questões propostas e, consequentemente, a verificar o alcance dos objetivos da avaliação. Dessa forma, o modelo contribui para uma análise mais organizada e fundamentada da qualidade do aplicativo, considerando aspectos relacionados à interação, à adequação funcional, à eficiência de desempenho e à confiabilidade.

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 21/10/2026 | Gráfico GQM completo e matriz de rastreabilidade | [Hauedy Wegner](https://github.com/HauedyWS) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
| 1.1 | 25/10/2026 | Gráfico com quatro objetivos, conforme a Figura 2 da versão atual do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
| 1.2 | 26/10/2026 |Adiciona texto alternativo no diagrama e faz pequenos ajustes | [Letícia Lopes](https://github.com/leticialopes20) | [Giovana Fontes](https://github.com/GiovanaFontesS) |