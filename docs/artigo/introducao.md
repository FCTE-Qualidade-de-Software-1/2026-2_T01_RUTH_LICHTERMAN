# Introdução

## Contexto

Aplicativos que dão acesso a serviços públicos do cotidiano precisam ser avaliados com critérios objetivos, e não apenas pela percepção de quem os usa. No Distrito Federal, o aplicativo BRB Mobilidade permite recarregar o Cartão Mobilidade, consultar saldo e extrato, gerenciar o cartão e consultar linhas de ônibus, o que o torna parte da rotina de deslocamento de muitos passageiros.[\[1\]](#ref-1), [\[2\]](#ref-2).

Falhas nesse tipo de aplicativo têm consequências diretas: um saldo exibido de forma incorreta, uma recarga que não é concluída ou uma tela que o passageiro não consegue operar sozinho levam a deslocamentos presenciais e à perda de confiança no serviço. Além disso, o público é heterogêneo em idade e em familiaridade com tecnologia, o que torna a avaliação de qualidade mais exigente.

## Objetivo e pergunta de pesquisa

O objetivo deste trabalho é avaliar a qualidade do produto BRB Mobilidade seguindo o processo de avaliação da família SQuaRE [\[3\]](#ref-3), com o modelo de qualidade da ISO/IEC 25010:2023 [\[4\]](#ref-4) e métricas definidas pelo método GQM [\[5\]](#ref-5). A pergunta que orienta o estudo é:

> Em que medida o aplicativo atende a níveis aceitáveis de capacidade de interação (*interaction capability*), adequação funcional (*functional suitability*), eficiência de desempenho (*performance efficiency*) e confiabilidade (*reliability*) nas operações que sustentam o uso do Cartão Mobilidade no ônibus e no metrô?

## Organização

Este artigo apresenta os requisitos, a especificação, os procedimentos e os resultados da avaliação. O [referencial teórico](referencial-teorico.md) e a [metodologia do projeto](metodologia.md) vêm a seguir; os requisitos da avaliação estão na [Fase 1](../fase-1/index.md) e a especificação com GQM, na [Fase 2](../fase-2/index.md); a coleta é descrita na [Fase 3](../fase-3/index.md); e os resultados, a discussão e as limitações, na [Fase 4](../fase-4/index.md). O repositório da equipe está em <https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN>.

---

## Referências
 
A numeração segue a do artigo. Clique no número de uma citação no texto para ir até a fonte. Todas as fontes do projeto estão também na página [Referências](../referencias.md).
 
> <a id="ref-1"></a>**[1]** SECRETARIA DE ESTADO DE TRANSPORTE E MOBILIDADE DO DISTRITO FEDERAL (SEMOB-DF). *Bilhetagem eletrônica e Cartão Mobilidade*. 2025. Disponível em: <https://www.semob.df.gov.br/bilhete-unico>. Acesso em: 24 out. 2026.
 
> <a id="ref-2"></a>**[2]** BANCO DE BRASÍLIA (BRB). *BRB Mobilidade celebra 5 anos de inovação do sistema de transporte público do DF*. Brasília: BRB Imprensa, 2024. Disponível em: <https://novo.brb.com.br/imprensa/brb-mobilidade-do-sistema-de-transporte-publico-do-df/>. Acesso em: 24 out. 2026.
 
> <a id="ref-3"></a>**[3]** ISO/IEC. *ISO/IEC 25040:2011 – Systems and software engineering – SQuaRE – Evaluation process*. Geneva: International Organization for Standardization, 2011. Disponível em: <https://www.iso.org/standard/35765.html>. Acesso em: 17 nov. 2026.
 
> <a id="ref-4"></a>**[4]** ISO/IEC. *ISO/IEC 25010:2023 – Systems and software engineering – SQuaRE – Product quality model*. Geneva: International Organization for Standardization, 2023. Disponível em: <https://www.iso.org/standard/78176.html>. Acesso em: 20 out. 2026.
 
> <a id="ref-5"></a>**[5]** BASILI, V. R.; CALDIERA, G.; ROMBACH, H. D. The goal question metric approach. In: *Encyclopedia of Software Engineering*, v. 1. New York: John Wiley & Sons, 1994. p. 528–532.
 
---

## Histórico de Versões

| Versão | Data | Descrição | Autor(es) | Revisor(es) |
| :----: | :--------: | :---------------------------------------------------- | :-------------: | :---------: |
| 1.1 | 13/10/2026 | Criação da página Introdução do Artigo | [Arthur Fernandes](https://github.com/arthurfernandesj) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
| 1.2 | 17/10/2026 | Adição de informações iniciais da introdução do artigo | [Giovana Fontes](https://github.com/GiovanaFontesS) | [Arthur Fernandes](https://github.com/arthurfernandesj) |
| 1.3 | 25/10/2026 | Atualização conforme a Seção I da versão atual do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
| 1.4 | 17/11/2026 | Alinhamento com a versão atual do artigo (Ponto de Controle 2): citações e lista de referências, termos em inglês na pergunta de pesquisa e endereço do repositório | [Letícia Lopes](https://github.com/leticialopes20) | [Hauedy Wegner](https://github.com/HauedyWS) |