# Referencial Teórico

## Família SQuaRE e modelo de qualidade do produto

A família ISO/IEC 25000 (SQuaRE) reúne normas para especificar requisitos e avaliar a qualidade de sistemas e software [1]. Este trabalho adota a **ISO/IEC 25010:2023** como modelo de qualidade do produto, que define nove características: adequação funcional, eficiência de desempenho, compatibilidade, capacidade de interação, confiabilidade, segurança, manutenibilidade, flexibilidade e *safety* (segurança contra danos), cada uma desdobrada em subcaracterísticas [2].

Em relação à edição de 2011, a norma fez as seguintes mudanças, por isso todos os nomes usados no trabalho seguem a edição de 2023:

*Tabela 1: Principais mudanças entre as edições de 2011 e 2023 da ISO/IEC 25010.*

| ISO/IEC 25010:2011 | ISO/IEC 25010:2023 |
| :--- | :--- |
| Usabilidade | Capacidade de interação (*interaction capability*) |
| Portabilidade | Flexibilidade (*flexibility*) |
| Acessibilidade | Inclusividade (*inclusivity*) e assistência ao usuário (*user assistance*) |
| Estética da interface | Engajamento do usuário (*user engagement*) |
| Maturidade | Ausência de falhas (*faultlessness*) |
| (não existia) | Autodescritividade (*self-descriptiveness*) |

*Fonte: elaborado pela equipe com base em [2].*

## Processo de avaliação de produto

A ISO/IEC 25040 organiza a avaliação em cinco atividades: estabelecer os requisitos de avaliação, especificar a avaliação, projetar a avaliação, executar a avaliação e concluir a avaliação [3]. A norma foi revisada em 2024 [4]; este trabalho segue as cinco atividades da edição de 2011, usadas no enunciado da disciplina.

## Medição orientada a objetivos (GQM)

O método GQM (*Goal–Question–Metric*) parte de objetivos de medição, desdobra-os em questões que caracterizam o foco de qualidade e associa a cada questão métricas que permitem respondê-la [5]. Um objetivo tem cinco elementos: o objeto que se analisa, o propósito (um único verbo), o foco de qualidade, o ponto de vista e o contexto. Cada questão recebe uma hipótese, isto é, o resultado esperado. As métricas devem ser simples, objetivas e válidas, ou seja, medir de fato o atributo de interesse.

## Gestão do projeto com PSM

O *Practical Software and Systems Measurement* (PSM) propõe medir o próprio projeto para apoiar decisões de gestão [6]. Seguindo o enunciado da disciplina (PSM/CID), a equipe acompanha três categorias: calendário e progresso, recursos e custos (esforço) e desempenho dos processos. Ver [Gestão](../gestao/psm.md).

## Instrumentos de apoio às métricas

A *System Usability Scale* (SUS) é um questionário de dez itens cuja média de referência na literatura é próxima de 68 pontos [7, 8, 9]. As diretrizes WCAG 2.1 fornecem critérios de acessibilidade, adaptados a um checklist para aplicativo móvel [10]. Para o tempo de resposta, Nielsen indica que cerca de 1 segundo preserva o fluxo de raciocínio do usuário e que 10 segundos é o limite para manter a atenção [11].

## Referências

As referências completas estão na página [Referências](../referencias.md): [1] ISO/IEC 25000:2014; [2] ISO/IEC 25010:2023; [3] ISO/IEC 25040:2011; [4] ISO/IEC 25040:2024; [5] Basili, Caldiera e Rombach (1994); [6] McGarry et al. (2002); [7] Brooke (1996); [8] Bangor, Kortum e Miller (2008); [9] Sauro e Lewis (2016); [10] W3C (2018); [11] Nielsen (1993).

---

## Histórico de Versões

| Versão | Data | Descrição | Autor(es) | Revisor(es) |
| :----: | :--------: | :--- | :---: | :---: |
| 1.0 | 25/10/2026 | Referencial teórico conforme a Seção II da versão atual do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
