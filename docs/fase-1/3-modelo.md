# Modelo de Qualidade

A avaliação do BRB Mobilidade foi organizada em quatro características do modelo de qualidade de produto da ISO/IEC 25010:2023 [1], apresentadas em ordem de prioridade. Cada característica gera um objetivo de medição (O1 a O4). O modelo GQM (Goal-Question-Metric) é aplicado na [Fase 2](../fase-2/index.md): lá, cada objetivo é detalhado em questões, que são respondidas por métricas. O relatório inicial desta fase usava alguns nomes da edição de 2011 (usabilidade, funcionalidade, eficiência, acessibilidade e maturidade); aqui eles foram padronizados na edição de 2023.

| Prioridade | Característica | Subcaracterísticas avaliadas | Por que foi selecionada | Objetivo |
| :---: | :--- | :--- | :--- | :--- |
| 1 | **Capacidade de interação** (*interaction capability*, antiga usabilidade) | Reconhecibilidade de adequação, aprendibilidade, operabilidade, proteção contra erros do usuário, autodescritividade, inclusividade e assistência ao usuário | O público é diverso e o aplicativo substitui o atendimento presencial, então só cumpre seu papel se o passageiro opera sozinho | O1 |
| 2 | **Adequação funcional** (*functional suitability*) | Completude funcional e correção funcional | O aplicativo movimenta dinheiro e informa saldo; erro gera prejuízo direto e perda de confiança | O2 |
| 3 | **Eficiência de desempenho** (*performance efficiency*) | Comportamento temporal | As consultas ocorrem em deslocamento, muitas vezes com rede móvel limitada | O3 |
| 4 | **Confiabilidade** (*reliability*) | Ausência de falhas (antiga maturidade), disponibilidade, tolerância a falhas e recuperabilidade | O passageiro consulta e recarrega em momentos de embarque; falhas ou indisponibilidade impedem o uso | O4 |

*Tabela 1: Características selecionadas, prioridade e objetivos derivados. Fonte: elaborado pela equipe.*

As demais características não foram selecionadas por limitação de acesso e de escopo. Segurança exigiria testes de invasão ou acesso a informações internas, o que não é permitido nem viável para uma equipe externa. Manutenibilidade e flexibilidade exigiriam o código-fonte e vários ambientes. Compatibilidade pouco acrescentaria, dado o escopo em Android e iOS, e *safety* não se aplica a um aplicativo de recarga e consulta. A ausência de segurança é reconhecida como limitação do estudo. Dentro das características selecionadas, o engajamento do usuário não é avaliado; na eficiência de desempenho, utilização de recursos e capacidade exigiriam instrumentação do dispositivo e carga controlada e ficam como extensão.

## Escopo e restrições

O objeto da avaliação é o aplicativo e as funções descritas na [descrição do produto](1-descricao.md). Os contextos de uso considerados são o uso do ônibus (inclusive em terminais) e do metrô (em estações), em que o passageiro recarrega o cartão e consulta saldo e extrato antes ou depois do embarque. O cartão físico, os validadores e o Sistema de Bilhetagem Eletrônica entram apenas como contexto complementar, por exemplo quando o extrato do aplicativo é conferido com o uso real do cartão.

A avaliação tem as seguintes restrições:

1. a equipe acessa o aplicativo apenas como usuário final, sem código-fonte, registros internos nem ambiente de homologação, de modo que as métricas se baseiam em observação e em testes;
2. as recargas de teste são reais, feitas com valores baixos e custeadas pela equipe;
3. o prazo é o do semestre letivo;
4. a amostra de participantes é pequena, e os resultados são indicativos, sem generalização estatística;
5. o ambiente utilizado é descrito na [Fase 3](../fase-3/index.md);
6. dados pessoais são protegidos conforme a LGPD, com participantes identificados por códigos.

## Referências

> [1] INTERNATIONAL ORGANIZATION FOR STANDARDIZATION. *ISO/IEC 25010:2023: Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Product quality model*. Genebra: ISO, 2023.

---

### Histórico de Versão

| Versão | Data       | Descrição                             | Autor       | Revisor     |
| :----- | :--------- | :------------------------------------ | :---------- | :---------- |
| 1.0    | 20/10/2026 | Criação da descrição     | [Letícia Lopes](https://github.com/leticialopes20) | [Arthur Fernandes](https://github.com/arthurfernandesj) |
| 1.1    | 21/10/2026 | Objetivos O1 a O8 e nomes da ISO/IEC 25010:2023, alinhados ao artigo e à Fase 2 | [Hauedy Wegner](https://github.com/HauedyWS) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
| 1.2    | 25/10/2026 | Prioridade, quatro objetivos (O1 a O4), características não selecionadas e restrições, conforme a versão atual do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | [Giovana Fontes](https://github.com/GiovanaFontesS) |

