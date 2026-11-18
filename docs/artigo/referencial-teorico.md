# Referencial Teórico

## Família SQuaRE e modelo de qualidade do produto

A família ISO/IEC 25000 (SQuaRE) reúne normas para especificar requisitos e avaliar a qualidade de sistemas e software [\[7\]](#ref-7). Este trabalho adota a **ISO/IEC 25010:2023** como modelo de qualidade do produto, que define nove características: adequação funcional (*functional suitability*), eficiência de desempenho (*performance efficiency*), compatibilidade (*compatibility*), capacidade de interação (*interaction capability*), confiabilidade (*reliability*), segurança (*security*), manutenibilidade (*maintainability*), flexibilidade (*flexibility*) e *safety* (segurança contra danos), cada uma desdobrada em subcaracterísticas [\[4\]](#ref-4).
 
Em relação à edição de 2011, a norma renomeou usabilidade para capacidade de interação e portabilidade para flexibilidade, e fez ajustes nas subcaracterísticas: acessibilidade foi dividida em inclusividade (*inclusivity*) e assistência ao usuário (*user assistance*), estética da interface virou engajamento do usuário (*user engagement*), maturidade virou ausência de falhas (*faultlessness*) e foi acrescentada a autodescritividade (*self-descriptiveness*). Por isso, todos os nomes usados neste artigo seguem a edição de 2023:

*Tabela 1: Principais mudanças entre as edições de 2011 e 2023 da ISO/IEC 25010.*

| ISO/IEC 25010:2011 | ISO/IEC 25010:2023 |
| :--- | :--- |
| Usabilidade | Capacidade de interação (*interaction capability*) |
| Portabilidade | Flexibilidade (*flexibility*) |
| Acessibilidade | Inclusividade (*inclusivity*) e assistência ao usuário (*user assistance*) |
| Estética da interface | Engajamento do usuário (*user engagement*) |
| Maturidade | Ausência de falhas (*faultlessness*) |
| (não existia) | Autodescritividade (*self-descriptiveness*) |

*Fonte: elaborado pela equipe*

## Medição orientada a objetivos (GQM)

O método GQM (*Goal–Question–Metric*) parte de objetivos de medição, desdobra-os em questões que caracterizam o foco de qualidade e associa a cada questão métricas que permitem respondê-la [\[5\]](#ref-5). Um objetivo tem cinco elementos: o objeto que se analisa, o propósito (um único verbo), o foco de qualidade, o ponto de vista e o contexto. Cada questão recebe uma hipótese, isto é, o resultado esperado, o que facilita a interpretação posterior. As métricas devem ser simples, objetivas e válidas, ou seja, medir de fato o atributo de interesse.


## Instrumentos de apoio às métricas

A *System Usability Scale* (SUS) é um questionário de dez itens cuja média de referência na literatura é próxima de 68 pontos [\[10\]](#ref-10), [\[11\]](#ref-11), [\[12\]](#ref-12). As diretrizes WCAG 2.1 fornecem critérios de acessibilidade, adaptados aqui a um checklist para aplicativo móvel [\[13\]](#ref-13). Para o tempo de resposta, Nielsen indica que cerca de 1 segundo preserva o fluxo de raciocínio do usuário e que 10 segundos é o limite para manter a atenção [\[14\]](#ref-14).

## Aplicação do GQM na avaliação de segurança de software
 
O artigo "A GQM Based Approach towards the Development of Metrics for Software Safety", de Jayasri e Seetharamaiah (2015), aborda o desenvolvimento de métricas para avaliar a segurança de software em um protótipo de sistema de controle de passagem de nível ferroviária [\[6\]](#ref-6). Os autores utilizam o método Goal–Question–Metric (GQM), que organiza a avaliação em três etapas: definição dos objetivos (*Goal*), elaboração de perguntas (*Question*) e estabelecimento de métricas (*Metric*). Dessa forma, o artigo demonstra como o GQM pode ser utilizado para identificar riscos e avaliar a segurança de um sistema de software.

## Referências
 
A numeração segue a do artigo. Clique no número de uma citação no texto para ir até a fonte. Todas as fontes do projeto estão também na página [Referências](../referencias.md).
 
> <a id="ref-4"></a>**[4]** ISO/IEC. *ISO/IEC 25010:2023 – Systems and software engineering – SQuaRE – Product quality model*. Geneva: International Organization for Standardization, 2023. Disponível em: <https://www.iso.org/standard/78176.html>. Acesso em: 20 out. 2026.
 
> <a id="ref-5"></a>**[5]** BASILI, V. R.; CALDIERA, G.; ROMBACH, H. D. The goal question metric approach. In: *Encyclopedia of Software Engineering*, v. 1. New York: John Wiley & Sons, 1994. p. 528–532.
 
> <a id="ref-6"></a>**[6]** JAYASRI, K.; SEETHARAMAIAH, P. A GQM based approach towards the development of metrics for software safety. *Journal of Computer Science*, v. 11, n. 6, p. 813–820, 2015. DOI: 10.3844/jcssp.2015.813.820. Disponível em: <https://doi.org/10.3844/jcssp.2015.813.820>. Acesso em: 17 nov. 2026.
 
> <a id="ref-7"></a>**[7]** ISO/IEC. *ISO/IEC 25000:2014 – Systems and software engineering – SQuaRE – Guide to SQuaRE*. Geneva: International Organization for Standardization, 2014. Disponível em: <https://www.iso.org/standard/64764.html>. Acesso em: 17 nov. 2026.
 
> <a id="ref-10"></a>**[10]** BROOKE, J. SUS: a quick and dirty usability scale. In: JORDAN, P. W. et al. (ed.). *Usability Evaluation in Industry*. London: Taylor & Francis, 1996. p. 189–194.
 
> <a id="ref-11"></a>**[11]** BANGOR, A.; KORTUM, P. T.; MILLER, J. T. An empirical evaluation of the System Usability Scale. *International Journal of Human–Computer Interaction*, v. 24, n. 6, p. 574–594, 2008. DOI: 10.1080/10447310802205776. Disponível em: <https://doi.org/10.1080/10447310802205776>. Acesso em: 17 nov. 2026.
 
> <a id="ref-12"></a>**[12]** SAURO, J.; LEWIS, J. R. *Quantifying the User Experience: Practical Statistics for User Research*. 2. ed. Cambridge: Morgan Kaufmann, 2016. Disponível em: <https://www.oreilly.com/library/view/quantifying-the-user/9780128025482/>. Acesso em: 17 nov. 2026.
 
> <a id="ref-13"></a>**[13]** W3C. *Web Content Accessibility Guidelines (WCAG) 2.1*. W3C Recommendation, 2018. Disponível em: <https://www.w3.org/TR/WCAG21/>. Acesso em: 21 out. 2026.
 
> <a id="ref-14"></a>**[14]** NIELSEN, J. *Usability Engineering*. San Diego: Academic Press, 1993. Trecho sobre os limites de tempo de resposta disponível em: <https://www.nngroup.com/articles/response-times-3-important-limits/>. Acesso em: 17 nov. 2026.
 
---

## Histórico de Versões

| Versão | Data | Descrição | Autor(es) | Revisor(es) |
| :----: | :--------: | :--- | :---: | :---: |
| 1.0 | 25/10/2026 | Referencial teórico conforme a Seção II da versão atual do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
| 1.1 | 17/11/2026 | Referencial teórico conforme a Seção II da versão atual(PC2) do artigo| [Letícia Lopes](https://github.com/leticialopes20) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
