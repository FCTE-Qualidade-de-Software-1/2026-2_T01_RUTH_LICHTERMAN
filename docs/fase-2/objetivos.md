# Objetivos de Medição

*Nível conceitual.* Os objetivos seguem o modelo GQM [1]: **analisar** um objeto **com o propósito de** um propósito específico **com respeito a** um foco de qualidade **do ponto de vista de** uma parte interessada **no contexto de** uma situação de uso. Em todos os objetivos, o objeto é o **aplicativo BRB Mobilidade** e a ação é **avaliar**. Os nomes das características e subcaracterísticas seguem a ISO/IEC 25010:2023 [2].

| ID | Com o propósito de | Com respeito a | Do ponto de vista de | No contexto de |
| :--- | :--- | :--- | :--- | :--- |
| O1 | Identificar dificuldades de compreensão, aprendizagem e localização de funções | Usabilidade: reconhecibilidade de adequação, aprendibilidade e operabilidade | Passageiro, com e sem experiência prévia no aplicativo | Tarefas rotineiras em dispositivo móvel, por usuários de perfis variados |
| O2 | Identificar barreiras de acesso para pessoas com diferentes necessidades e níveis de familiaridade digital | Usabilidade: acessibilidade | Passageiro com necessidades específicas ou pouca familiaridade digital | Acesso, navegação e uso das telas principais, inclusive com recursos de acessibilidade do sistema |
| O3 | Identificar situações que favorecem erros e verificar se o aplicativo ajuda a reconhecê-los e corrigi-los | Usabilidade: proteção contra erros do usuário | Passageiro | Preenchimento de dados, recarga e tratamento de erros |
| O4 | Identificar funções ausentes ou insuficientes e resultados incorretos | Adequação funcional: completude e correção funcional | Passageiro e gestor do serviço | Inventário de funções e casos de teste de recarga, consulta, extrato e bloqueio |
| O5 | Identificar divergências entre as informações exibidas e as operações realizadas | Adequação funcional: correção funcional, com foco na consistência das informações | Passageiro e gestor do serviço | Conferência de saldo, histórico e extrato após recargas e usos do cartão |
| O6 | Identificar lentidão que prejudique o uso | Eficiência de desempenho: comportamento temporal | Passageiro | Consultas e recarga, em Wi-Fi e em rede móvel limitada |
| O7 | Identificar falhas recorrentes e dificuldades de recuperação | Confiabilidade: ausência de falhas (antiga maturidade), tolerância a falhas e recuperabilidade | Passageiro | Falhas provocadas e uso durante consulta e recarga |
| O8 | Identificar indisponibilidades que impeçam o uso | Confiabilidade: disponibilidade | Passageiro e gestor do serviço | Acesso aos serviços em diferentes horários do período de testes |

*Tabela 1: Objetivos de medição no modelo GQM. Fonte: elaborado pela equipe.*

**Exemplo de leitura (O6):** analisar o aplicativo BRB Mobilidade com o propósito de identificar lentidão que prejudique o uso, com respeito ao comportamento temporal, do ponto de vista do passageiro, no contexto de consultas e recarga em Wi-Fi e em rede móvel limitada.

A origem de cada objetivo na Fase 1 está na [visão geral da Fase 2](index.md#consistencia-com-a-fase-1). As questões que detalham cada objetivo estão em [Questões](questoes.md).

## Referências

> [1] BASILI, V. R.; CALDIERA, G.; ROMBACH, H. D. The goal question metric approach. In: *Encyclopedia of Software Engineering*, v. 1. John Wiley & Sons, 1994. p. 528–532.

> [2] ISO/IEC. *ISO/IEC 25010:2023 – SQuaRE – Product quality model*. Genebra: ISO, 2023.

---

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 21/10/2026 | Objetivos O1 a O8 a partir do artigo, com nomenclatura da ISO/IEC 25010:2023 | [Hauedy Wegner](https://github.com/HauedyWS) | |
