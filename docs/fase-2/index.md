# Fase 2 — Especificação da Avaliação

Nesta fase, a equipe especifica **como** a qualidade do BRB Mobilidade será medida, seguindo a atividade "especificar a avaliação" da ISO/IEC 25040 [1]. A especificação usa o método GQM (*Goal–Question–Metric*) [2], que organiza a medição em três níveis:

- **Conceitual:** os [objetivos de medição](objetivos.md), cada um derivado de uma característica priorizada na Fase 1;
- **Operacional:** as [questões](questoes.md) que caracterizam cada objetivo e as [hipóteses](hipoteses.md) com o resultado esperado;
- **Quantitativo:** as [métricas](metricas.md) que respondem às questões, com [níveis de pontuação e critérios de julgamento](niveis-pontuacao.md).

A hierarquia completa está no [gráfico GQM](grafico-gqm.md).

## Resumo

| Característica (ISO/IEC 25010:2023) | Objetivos | Questões | Métricas |
| :--- | :--- | :--- | :--- |
| Usabilidade | O1, O2, O3 | Q1 a Q4 | M1 a M6 |
| Adequação funcional | O4, O5 | Q5 a Q8 | M7 a M10 |
| Eficiência de desempenho | O6 | Q9 | M11, M12 |
| Confiabilidade | O7, O8 | Q10 a Q12 | M13 a M15 |
| **Total** | **8** | **12** | **15** |

*Tabela 1: Estrutura da especificação por característica. Fonte: elaborado pela equipe.*

## Consistência com a Fase 1

Cada objetivo de medição deriva de uma característica priorizada no [modelo de qualidade](../fase-1/3-modelo.md), e o ponto de vista de cada objetivo vem das [partes interessadas](../fase-1/2-proposito.md#4-partes-interessadas) da Fase 1. As subcaracterísticas usadas como foco de qualidade são as mesmas do modelo.

| Característica (prioridade na Fase 1) | Por que foi priorizada | Objetivo de medição | Ponto de vista |
| :--- | :--- | :--- | :--- |
| Usabilidade (1) | Público diverso em idade e familiaridade digital; o aplicativo substitui o atendimento presencial | O1, O2, O3 | Passageiro |
| Adequação funcional (2) | O aplicativo movimenta dinheiro e informa saldo; erro gera prejuízo direto | O4, O5 | Passageiro e gestor do serviço |
| Eficiência de desempenho (3) | Consultas feitas em deslocamento, muitas vezes com rede móvel limitada | O6 | Passageiro |
| Confiabilidade (4) | Falhas ou indisponibilidade no momento do embarque impedem o uso | O7, O8 | Passageiro e gestor do serviço |

*Tabela 2: Rastreabilidade entre a Fase 1 e os objetivos da Fase 2. Fonte: elaborado pela equipe.*

Na eficiência de desempenho, a especificação trata apenas do comportamento temporal. Utilização de recursos e capacidade exigiriam instrumentação do dispositivo e carga controlada; esses aspectos ficam como extensão, caso a Fase 3 mostre que são viáveis.

## Limitações

A equipe acessa o aplicativo apenas como usuário final, sem código-fonte nem registros internos. Por isso, as métricas se baseiam em observação, testes e sessões com participantes. A amostra será pequena, e disponibilidade e desempenho valem apenas para o período de testes, sem representar o serviço como um todo. Os detalhes de coleta (roteiros, formulários, ambiente e cronograma) serão definidos na Fase 3.

## Referências

> [1] ISO/IEC. *ISO/IEC 25040:2011 – SQuaRE – Evaluation process*. Genebra: ISO, 2011.

> [2] BASILI, V. R.; CALDIERA, G.; ROMBACH, H. D. The goal question metric approach. In: *Encyclopedia of Software Engineering*, v. 1. John Wiley & Sons, 1994. p. 528–532.

---

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 21/10/2026 | Visão geral da Fase 2 e rastreabilidade com a Fase 1, a partir do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | |
