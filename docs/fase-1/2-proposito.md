# Propósito, Justificativa e Objetivos

## 1. Problema e justificativa

Aplicativos de transporte público precisam oferecer funcionalidades adequadas às necessidades dos usuários. No BRB Mobilidade, a utilidade depende de operações corretas, informações claras, navegação simples e acesso disponível, e isso vale para usuários de idades e familiaridade digital diferentes. A questão central do estudo é:

> Como avaliar a qualidade do aplicativo BRB Mobilidade, considerando suas funcionalidades, as necessidades de diferentes perfis de usuários e sua relação com o ecossistema do Cartão Mobilidade do Distrito Federal?

A avaliação se justifica por permitir analisar recargas e consultas com base em critérios e evidências, identificando limitações e oportunidades de melhoria.

Um exemplo de uso mostra o que está em jogo. O passageiro recarrega o cartão por Pix, espera o crédito aparecer no aplicativo, embarca no ônibus ou no metrô e, no fim do dia, confere o extrato. Nesta avaliação, adotou-se o limite de 60 s para observar a disponibilização do crédito no aplicativo; esse critério não representa uma garantia de atualização nos validadores, e a gravação no cartão físico é uma etapa distinta. Dificuldade para concluir a recarga, divergência entre saldo e extrato, lentidão, falha ou indisponibilidade afetam diretamente o deslocamento.

## 2. Objetivos

**Objetivo geral:** avaliar a qualidade do aplicativo BRB Mobilidade por meio de critérios e métricas de qualidade de software, considerando suas funcionalidades, as necessidades de diferentes perfis de usuários e sua relação com o ecossistema do Cartão Mobilidade do Distrito Federal.

**Objetivos específicos:**

- Caracterizar o aplicativo, suas funcionalidades e seu contexto de utilização.
- Identificar as características de qualidade relevantes para a avaliação.
- Considerar as necessidades de adolescentes, adultos e idosos.
- Definir questões de avaliação e métricas compatíveis com os objetivos.
- Coletar e analisar evidências sobre o funcionamento, a capacidade de interação e a utilização do aplicativo.
- Investigar limitações e oportunidades de melhoria com base nas evidências.
- Elaborar recomendações fundamentadas nos resultados.

## 3. Características avaliadas e uso dos resultados

A avaliação se concentra em quatro características. A ênfase vai de 1 (nenhum interesse) a 5 (grande interesse) e foi definida pela equipe.

| Característica | Ênfase | Por que é relevante | Decisão que os resultados apoiam |
| :--- | :---: | :--- | :--- |
| Capacidade de interação (antiga usabilidade) | 5 | O público inclui adolescentes, adultos e idosos, o que torna importantes a clareza, a navegação, a legibilidade e a acessibilidade. | Melhorias de interface, navegação e prevenção de erros. |
| Adequação funcional | 5 | Recarga, saldo, extrato e histórico precisam dar resultados corretos e coerentes entre si. | Correção de resultados incorretos e de divergências de informação. |
| Confiabilidade | 4 | O usuário depende do aplicativo na rotina de deslocamento, então falhas e indisponibilidade impedem o uso. | Correção de falhas recorrentes e melhoria da recuperação após interrupções. |
| Eficiência de desempenho | 3 | O acesso aos serviços precisa ser ágil no carregamento de telas, nas consultas e nas recargas. | Priorização de otimizações nas operações mais lentas. |

Segurança, compatibilidade, flexibilidade (antiga portabilidade), manutenibilidade e *safety* não são o foco desta avaliação; as justificativas estão no [modelo de qualidade](3-modelo.md).

## 4. Partes interessadas

O requisitante é hipotético: a área gestora do BRB Mobilidade no BRB, que também é o fornecedor e o operador da bilhetagem. Como não há contratante real, a equipe atua como avaliadora independente, com objetivo acadêmico.

| Parte (papel) | Necessidades, critério de sucesso e influência na avaliação |
| :--- | :--- |
| Passageiro (usuário final) | **Necessita** operar sozinho, com rapidez e sem erros, e confiar no saldo. **Sucesso:** concluir as tarefas sem ajuda, em tempo próximo ao do experiente (M1, M2, M3, M5). **Influência:** é o ponto de vista dos objetivos e define tarefas e perfis (O1). |
| Área gestora do BRB (requisitante hipotético, fornecedor e operador) | **Necessita** de saldos corretos, serviço disponível e menos atendimento presencial. **Sucesso:** nenhuma métrica crítica Insuficiente e disponibilidade ≥ 95% (M8, M9, M10, M14, M15). **Influência:** define o propósito e justifica as métricas críticas (O2, O4). |
| Equipe de avaliação (avaliadora independente) | **Necessita** de medições viáveis, rastreáveis e repetíveis. **Sucesso:** resultados reconstruíveis a partir dos dados versionados. **Influência:** impõe as restrições de acesso, escopo e amostra. |

---

### Histórico de Versão

| Versão | Data       | Descrição                                   | Autor       | Revisor     |
| :----- | :--------- | :------------------------------------------ | :---------- | :---------- |
| 1.0    | 20/10/2026 | Criação da descrição     | [Letícia Lopes](https://github.com/leticialopes20) | [Arthur Fernandes](https://github.com/arthurfernandesj) |
| 1.1    | 25/10/2026 | Reestruturação das partes interessadas (requisitante, papéis, critérios de sucesso e influência) | [Daniel Sousa](https://github.com/daniel-de-sousa) |  |
| 1.2    | 25/10/2026 | Nomes da ISO/IEC 25010:2023 e limite de 60 s no aplicativo, conforme a versão atual do artigo | [Hauedy Wegner](https://github.com/HauedyWS) |  |
