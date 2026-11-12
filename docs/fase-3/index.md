# Fase 3 — Projeto da Avaliação

Nesta fase, a equipe define **como** as métricas da [Fase 2](../fase-2/index.md) foram coletadas: ambiente, participantes, tarefas e procedimentos. A coleta teve caráter exploratório, e as diferenças entre o que foi especificado e o que foi executado estão registradas abaixo.

## Ambiente

| Item | Valor |
| :--- | :--- |
| Aparelho | Redmi Note 10S |
| Sistema | Android 13, compilação TP1A.220624.014 |
| Aplicativo | BRB Mobilidade, versão 1.0.60 |
| Redes | Wi-Fi e dados móveis (4G identificado nas gravações) |
| Técnicas | Testes de caixa-preta, gravações de tela e registros do avaliador |

*Tabela 1: Ambiente da avaliação. Fonte: elaborado pela equipe.*

### Requisitos de Hardware e Software

- **Requisitos Mínimos do Produto:** Smartphone com tela sensível ao toque, acesso à internet (Wi-Fi ou dados móveis 3G/4G/5G) e sistema operacional Android (v8.0 ou superior) ou iOS (v12.0 ou superior).
- **Ambiente Efetivo de Execução:** Dispositivo Redmi Note 10S sob sistema operacional Android 13 (compilação TP1A.220624.014), executando a versão 1.0.60 do aplicativo BRB Mobilidade.
- **Ferramentas de Suporte:** Softwares de gravação de tela para registro das sessões de uso, formulários eletrônicos para o questionário SUS adaptado e planilhas eletrônicas para tabulação de tempos e erros.

## Participantes

A amostra de conveniência teve dois participantes, identificados por códigos:

| Código | Perfil | Participação |
| :--- | :--- | :--- |
| P01 | Com experiência prévia no aplicativo, principalmente na consulta de ônibus; também responsável pela execução dos testes | Três tarefas, questionário SUS e demais medições |
| P02 | 55 anos, sem experiência prévia | Somente a consulta de linha |

*Tabela 2: Participantes da avaliação. Fonte: elaborado pela equipe.*

### Conhecimento dos Avaliadores e Participantes

- **Equipe Avaliadora:** Alunos de Engenharia de Software responsáveis pela elaboração do protocolo, condução dos testes e registro de evidências.
- **Nível de Conhecimento dos Participantes:**
  - **P01 (Perfil Experiente):** Possui alto conhecimento técnico em informática/tecnologia e experiência prévia com o aplicativo BRB Mobilidade, atuando como referência de tempo de execução.
  - **P02 (Perfil Leigo):** Usuária de 55 anos, com conhecimento básico de informática e sem experiência prévia no aplicativo, representando a parcela de usuários que necessita de maior acessibilidade e facilidade de aprendizagem.

As sessões só são gravadas com consentimento registrado, o acesso às gravações e aos dados pessoais é restrito à equipe e à professora, e os dados seguem a Lei Geral de Proteção de Dados.

**Termo de Consentimento Livre e Esclarecido (TCLE):** [baixar em PDF](arquivos/TCLE_padrao_BRB_Mobilidade.pdf){ download } · [baixar em Word](arquivos/TCLE_padrao_BRB_Mobilidade.docx){ download }

## Tarefas e procedimentos de coleta

| Métricas | Procedimento executado |
| :--- | :--- |
| M1, M5 | P01 executou três tarefas (consultar o extrato, consultar o histórico de recargas e consultar uma linha e seu itinerário). Conclusão sem ajuda e erros registrados por autorrelato após a execução |
| M2 | Consulta de linha com os mesmos pontos de início e fim para P01 e P02, sem dicas de navegação; o tempo de P01 é a referência de usuário experiente |
| M3 | Questionário SUS aplicado somente a P01, com redação adaptada em português |
| M4 | Inspeção da ampliação de fonte do sistema e triagem de contraste em vídeo |
| M6 | Cinco casos de entradas inválidas: valor vazio, R$ 2,69, R$ 350,01, cartão vazio e par cartão/CPF incompatível |
| M7, M8 | Inventário de 14 funções e treze verificações funcionais de consultas, geração e cópia do código Pix, estados de recarga, acesso a formulários e preservação das informações após reabertura |
| M9, M10 | Uma recarga real de R$ 2,70, com conferência de saldo, histórico, extrato e de uma viagem conhecida |
| M11, M12 | Uma observação por operação e por rede (Wi-Fi e dados móveis), separando a espera pelo resultado da digitação e da escolha de opções |
| M13 | Perda de conexão com retorno da rede; reabertura após encerramento como evidência complementar |
| M14 | Rodada normal de extrato, histórico e itinerário, com limite de observação de 30 s |
| M15 | Três tentativas de acesso em uma janela, por volta de 13h30 de 23/10/2026 |

*Tabela 3: Procedimentos de coleta por métrica. Fonte: elaborado pela equipe.*

### Massa de Dados Definida e Justificada

- **Massa de Dados Definida:** 
  - **Recarga Financeira:** Operação padronizada via Pix no valor fixo de R$ 2,70 (valor de tarifa de transporte público).
  - **Entradas Inválidas:** Conjunto padronizado de 5 cenários de erro (valor vazio, R$ 2,69, R$ 350,01, número de cartão vazio e incompatibilidade entre CPF e cartão).
  - **Escopo de Funcionalidades:** Inventário delimitado a 14 funções mapeadas no aplicativo e 1 linha de ônibus de referência para testes de consulta e navegação.
- **Justificativa da Massa de Dados:** A definição prévia dos dados-exemplo e cenários de teste controlados é indispensável para agilizar a execução das sessões de medição, evitar custos financeiros desnecessários com múltiplas transações bancárias reais e garantir que as comparações temporais e de taxa de erro entre diferentes perfis de participantes ocorram em condições idênticas de contorno.

## Adaptações em relação à especificação

- O checklist de acessibilidade ficou incompleto: área de toque e leitor de tela não foram avaliados.
- A comparação entre redes usou dados móveis sem limitação controlada de banda.
- A sondagem de disponibilidade foi feita em uma única janela, em vez de diferentes horários.
- Houve uma observação por operação e condição de rede, sem estimativa de variabilidade nem percentil 90.
- Não foram fixados mínimos de observação antes da coleta.

Por isso, na [Fase 4](../fase-4/index.md), as faixas de pontuação são aplicadas apenas de forma descritiva, restrita às amostras observadas.
```

---

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 25/10/2026 | Ambiente, participantes, procedimentos e adaptações, a partir da Seção VI do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | [Letícia Lopes](https://github.com/leticialopes20)|
| 1.1 | 11/11/2026 | Recurso, Ambiente e Massa de Dados a partir do artigo  | [Daniel Sousa](https://github.com/daniel-de-sousa) | [Arthur Fernandes](https://github.com/arthurfernandesj) |
| 1.2 | 12/11/2026 | Adicionando pasta do arquivos e o termo TCLE em PDF e Word | [Arthur Fernandes](https://github.com/arthurfernandesj) | [Hauedy Wegner](https://github.com/HauedyWS) |
