# Guia de leitura das evidências GQM

Este guia explica o papel de cada arquivo desta pasta, o significado dos códigos e como conferir os resultados. Ele acompanha a documentação da coleta do BRB Mobilidade 1.0.60; não registra uma nova rodada de testes e não modifica os dados já coletados.

## Por onde começar

1. Leia [ambiente_e_participantes.md](ambiente_e_participantes.md) para entender quem participou e em quais condições.
2. Consulte [registro_dos_testes.md](registro_dos_testes.md) para saber o que foi feito e observado.
3. Abra os CSV quando quiser consultar as respostas do SUS ou os tempos que alimentam os cálculos.
4. Leia [resultados_por_metrica.md](resultados_por_metrica.md) para conferir os cálculos, as classificações e as respostas às questões GQM.
5. Use o [README.md](README.md) como índice para localizar rapidamente qual registro sustenta cada métrica.

A ligação entre os arquivos é: **condições da coleta → registro do teste → dado registrado → cálculo da métrica → interpretação da questão**. Nem todo teste produz um número: alguns sustentam uma observação qualitativa ou mostram por que uma métrica ficou parcial.

## O que significam GQM, objetivos, questões e métricas

GQM significa *Goal–Question–Metric*: objetivo, questão e métrica. Nesta avaliação, os quatro objetivos foram desdobrados em doze questões e quinze métricas.

| Código | Significado nesta avaliação |
| --- | --- |
| O1 | Avaliar a capacidade de interação: conclusão de tarefas, facilidade percebida, acessibilidade e prevenção de erros. |
| O2 | Avaliar a adequação funcional: funções presentes, resultados esperados e coerência/atualização das informações. |
| O3 | Avaliar a eficiência de desempenho: espera pelo resultado e comparação entre condições de rede. |
| O4 | Avaliar a confiabilidade: recuperação, falhas espontâneas e disponibilidade observada. |
| Q1–Q12 | Perguntas usadas para investigar esses objetivos. |
| M1–M15 | Medidas usadas para responder às perguntas. |

As definições formais estão na [especificação das métricas](../../docs/fase-2/metricas.md); as faixas de classificação estão em [níveis de pontuação](../../docs/fase-2/niveis-pontuacao.md). Esses links consultam a documentação do projeto: os arquivos de evidências permanecem nesta pasta, fora de `docs/`.

## O papel de cada arquivo

### `README.md` — índice e origem das evidências

Apresenta o conjunto de arquivos, a data de organização da documentação, a política de não publicar gravações e uma tabela de rastreabilidade. Nessa tabela, procure a métrica desejada e veja quais testes ou linhas de CSV a sustentam.

A organização dos registros em **25/10/2026** não significa que os testes foram repetidos nessa data. A sessão principal é registrada em **23/10/2026**. A criação deste guia também não altera essas datas históricas.

O README distingue relatos, inspeções de gravações privadas, medições documentadas pelo avaliador e cálculos derivados. Essas origens não devem ser tratadas como se tivessem o mesmo tipo de verificação.

### `ambiente_e_participantes.md` — condições da avaliação

Registra o aparelho, sistema, versão do aplicativo, redes utilizadas e participação de cada pessoa. O ambiente principal foi um **Redmi Note 10S, Android 13, BRB Mobilidade 1.0.60**.

- **P01:** usuário com experiência prévia, também responsável pela avaliação. Realizou os testes, respondeu ao SUS e forneceu a referência temporal de consulta de linha.
- **P02:** pessoa sem experiência prévia no aplicativo. Participou somente da consulta de linha.

P01 e P02 são códigos de participante. Não são dois grupos representativos de usuários. As respostas e os testes de P01 não devem ser atribuídos a P02.

O arquivo também separa três medidas temporais: duração da tarefa, tempo de resposta de uma operação e tempo de atualização da recarga. Elas aparecem no mesmo CSV, mas medem coisas diferentes.

### `registro_dos_testes.md` — o que foi executado

É o relato organizado dos procedimentos e resultados. Para cada conjunto de testes, informa o que foi feito, a origem da informação e o alcance do resultado. Seus códigos permitem localizar a execução que sustenta uma métrica.

| Código | O que representa | Como ler |
| --- | --- | --- |
| RN01 | Rodada normal de uso. | Três operações de P01: extrato, histórico e linha/itinerário. Sustenta M1, M5, M14 e M15; são as mesmas três tentativas, não quatro rodadas independentes. |
| TL01 | Comparação da tarefa de consulta de linha. | Referência de P01 em 30 s e execução de P02 em 71 s, com mesmos pontos de início/fim e sem dicas, segundo confirmação de P01. |
| SU01 | Aplicação do questionário SUS. | Dez respostas de P01, cuja pontuação final foi 92,5. |
| CI01–CI05 | Casos de entradas inválidas. | Valor vazio, abaixo do mínimo, acima do máximo, cartão vazio e combinação cartão/CPF incompatível. |
| CF01–CF13 | Verificações funcionais. | Abertura, exibição ou execução de ações de escopo delimitado. Aprovar um caso não significa validar todo o serviço relacionado. |
| F01–F14 | Itens do inventário de funções. | Não são quatorze execuções adicionais. Identificam as funções cuja presença foi investigada. |
| RR01 | Recarga real. | Recarga de R$ 2,70 e conferência do total, do estado da solicitação e do tempo de atualização informado. |
| TE01–TE08 | Observações de tempo de resposta. | Oito registros, separados por operação e rede. As origens são detalhadas na tabela e no CSV. |
| AC01 | Ampliação de fonte. | O aplicativo não acompanhou a ampliação da fonte do sistema no cenário observado. |
| AC04 | Triagem de contraste. | Estimativas em quadros de gravação privada; não é uma auditoria completa de acessibilidade. |
| RF01 | Perda de conexão e retorno da rede. | Avalia o aviso de problema e a retomada da consulta. |
| RF02/CF08 | Observações complementares após encerramento/reabertura. | Não comprovam uma transação interrompida em andamento e não acrescentam um segundo cenário concluído ao denominador de M13. |

Os números dos identificadores seguem a organização dos registros da sessão. Por exemplo, a presença de AC01 e AC04 não significa que AC02 e AC03 tenham sido aprovados: os testes com TalkBack não foram realizados.

### `resultados_por_metrica.md` — cálculo e interpretação

Transforma os registros em resultados M1–M15 e explica o que cada resultado permite concluir. As tabelas distinguem o valor calculado, a classificação descritiva e os limites da avaliação.

| Métrica | O que procurar no arquivo |
| --- | --- |
| M1 — Conclusão sem ajuda | P01: 3/3 tarefas; P02: 1/1. Ambos com 100% em seus respectivos conjuntos, que são diferentes. |
| M2 — Razão de tempo | 71/30 ≈ 2,37 na consulta de linha: nível Bom para essa comparação. |
| M3 — SUS | Soma ajustada 37 × 2,5 = 92,5 pontos, somente para P01. |
| M4 — Acessibilidade | Avaliação parcial, sem percentual global; fonte, contraste e itens não avaliados são distinguidos. |
| M5 — Erros por tarefa | P01 relatou 0 erros em 3 tarefas; não há contagem de erros de P02. |
| M6 — Entradas inválidas | 5/5 casos tratados no critério operacional adotado. |
| M7 — Completude funcional | Presença verificada em 12 de 14 funções. As outras duas não foram verificadas integralmente, sem prova de ausência. |
| M8 — Corretude funcional | 13/13 verificações compatíveis com o esperado em seus escopos; sem validação integral de todas as regras e fluxos. |
| M9 — Divergências | Conferência da recarga e de uma viagem conhecida; sem conciliação completa após uso na catraca. |
| M10 — Atualização da recarga | Uma execução em 1 s, conforme medição documentada informada por P01, dentro do critério de 60 s. |
| M11 — Tempo de resposta | Valores separados por operação; o mapa apresentou 5,3 s, o maior tempo registrado. |
| M12 — Comparação entre redes | Razões móvel/Wi-Fi calculadas, mas sem simular rede limitada controlada. |
| M13 — Recuperação após falha | RF01 não atendeu ao critério composto: houve retomada manual, mas não aviso sobre o problema. |
| M14 — Falhas espontâneas | 0/3 operações com falha em RN01. |
| M15 — Disponibilidade observada | 3/3 acessos bem-sucedidos na única janela observada. |

A parte final relaciona os resultados a Q1–Q12. “Parcial” ou “inconclusivo” significa que a evidência disponível não sustenta toda a conclusão pretendida, não que o aplicativo necessariamente falhou.

### `respostas_sus.csv` — respostas individuais e ajuste da pontuação

CSV é um arquivo de texto tabular, que pode ser visualizado no GitHub ou aberto em uma planilha. Neste arquivo, cada linha corresponde a **uma afirmação respondida por P01**, não a um participante diferente.

| Coluna | Significado |
| --- | --- |
| `registro` | Código da aplicação do questionário: SU01. |
| `participante` | Código da pessoa que respondeu: P01. |
| `item` | Posição da afirmação, de 1 a 10. |
| `afirmacao_adaptada` | Redação em português apresentada durante a coleta. |
| `resposta` | Resposta na escala de 1 a 5, de discordo totalmente a concordo totalmente. |
| `polaridade` | Indica se concordar com o item contribui positiva ou negativamente para a avaliação de facilidade de uso. |
| `regra_ajuste` | Regra aplicada: resposta menos 1 nos itens ímpares; 5 menos resposta nos pares. |
| `contribuicao_ajustada` | Valor do item depois da aplicação da regra, entre 0 e 4. |
| `origem` | Como a resposta foi registrada. |

Para conferir o resultado, some as dez contribuições ajustadas: **37**. Multiplique por **2,5**: **92,5 pontos**. O SUS não é calculado pela média simples das respostas nem representa 92,5% de sucesso nas tarefas. A redação usada foi adaptada; não foi identificada tradução validada adotada na coleta.

### `tempos_de_resposta.csv` — tempos de três tipos diferentes

Apesar do nome, o arquivo reúne os tempos usados em M2, M10 e M11. A coluna `tipo_tempo` diferencia o fenômeno medido.

| Registros | Tipo | O que medem |
| --- | --- | --- |
| TT01 e TT02 | `tarefa` | Duração completa da consulta de linha por P01 e P02. |
| TE01–TE08 | `resposta_operacao` | Espera entre comando e resultado de uma operação, excluindo a navegação anterior e a escolha de opções. |
| TR01 | `atualizacao_recarga` | Intervalo de disponibilização do crédito no aplicativo após a confirmação do Pix. |

TT01/TT02 correspondem à comparação descrita em TL01; TR01 corresponde à recarga descrita em RR01. A diferença entre os códigos apenas distingue uma linha de tempo do relato mais amplo do teste.

| Coluna | Significado |
| --- | --- |
| `registro` | Identificador da observação temporal. |
| `metrica` | Métrica diretamente associada ao registro. Os pares TE também sustentam a comparação exploratória M12. |
| `tipo_tempo` | Duração de tarefa, resposta de operação ou atualização de recarga. |
| `participante` | Código da pessoa associada à execução. |
| `operacao` | Ação a que o tempo se refere. |
| `rede` | Rede registrada. Campo vazio não significa ausência de internet: significa que a rede não foi confirmada para aquela observação. |
| `tempo_segundos` | Duração numérica em segundos. |
| `n_observacoes` | Quantidade de observações representada pela linha: uma em cada registro desta coleta. Não é tamanho de um grupo de usuários. |
| `precisao` | Informa se o valor é aproximado ou como sua precisão foi relatada. |
| `origem` | Relato, medição informada ou inspeção de gravação privada. |
| `observacao` | Condições e ressalvas específicas do registro. |

Os CSV usam vírgula para separar campos e ponto decimal: `3.1` significa 3,1 segundos. Se uma planilha mostrar tudo em uma coluna, importe o arquivo como UTF-8 e selecione vírgula como delimitador. Os valores são estáticos; o CSV não executa fórmulas automaticamente.

## Exemplos de como conferir uma conclusão

### Consulta de linha: do tempo à M2

1. Em TL01, confira a descrição da tarefa e a confirmação de mesmos marcos e ausência de dicas.
2. No CSV de tempos, localize TT01 = 30 s e TT02 = 71 s.
3. Calcule 71/30 ≈ 2,37.
4. Em resultados por métrica, confira a classificação Bom e a limitação de uma única tarefa comparável.

Os 30 s da tarefa não devem ser comparados diretamente aos 2,9 s de TE06: TE06 mede apenas a resposta de uma etapa, não o tempo completo de navegação.

### Recarga: duas métricas a partir do mesmo evento

RR01 registra total inicial de R$ 10,70, recarga de R$ 2,70 e total final de R$ 13,40. A conta **10,70 + 2,70 = 13,40** sustenta a conferência parcial de M9.

TR01 registra **1 s** para a atualização, conforme medição documentada por P01. Isso sustenta M10: **1 recarga no limite / 1 realizada × 100 = 100%**. Não é estimativa de memória; o registro original, porém, não foi enviado para análise durante a sessão. Esse evento não mede a gravação do crédito no cartão físico nem sua utilização na catraca.

### Recuperação: por que M13 ficou em 0%

RF01 exigia **informar o problema e permitir retomada sem perda ou duplicidade**. O aplicativo retomou a consulta após atualização manual, mas não informou a perda de conexão. Portanto, nenhum dos cenários concluídos satisfez todos os componentes: **0/1 × 100 = 0%**.

Esse resultado não significa que foi impossível recuperar a consulta. A recuperação funcional ocorreu; a reprovação foi do critério composto, pela ausência de aviso.

## Cuidados para interpretar os números

- **Não verificado não é zero.** Um campo vazio não deve virar zero em um cálculo. Uma função não testada não deve ser marcada como ausente.
- **Presença não é corretude integral.** Em M7, procura-se evidência de que a função existe ou é acessível. Em M8, verifica-se um resultado esperado no escopo definido para cada caso.
- **Uma janela não representa o serviço inteiro.** Os 100% de M15 descrevem três tentativas de uma única janela; não a disponibilidade permanente do aplicativo.
- **Uma observação não mostra a variação do tempo.** M11 não fornece repetibilidade nem P90 útil por operação. TE07/TE08 foram informados por P01 como iguais aos tempos Wi-Fi, sem nova gravação analisada.
- **Dados móveis não equivalem a rede limitada controlada.** Os quocientes de M12 são exploratórios, sem nota para o cenário original de rede limitada.
- **Classificações são locais.** Os níveis do plano são aplicados descritivamente à amostra; não foi calculada uma média global de O1–O4.

## Por que não há vídeos nem imagens

A documentação pública preserva os registros textuais e os cálculos, sem publicar gravações, capturas ou links para os arquivos privados. As telas gravadas continham outras informações do celular. Assim, é possível conferir os cálculos e a ligação entre os registros, mas não reinspecionar os vídeos a partir desta pasta.

Ao usar estas evidências no artigo ou em uma apresentação, mantenha a identificação P01/P02 e a distinção entre dado relatado, medido e observado em gravação privada. Não atribua uma verificação independente a um registro que só está disponível por relato.
