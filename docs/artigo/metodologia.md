# Metodologia

## Visão geral

O projeto segue as atividades da ISO/IEC 25040, agrupadas em quatro fases. As características priorizadas na Fase 1 originam os objetivos da Fase 2; as métricas da Fase 2 determinam o que é coletado e como na Fase 3; e os dados coletados são analisados e julgados na Fase 4, que termina em ao menos uma ação de melhoria justificada pelas evidências.

*Figura 1: Fluxo da avaliação e acompanhamento do projeto.*

```mermaid
flowchart LR
    accTitle: Fases do processo de medição baseado em GQM
    accDescr {
        Fluxograma da esquerda para a direita com quatro fases em sequência.
        A Fase 1 define requisitos: propósito, escopo, restrições, partes interessadas e características.
        A Fase 2 define a especificação: objetivos, questões, hipóteses, métricas, níveis e julgamento (GQM).
        A Fase 3 define o projeto: perfis, roteiros, ambiente, amostra e método de coleta.
        A Fase 4 trata da execução e conclusão: coleta, análise, julgamento e ação de melhoria.
        Um bloco de medição do projeto (PSM/CID), com decisões de gestão nos pontos de controle, se liga por linhas tracejadas a todas as quatro fases.
    }
    F1["Fase 1: requisitos<br/>propósito, escopo, restrições,<br/>partes interessadas e características"] --> F2["Fase 2: especificação<br/>objetivos, questões, hipóteses,<br/>métricas, níveis e julgamento (GQM)"]
    F2 --> F3["Fase 3: projeto<br/>perfis, roteiros, ambiente,<br/>amostra e método de coleta"]
    F3 --> F4["Fase 4: execução e conclusão<br/>coleta, análise, julgamento<br/>e ação de melhoria"]
    PSM["Medição do projeto (PSM/CID)<br/>decisões de gestão nos pontos de controle"] -.-> F1 & F2 & F3 & F4
```
*Fonte: adaptado da Figura 1 do artigo.*

*Tabela 1: Fases do projeto.*

| Fase | Atividade (ISO/IEC 25040) | Principais produtos | Entrega |
| :---: | :--- | :--- | :---: |
| 1 | Estabelecer os requisitos de avaliação | Propósito, escopo, restrições, partes interessadas e características | E1 |
| 2 | Especificar a avaliação | Objetivos, questões, hipóteses, métricas, níveis de pontuação e critérios de julgamento | E1 |
| 3 | Projetar a avaliação | Perfis de passageiro, roteiros, ambiente, amostra, método de coleta e cronograma | E2 |
| 4 | Executar e concluir a avaliação | Coleta, análise, julgamento, melhorias e ação de melhoria | E2 |

*Fonte: elaborado pela equipe.*

Cada entrega inclui o artigo, esta página do projeto (GitPage) e uma release no repositório.

## Organização da equipe e repositório

A equipe de seis integrantes trabalha no [repositório Git da disciplina](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN), onde ficam os documentos, os dados de coleta e consolidação, as gravações, as atas e os scripts de cálculo. As tarefas são registradas como issues agrupadas em milestones por entrega, e o andamento é acompanhado no [Painel PSM](../gestao/painel.md).

## Rastreabilidade, participantes e proteção de dados

Os registros da coleta, os dados das medições, os cálculos e quatro vídeos estão disponíveis nas [evidências GQM](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/tree/main/evidencias/gqm). Os arquivos distinguem relatos, medições informadas pelo avaliador e inspeção de gravações; os vídeos não cobrem todos os testes. As sessões com participantes só são gravadas com consentimento registrado. Os participantes são identificados por códigos (P01, P02, ...) nos registros textuais, e o tratamento e a divulgação dos dados devem observar a proteção das informações pessoais, em conformidade com a Lei Geral de Proteção de Dados. Participantes menores de 18 anos só podem ser incluídos com consentimento do responsável.

## Ferramentas utilizadas

| Ferramenta | Uso |
| :--- | :--- |
| GitHub | Versionamento, issues, milestones e GitHub Pages |
| MkDocs Material | Geração deste site |
| LaTeX (Overleaf) | Escrita do artigo |

---

## Histórico de Versões

| Versão | Data | Descrição | Autor(es) | Revisor(es) |
| :----: | :--------: | :--- | :---: | :---: |
| 1.0 | 13/10/2026 | Criação da página | [Arthur Fernandes](https://github.com/arthurfernandesj) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
| 1.1 | 17/10/2026 | Adição de Metodologia Artigo | [Giovana Fontes](https://github.com/GiovanaFontesS) | [Arthur Fernandes](https://github.com/arthurfernandesj) |
| 1.2 | 25/10/2026 | Atualização conforme a Seção III da versão atual do artigo | [Hauedy Wegner](https://github.com/HauedyWS) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
| 1.3 | 26/10/2026 | Adiciona texto alternativo ao diagrama e faz pequenos ajustes | [Letícia Lopes](https://github.com/leticialopes20) | [Giovana Fontes](https://github.com/GiovanaFontesS) |
| 1.4 | 15/11/2026 | Alinhamento da descrição e do acesso às evidências GQM com o artigo e o repositório | [Lucas Branco](https://github.com/lucasbbranco) | — |
