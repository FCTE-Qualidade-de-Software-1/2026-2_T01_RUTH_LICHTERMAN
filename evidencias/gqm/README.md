# Evidências textuais da avaliação GQM — BRB Mobilidade

Esta pasta documenta os dados, procedimentos e cálculos da coleta exploratória realizada com o BRB Mobilidade 1.0.60. Foi organizada em 25/10/2026 a partir dos registros da sessão de avaliação de 23/10/2026 e das confirmações posteriores registradas nessa sessão. A data de organização não representa uma nova execução de testes.

O material é uma consolidação retrospectiva dos registros, não uma transcrição integral nem um conjunto de logs exportados do aplicativo. As correções finais do avaliador prevalecem sobre os relatos preliminares substituídos durante a coleta.

## Conteúdo

| Arquivo | Conteúdo |
| --- | --- |
| [Guia de leitura](guia_de_leitura.md) | Explicação dos arquivos, códigos, colunas dos CSV e exemplos de conferência dos resultados. |
| [Ambiente e participantes](ambiente_e_participantes.md) | Dispositivo, aplicativo, redes, perfis e limitações do ambiente. |
| [Registro dos testes](registro_dos_testes.md) | Procedimentos e resultados por identificador de teste. |
| [Resultados por métrica](resultados_por_metrica.md) | Rastreabilidade de M1–M15, cálculos, classificações e cobertura. |
| [Respostas SUS](respostas_sus.csv) | As dez respostas de P01 e suas contribuições ajustadas. |
| [Tempos de resposta e de tarefa](tempos_de_resposta.csv) | Tempos de tarefa, de resposta por operação e de atualização da recarga, separados por tipo. |
| [Vídeos de evidência](videos/) | Quatro arquivos MP4 disponibilizados pelo responsável pela coleta como material complementar. |

Os CSV usam UTF-8, vírgula como separador de campos e ponto como separador decimal. Valores vazios significam informação não registrada ou não aplicável, conforme as observações; não significam zero. Os cálculos estão explicados nos arquivos Markdown, e os CSV contêm valores numéricos estáticos.

## Origem e disponibilidade das evidências

- **Relato/autorrelato:** informação fornecida pelo avaliador após executar ou acompanhar o teste. Não equivale a observação independente.
- **Inspeção de gravação privada:** resultado transcrito após inspeção visual de quadros da gravação durante a avaliação. Essa descrição registra a origem do dado na sessão original. A correspondência dos quatro vídeos posteriormente publicados com TE01–TE04 foi conferida e está na tabela abaixo.
- **Medição documentada pelo avaliador:** valor que o avaliador afirmou ter medido e documentado; em M10, o registro original não foi disponibilizado para análise durante a sessão.
- **Cálculo derivado:** transformação explícita dos dados anteriores, como pontuação SUS e razão de tempos.

Por autorização do responsável pela coleta, a subpasta [videos/](videos/) reúne os arquivos [video_evidencia1.mp4](videos/video_evidencia1.mp4), [video_evidencia2.mp4](videos/video_evidencia2.mp4), [video_evidencia3.mp4](videos/video_evidencia3.mp4) e [video_evidencia4.mp4](videos/video_evidencia4.mp4). Esses arquivos são públicos, assim como o repositório.

Nos registros textuais, as pessoas são identificadas somente por P01 e P02, sem identificadores de conta/cartão, contatos, códigos de pagamento ou localização pessoal. Os valores monetários necessários à conferência aritmética são mantidos. Um leitor pode conferir os cálculos, o encadeamento dos registros textuais e os vídeos publicados. A inclusão dos quatro vídeos não estabelece, por si só, correspondência com todos os testes nem verificação independente de todos os relatos. Os dados e a descrição da coleta original foram preservados.

## Vídeos: conteúdo, testes e métricas

A correspondência abaixo foi conferida por inspeção visual dos arquivos publicados. Os tempos de resposta são os valores aproximados já registrados na coleta, não novas observações acrescentadas ao conjunto. A duração do arquivo inclui navegação e espera fora do intervalo medido e não deve ser usada como tempo de resposta da operação.

| Vídeo | Conteúdo observado | Registro correspondente | Métricas sustentadas | Tempo de resposta registrado |
| --- | --- | --- | --- | ---: |
| [video_evidencia1.mp4](videos/video_evidencia1.mp4) | Acesso ao extrato, carregamento e exibição dos registros, em Wi-Fi. | TE01, em [registro dos testes](registro_dos_testes.md) e [CSV de tempos](tempos_de_resposta.csv). | M11; referência Wi-Fi do par TE01/TE03 da comparação exploratória M12. | 3,1 s |
| [video_evidencia2.mp4](videos/video_evidencia2.mp4) | Fluxo de recarga própria por Pix, confirmação e exibição do QR Code/código, em Wi-Fi. | TE02, em [registro dos testes](registro_dos_testes.md) e [CSV de tempos](tempos_de_resposta.csv). | M11; referência Wi-Fi do par TE02/TE04 da comparação exploratória M12. | 3,0 s |
| [video_evidencia3.mp4](videos/video_evidencia3.mp4) | Acesso ao extrato, carregamento e exibição dos registros, em dados móveis/4G. | TE03, em [registro dos testes](registro_dos_testes.md) e [CSV de tempos](tempos_de_resposta.csv). | M11; condição móvel do par TE01/TE03 da comparação exploratória M12. | 3,0 s |
| [video_evidencia4.mp4](videos/video_evidencia4.mp4) | Fluxo de geração de Pix, confirmação e exibição do QR Code/código, em dados móveis/4G. | TE04, em [registro dos testes](registro_dos_testes.md) e [CSV de tempos](tempos_de_resposta.csv). | M11; condição móvel do par TE02/TE04 da comparação exploratória M12. | 2,9 s |

As razões de M12 são 3,0/3,1 ≈ 0,97 para extrato e 2,9/3,0 ≈ 0,97 para geração Pix. Os vídeos corroboram as etapas de abertura/exibição do extrato e geração Pix descritas em CF01 e CF04 (M8), sem acrescentar novos casos ao denominador. O vídeo 2 também mostra a orientação de limites do valor da recarga, mas não substitui o conjunto dos cinco testes de entradas inválidas de M6.

Esses quatro vídeos não documentam o pagamento nem a atualização da recarga de RR01/TR01 (M10), a consulta de linha de P02 (M2), a rodada RN01 ou a perda de conexão RF01 (M13). Também não correspondem aos registros de mapa/linha TE05–TE08. A geração de um código Pix não comprova que a recarga foi paga. A comparação móvel/Wi-Fi continua exploratória, sem limitação controlada de rede.

## Índice de rastreabilidade

| Métrica | Questão | Registro e dado de origem |
| --- | --- | --- |
| M1 — Conclusão sem ajuda | Q1 | RN01 e TL01 no registro dos testes. |
| M2 — Razão de tempo por tarefa | Q1 | TL01; linhas TT01 e TT02 do CSV de tempos. |
| M3 — SUS | Q2 | SU01; dez linhas do CSV de respostas SUS. |
| M4 — Acessibilidade | Q3 | AC01 e AC04; leitor de tela e área de toque não avaliados. |
| M5 — Erros por tarefa | Q4 | Autorrelato retrospectivo de P01 em RN01. |
| M6 — Entradas inválidas | Q4 | CI01–CI05, com resultados e mensagens registradas. |
| M7 — Completude funcional | Q5 | Inventário F01–F14 no registro dos testes. |
| M8 — Corretude funcional | Q6 | CF01–CF13, respeitando o escopo de cada verificação. Vídeos 1/3 corroboram abertura/exibição de extrato; 2/4, geração Pix. |
| M9 — Divergências entre informações | Q7 | CF02 e RR01; sem conciliação após uso na catraca. |
| M10 — Recarga em até 60 s | Q8 | RR01; TR01 no CSV de tempos. |
| M11 — Tempo de resposta | Q9 | TE01–TE08 no registro e no CSV de tempos; vídeos 1–4 vinculados a TE01–TE04 na tabela acima. |
| M12 — Comparação entre redes | Q9 | Extrato: vídeos 1/3 (TE01/TE03); Pix: vídeos 2/4 (TE02/TE04). Mapa/linha: TE05–TE08. Rede móvel sem limitação controlada. |
| M13 — Recuperação | Q10 | RF01; CF08/RF02 apenas como complemento de persistência. |
| M14 — Falhas espontâneas | Q11 | RN01: três operações normais, nenhuma falha relatada. |
| M15 — Disponibilidade observada | Q12 | As mesmas três tentativas de RN01, em uma única janela. |

As definições e faixas adotadas estão em [Métricas](../../docs/fase-2/metricas.md) e [Níveis de pontuação](../../docs/fase-2/niveis-pontuacao.md). A síntese publicada no projeto está em [Fase 4](../../docs/fase-4/index.md). Os resultados completos desta consolidação estão em [Resultados por métrica](resultados_por_metrica.md).

Esta documentação corresponde principalmente às issues [#48 — coleta](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/48), [#49 — organização dos dados](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/49) e [#50 — análise GQM](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/50). A criação destes arquivos não implica encerramento das issues ou cumprimento integral de seus critérios.

## Alcance

Amostra de conveniência de duas pessoas, sendo P02 participante de apenas uma tarefa. Checklist de acessibilidade incompleto, poucas observações, parte dos dados por relato e procedimentos adaptados durante a coleta. Não há generalização estatística, comparação representativa entre grupos, monitoramento contínuo ou média global dos objetivos O1–O4. Ausência de teste não é evidência de ausência da função ou de falha do aplicativo.
