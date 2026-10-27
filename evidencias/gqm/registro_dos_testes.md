# Registro consolidado dos testes

Os identificadores abaixo ligam os dados às métricas. São registros textuais consolidados após a sessão, com as retificações finais incorporadas. Não contêm arquivos audiovisuais ou dados de identificação pessoal. As instruções descrevem o procedimento efetivamente relatado, sem afirmar que um protocolo completo foi fixado antes de toda a coleta.

## RN01 — Rodada normal de uso (M1, M5, M14, M15)

P01 realizou uma tentativa por operação, com conexão ativa: abrir extrato, abrir histórico de recargas e consultar linha/itinerário. O plano da rodada adotou observação de até 30 s para cada operação. Esse limite é um critério, não a duração medida de cada execução.

| Operação | Conclusão | Ajuda de navegação | Erros de operação relatados | Falha espontânea relatada |
| --- | --- | --- | --- | --- |
| Extrato | Concluída | Nenhuma | 0 | Não |
| Histórico de recargas | Concluída | Nenhuma | 0 | Não |
| Linha/itinerário | Concluída | Nenhuma | 0 | Não |

Fonte: P01 confirmou que as três operações concluíram normalmente e depois informou zero ajuda e nenhum erro no conjunto da rodada. Não houve observação independente dessa rodada. Janela informada: 23/10/2026, aproximadamente 13h30; tecnologia de rede não confirmada.

Denominador: três tentativas, sem adicionar testes guiados, interrupções provocadas ou rejeições esperadas. M1/M5 reutilizam retrospectivamente essa rodada, originalmente destinada a M14/M15. As mesmas três tentativas alimentam indicadores distintos; não representam seis operações ou janelas independentes.

## TL01 — Comparação de consulta de linha (M1, M2)

P01 informou 30 s para sua execução de referência. P02, sem experiência no aplicativo, concluiu a mesma tarefa em 71 s. P01 confirmou mesmos pontos de início/fim e ausência de dicas de navegação. Os nomes das telas que delimitam os marcos não foram detalhados. Não ficou registrado se P02 cometeu erros.

Fonte: tempos e condições informados por P01; registro original não analisado independentemente. M1 de P02: 1/1 sem ajuda. M2: 71/30 = 2,3666..., arredondado a 2,37. Não confundir com o tempo de resposta da consulta em TE05/TE06. Não há indicação suficiente para afirmar que a tarefa temporal de P01 seja uma nova tentativa independente de RN01; os denominadores não são somados.

## SU01 — Questionário SUS (M3)

Dez afirmações apresentadas a P01, uma por vez, após as atividades de uso. Escala de 1 (discordo totalmente) a 5 (concordo totalmente). Respostas: **5, 2, 4, 1, 5, 1, 5, 1, 5, 2**. Contribuições ajustadas: **4, 3, 3, 4, 4, 4, 4, 4, 4, 3**.

Soma 37; resultado 37 × 2,5 = **92,5 pontos**, não 92,5% de tarefas. O CSV [respostas_sus.csv](respostas_sus.csv) preserva a redação adaptada usada e cada resposta. P02 não respondeu ao questionário. Não foi identificada tradução previamente validada.

## CI01–CI05 — Entradas inválidas (M6)

| ID | Procedimento | Resultado observado por P01 | Orientação relatada | Julgamento do caso |
| --- | --- | --- | --- | --- |
| CI01 | Apagar o valor de recarga e tentar avançar. | Botão Próximo desabilitado. | Texto contextual: “Minimo 2,70 e Maximo 350,00”. | Atendido no critério operacional adotado. |
| CI02 | Informar R$ 2,69; comparar com R$ 2,70. | Próximo desabilitado em R$ 2,69 e habilitado em R$ 2,70. | O mesmo texto de limites. | Caso inválido atendido; R$ 2,70 é controle válido e não entra no denominador. |
| CI03 | Informar R$ 350,01. | Próximo desabilitado. | O mesmo texto de limites. | Atendido. |
| CI04 | Deixar vazio o número de cartão na recarga de terceiro. | Avanço impedido. | “O numero do cartao é obrigatorio”. | Atendido. |
| CI05 | Informar uma combinação de cartão e CPF sem vínculo, conforme P01, e tentar confirmar a geração do Pix. | Etapas intermediárias permitiram avanço; confirmação final bloqueou a geração. | “O cpf digitado ou numero do cartao esta incorreto”. | Atendido no bloqueio final; não exigir bloqueio na primeira etapa. |

Fonte: relatos de P01. A orientação de limites também foi observada durante a inspeção privada da geração Pix. Para CI01–CI03, adotou-se como orientação suficiente o texto contextual permanente, sem presumir uma mensagem dinâmica específica por erro. O relato inicial de ausência de mensagem foi corrigido por P01 e não é mantido como defeito.

Nenhum número de cartão ou CPF utilizado é publicado. O tamanho de um número de cartão, isoladamente, não foi usado para concluir sua invalidade. Resultado: cinco casos atendidos em cinco; não é cobertura de todas as regras de validação do aplicativo.

## CF01–CF13 — Verificações funcionais (M8)

Cada linha corresponde a um caso de escopo limitado; não a uma validação completa de todas as regras do serviço. Fonte principal: relatos de P01. As inspeções de tempos TE01–TE06 corroboram a exibição de resultados de consultas e geração de Pix, sem ampliar os denominadores.

| ID | Procedimento e resultado esperado | Resultado relatado | Limite da aprovação |
| --- | --- | --- | --- |
| CF01 | Abrir o extrato e verificar exibição de registros ou estado vazio válido. | Abriu, mostrou registros, sem erro. | Abertura e exibição; não auditoria de todos os lançamentos. |
| CF02 | Localizar uma viagem conhecida e conferir data, transporte/linha e valor. | P01 reconheceu o registro e confirmou correspondência. | Conferência por memória de uma viagem; nenhum identificador da viagem é publicado. |
| CF03 | Consultar uma linha conhecida e abrir o itinerário correspondente. | Linha encontrada e itinerário aberto corretamente. | Funcionamento percebido, sem validação documental de todo o trajeto. |
| CF04 | Gerar solicitação Pix com valor permitido e conferir cartão/valor. | Código gerado sem erro; dados corresponderam aos selecionados. | Geração e exibição; pagamento observado separadamente em RR01. |
| CF05 | Consultar solicitações de recarga não pagas. | Apareceram com status Aguardando. | Estado exibido; sem teste de expiração. |
| CF06 | Copiar o código Pix e colá-lo em campo de texto. | Código colado corretamente; botão passou a Código copiado. | Cópia e retorno visual. |
| CF07 | Consultar a recarga paga e conferir o total exibido. | Status Processado e total R$ 13,40 após recarga de R$ 2,70. | Disponibilização no aplicativo; detalhes em RR01. |
| CF08 | Encerrar e reabrir o aplicativo; conferir total e estado da recarga. | Informações permaneceram iguais; retorno à página inicial. | Persistência visível após conclusão da operação; não prova recuperação de transação interrompida. |
| CF09 | Abrir Atualizar dados cadastrais. | Formulário de edição exibido. | Abertura somente; nenhum dado alterado ou salvo. |
| CF10 | Abrir Onde retirar o seu cartão. | Navegador abriu página do serviço com postos de emissão. | Encaminhamento externo; sem conferência individual de endereços/horários. |
| CF11 | Consultar Validade de créditos. | Recarga realizada exibida com uma data de validade. | Exibição da informação; regra de validade não auditada. |
| CF12 | Acessar acompanhamento de ônibus em tempo real. | P01 confirmou funcionamento e uso habitual dessa função. | Funcionamento percebido; sem comparação de posição com veículo real. |
| CF13 | Acessar Recarregar para outra pessoa e observar o fluxo. | Seleção de valor, número de cartão e CPF antes da confirmação Pix. | Acesso/sequência dos campos; sem pagamento a terceiro. |

Treze verificações tiveram resultado compatível com o esperado em seu escopo. A razão 13/13 não significa que 100% das regras de negócio ou dos fluxos completos foram validados. CI01–CI05 e RN01 não são adicionados aos treze casos como aprovações funcionais extras.

## Inventário F01–F14 — Presença de funções (M7)

O inventário operacional desdobra o escopo da avaliação em 14 funções. “Presença verificada” inclui acesso ou funcionamento relatado; não significa conclusão integral do serviço.

| ID | Função | Evidência de presença nesta coleta |
| --- | --- | --- |
| F01 | Recarga própria por Pix | CF04 e RR01. |
| F02 | Recarga de terceiro | CF13; sem efetivação de pagamento. |
| F03 | Consulta de saldo/total | RR01. |
| F04 | Histórico de recargas | CF05 e CF07. |
| F05 | Extrato de utilização | CF01 e CF02. |
| F06 | Bloqueio do cartão | P01 confirmou existência e funcionamento; sem execução de bloqueio documentada nesta coleta. |
| F07 | Atualização cadastral | CF09; formulário aberto, sem salvamento. |
| F08 | Consulta de pontos de retirada | CF10; encaminhamento externo. |
| F09 | Consulta de linhas | CF03 e TL01. |
| F10 | Consulta de itinerários | CF03. |
| F11 | Consulta de paradas | P01 confirmou paradas/pontos destacados no mapa; também presentes no fluxo de TE05. |
| F12 | Localização de ônibus | CF12; funcionamento percebido. |
| F13 | Solicitação efetiva de segunda via | Não verificada integralmente. P01 relatou encaminhamento pelo suporte ao site do serviço. |
| F14 | Pré-cadastro de primeira via | Não executado. P01 lembrou de opção no primeiro acesso; acesso atual e conclusão não verificados. |

Há evidência de presença para 12 funções, com forças diferentes de evidência. Duas permanecem sem verificação integral, sem serem classificadas como ausentes. A consulta de validade CF11 é suplementar e não aumenta retroativamente o inventário de 14 funções.

## RR01 — Recarga real e conferência de informações (M9, M10)

P01 informou total inicial de R$ 10,70 e realizou uma recarga própria de R$ 2,70. Ao retornar ao fluxo de recarga após pagar, observou a tela de pagamento autorizado; após continuar, a página inicial mostrava R$ 13,40. O histórico exibiu Processado.

Conferência aritmética: **R$ 10,70 + R$ 2,70 = R$ 13,40**. Não houve uso posterior na catraca avaliado nesta coleta. O aplicativo distingue saldo físico e crédito pendente de ativação, mas o total exibido inclui ambos, conforme explicação de P01. A atualização observada refere-se ao aplicativo, não à gravação no cartão físico.

Para M10, P01 posteriormente esclareceu que **mediu e documentou 1 s**, com gravação sob sua guarda, não enviada para análise durante a sessão. Esse esclarecimento substitui a qualificação preliminar de estimativa por memória. O valor é registrado como medição informada pelo avaliador, sem verificação independente dos marcos no registro original. Critério: até 60 s; uma recarga dentro do limite em uma realizada. Não houve segundo pagamento para repetir o teste.

## TE01–TE08 — Tempos de resposta (M11, M12)

| ID | Operação | Rede | Tempo (s) | Origem |
| --- | --- | --- | ---: | --- |
| TE01 | Abrir extrato | Wi-Fi | 3,1 | Inspeção de gravação privada; início estimado pela transição visual, sem indicador de toque. |
| TE02 | Gerar código Pix | Wi-Fi | 3,0 | Inspeção de gravação privada; acionamento da confirmação até código/instruções utilizáveis. |
| TE03 | Abrir extrato | Dados móveis/4G | 3,0 | Inspeção de gravação privada; seleção do extrato até registros exibidos. |
| TE04 | Gerar código Pix | Dados móveis/4G | 2,9 | Inspeção de gravação privada; confirmação até código/instruções exibidos. |
| TE05 | Abrir mapa com paradas | Wi-Fi | 5,3 | Inspeção de gravação privada; toque próximo ao início do registro até mapa/paradas utilizáveis. |
| TE06 | Abrir detalhes completos da linha | Wi-Fi | 2,9 | Inspeção de gravação privada; seleção da linha até traçado e próximos horários completos. |
| TE07 | Abrir mapa com paradas | Dados móveis | 5,3 | P01 informou o mesmo tempo da execução Wi-Fi; sem nova gravação analisada. |
| TE08 | Abrir detalhes completos da linha | Dados móveis | 2,9 | P01 informou o mesmo tempo da execução Wi-Fi; sem nova gravação analisada. |

Valores aproximados na precisão prática da coleta; inspeção visual em intervalos de cerca de 0,1 s nas gravações analisadas. Uma observação por operação/condição. Digitação, escolha de opções e navegação anterior ao comando foram excluídas. Não somar o intervalo de escolha entre mapa e linha aos tempos de resposta. Não há dados para variabilidade ou P90 útil por operação. A identidade de linha/parada e os conteúdos da tela não são publicados.

## AC01 e AC04 — Acessibilidade parcial (M4)

- **AC01, fonte:** aumentar a fonte do sistema e conferir textos no aplicativo; repetir após encerrá-lo e reabri-lo. P01 informou que os textos permaneceram iguais, mesmo com fonte do sistema muito ampliada. Item não atendido no cenário observado.
- **AC04, contraste:** triagem em quadros de gravação privada da tela inicial: aproximadamente 11:1 no saldo, 14:1 em Consultar linhas e 3,7:1 em Fazer recarga. São estimativas sujeitas a compressão e amostragem de cores. Sem confirmação do tamanho tipográfico, não se conclui reprovação normativa do último texto: a referência difere para texto comum (4,5:1) e texto grande (3:1), conforme critério citado na especificação.
- **TalkBack:** P01 retificou o relato preliminar e esclareceu que não realizou testes relacionados ao leitor de tela. Qualquer aprovação preliminar desses testes foi retirada.
- **Área de toque:** dimensões físicas não medidas.

Não há checklist completo nem percentual global M4.

## RF01 — Perda de conexão e recuperação (M13)

Com o aplicativo aberto, P01 desligou Wi-Fi e dados móveis: a interface ficou carregando, sem aviso de conexão. Após restabelecer a conexão, o carregamento persistiu até uma atualização manual dentro do aplicativo. Os registros reapareceram normalmente, sem alterações visíveis percebidas. A duração exata da espera não foi medida.

| Componente do critério | Resultado |
| --- | --- |
| Informar o problema | Não atendido. |
| Permitir retomada | Atendido com atualização manual. |
| Ausência de perda/duplicidade visível | Nenhuma alteração percebida; sem auditoria interna/transacional. |

Critério composto: informar o problema **e** permitir retomada sem perda/duplicidade. Resultado: 0/1 cenário integralmente atendido. A atualização manual, sozinha, não é o motivo da reprovação: faltou o aviso do problema.

O relato adicional de que o aplicativo não abriu sem internet não contém detalhes suficientes para compor outro cenário concluído. RF02/CF08 distinguiram retorno de segundo plano e encerramento: do segundo plano, a tela permaneceu carregada; após encerramento real, voltou à página inicial com dados preservados. Como o instante de encerramento durante uma operação em curso não foi comprovado, isso não acrescenta um segundo sucesso ao denominador de M13.
