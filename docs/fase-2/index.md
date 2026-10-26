# Fase 2 — Especificação da Avaliação

Nesta fase, a equipe especifica **como** a qualidade do BRB Mobilidade será medida, seguindo a atividade "especificar a avaliação" da ISO/IEC 25040 [1]. A especificação usa o método GQM (*Goal–Question–Metric*) [2], que organiza a medição em três níveis:

- **Conceitual:** os [objetivos de medição](objetivos.md), um para cada característica priorizada na Fase 1;
- **Operacional:** as [questões](questoes.md) que detalham cada objetivo e as [hipóteses](hipoteses.md) com o resultado esperado;
- **Quantitativo:** as [métricas](metricas.md) que respondem às questões, com [níveis de pontuação e critérios de julgamento](niveis-pontuacao.md).

A hierarquia completa está no [gráfico GQM](grafico-gqm.md).

## Resumo

| Característica (ISO/IEC 25010:2023) | Objetivo | Questões | Métricas |
| :--- | :--- | :--- | :--- |
| Capacidade de interação (*interaction capability*) | O1 | Q1 a Q4 | M1 a M6 |
| Adequação funcional (*functional suitability*) | O2 | Q5 a Q8 | M7 a M10 |
| Eficiência de desempenho (*performance efficiency*) | O3 | Q9 | M11, M12 |
| Confiabilidade (*reliability*) | O4 | Q10 a Q12 | M13 a M15 |
| **Total** | **4** | **12** | **15** |

*Tabela 1: Estrutura da especificação por característica. Fonte: elaborado pela equipe.*

## Consistência com a Fase 1

Cada característica priorizada no [modelo de qualidade](../fase-1/3-modelo.md) gera um objetivo de medição, e o ponto de vista dos objetivos (o passageiro) vem das [partes interessadas](../fase-1/2-proposito.md#4-partes-interessadas). As subcaracterísticas da Fase 1 são tratadas uma a uma nas questões. O relatório inicial da Fase 1 tinha mais objetivos (por exemplo, facilidade de uso, acessibilidade e prevenção de erros); esses aspectos agora aparecem como questões de um único objetivo por característica.

| Prioridade | Característica | Subcaracterísticas tratadas nas questões | Objetivo |
| :---: | :--- | :--- | :--- |
| 1 | Capacidade de interação | Reconhecibilidade de adequação, aprendibilidade, operabilidade e autodescritividade (Q1, Q2); inclusividade e assistência ao usuário (Q3); proteção contra erros do usuário (Q4) | O1 |
| 2 | Adequação funcional | Completude funcional (Q5); correção funcional (Q6 a Q8) | O2 |
| 3 | Eficiência de desempenho | Comportamento temporal (Q9) | O3 |
| 4 | Confiabilidade | Tolerância a falhas e recuperabilidade (Q10); ausência de falhas (Q11); disponibilidade (Q12) | O4 |

*Tabela 2: Rastreabilidade entre a Fase 1 e a Fase 2. Fonte: elaborado pela equipe.*

Na eficiência de desempenho, a especificação trata apenas do comportamento temporal; utilização de recursos e capacidade exigiriam instrumentação do dispositivo e carga controlada e ficam como extensão. O engajamento do usuário não é avaliado.

## Limitações

A equipe acessa o aplicativo apenas como usuário final, sem código-fonte nem registros internos, e a amostra de participantes é pequena. Disponibilidade e desempenho valem apenas para o período observado. Os procedimentos efetivamente executados estão na [Fase 3](../fase-3/index.md).

## Referências

> [1] ISO/IEC. *ISO/IEC 25040:2011 – Systems and software engineering – SQuaRE – Evaluation process*. Genebra: ISO, 2011.

> [2] BASILI, V. R.; CALDIERA, G.; ROMBACH, H. D. The goal question metric approach. In: *Encyclopedia of Software Engineering*, v. 1. John Wiley & Sons, 1994. p. 528–532.

---

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 21/10/2026 | Visão geral da Fase 2 e rastreabilidade com a Fase 1, a partir do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
| 2.0 | 25/10/2026 | Atualização para quatro objetivos (O1 a O4) e nomenclatura da ISO/IEC 25010:2023, conforme a versão atual do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
