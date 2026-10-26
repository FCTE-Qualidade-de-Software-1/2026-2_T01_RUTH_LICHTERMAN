# Resultados e cálculos por métrica

Fonte dos dados: [registro dos testes](registro_dos_testes.md), [respostas SUS](respostas_sus.csv) e [tempos](tempos_de_resposta.csv). As faixas são as do [plano de pontuação](../../docs/fase-2/niveis-pontuacao.md), aplicadas descritivamente à amostra. “Excelente” não certifica qualidade global ou representatividade estatística.

## O1 — Capacidade de interação

| Métrica | Dado e cálculo | Situação e classificação | Limite |
| --- | --- | --- | --- |
| M1 — Conclusão sem ajuda | RN01/P01: 3/3 × 100 = 100%. TL01/P02: 1/1 × 100 = 100%. | Calculada por participante; Excelente (3) em cada conjunto. | P01 por autorrelato retrospectivo, após familiarização. Não agregar como se ambos executassem o mesmo conjunto de tarefas. |
| M2 — Razão de tempo | TL01: 71/30 = 2,3666..., ou 2,37. Com uma tarefa comparável, a média das razões é essa única razão. Hipótese: até 3 × 30 = 90 s; 71 s está dentro do limite. | Calculada para uma tarefa; Bom (2), pois > 2 e ≤ 3. | Uma pessoa por perfil, sem comparação populacional. Marcos equivalentes confirmados por P01; telas exatas não detalhadas. |
| M3 — SUS | SU01: soma ajustada = 37; 37 × 2,5 = 92,5 pontos. Ímpares: resposta − 1; pares: 5 − resposta. | Calculada somente para P01; Excelente (3), pois ≥ 80. | Redação adaptada, sem tradução validada identificada. P02 não respondeu. Não é percentual. |
| M4 — Checklist de acessibilidade | AC01: fonte não se ampliou. AC04: contraste aproximado de 11:1, 14:1 e 3,7:1. TalkBack e alvos de toque sem avaliação. | Parcial; percentual e nota global não calculados. | Checklist/denominador incompletos; triagem de contraste não estabelece conformidade normativa definitiva. |
| M5 — Erros por tarefa | RN01/P01: 0 erros / 3 tarefas = 0 erro por tarefa. | Calculada para P01; Excelente (3), pois ≤ 0,2. | Autorrelato retrospectivo. Erros de P02 não informados; não registrar zero para P02. |
| M6 — Entradas inválidas | CI01–CI05: 5 casos bloqueados com orientação / 5 testados × 100 = 100%. | Calculada no conjunto; Excelente (3), pois ≥ 95%. | Orientação contextual aceita nos casos de valor. CI05 bloqueou na confirmação final. Não cobre todas as entradas possíveis. |

## O2 — Adequação funcional

| Métrica | Dado e cálculo | Situação e classificação | Limite |
| --- | --- | --- | --- |
| M7 — Completude funcional | Inventário F01–F14: evidência de presença em 12 funções, duas sem verificação integral. 12/14 × 100 ≈ 85,71% do inventário com presença verificada. | Parcial; 85,71% descreve cobertura da verificação, não completude definitiva do produto. Sem nota global. | As duas funções não verificadas não foram demonstradas ausentes. Presença pode ser relatada ou limitada ao acesso ao fluxo. |
| M8 — Corretude funcional | CF01–CF13: 13/13 resultados compatíveis com os resultados esperados de escopo restrito = 100% nesse conjunto. | Cálculo local disponível; cobertura funcional parcial, sem nota global de corretude do aplicativo. | Abrir formulário não valida salvamento. Não foram concluídos todos os fluxos nem testadas todas as regras de negócio. |
| M9 — Divergências | RR01: 10,70 + 2,70 = 13,40. CF02: uma viagem reconhecida e considerada correta por P01. Nenhuma divergência identificada nessas conferências. | Parcial; sem nota global. | Sem reconciliação completa após uso na catraca. Não transformar ausência de divergência observada em prova de exatidão de todo o extrato/saldo físico. |
| M10 — Atualização em até 60 s | RR01/TR01: 1 s, medido e documentado segundo P01. 1 recarga no limite / 1 realizada × 100 = 100%. | Calculada na amostra única; Excelente (3), pois ≥ 98%. | Registro original não analisado independentemente. Evento é crédito no aplicativo, não atualização física na catraca. |

## O3 — Eficiência de desempenho

M11: com uma observação por operação/condição, a média local coincide com o valor observado. Não há estimativa de repetibilidade, variabilidade ou P90 útil por operação. Não se faz média geral misturando operações diferentes.

| Operação | Wi-Fi (s) | Móvel (s) | Cálculo móvel/Wi-Fi (M12 exploratória) | Faixa M11 em Wi-Fi, apenas descritiva |
| --- | ---: | ---: | --- | --- |
| Abrir extrato | 3,1 | 3,0 | 3,0/3,1 ≈ 0,97 | Satisfatório (1): > 3 e ≤ 5 s. |
| Gerar código Pix | 3,0 | 2,9 | 2,9/3,0 ≈ 0,97 | Bom (2): > 2 e ≤ 3 s. |
| Abrir mapa com paradas | 5,3 | 5,3 | 5,3/5,3 = 1,00 | Insuficiente (0): > 5 s. |
| Abrir detalhes completos da linha | 2,9 | 2,9 | 2,9/2,9 = 1,00 | Bom (2): > 2 e ≤ 3 s. |

Os tempos são aproximados. TE07/TE08 foram informados por P01 como iguais aos respectivos tempos Wi-Fi, sem nova gravação analisada. As diferenças de 0,1 s não sustentam superioridade de uma rede.

**M12:** os quocientes acima são calculáveis para Wi-Fi/dados móveis, mas o procedimento não reproduziu rede limitada controlada. Portanto, não se atribui a eles a nota da métrica original de degradação em rede limitada. A hipótese completa Q9 não foi verificada nesse aspecto.

## O4 — Confiabilidade

| Métrica | Dado e cálculo | Situação e classificação | Limite |
| --- | --- | --- | --- |
| M13 — Recuperação após falha | RF01: 0 cenário com aviso e retomada sem perda/duplicidade / 1 cenário concluído × 100 = 0%. | Calculada nesse cenário; Insuficiente (0), pois < 50%. | Houve retomada manual e dados visualmente preservados; faltou informação do problema. Não é 100% de impossibilidade de recuperação. CF08/RF02 não adicionam cenário de transação interrompida comprovado. |
| M14 — Falhas espontâneas | RN01: 0 operações com falha / 3 executadas × 100 = 0%. | Calculada na rodada; Excelente (3), pois ≤ 2%. | Três tentativas; interrupções provocadas e rejeições esperadas excluídas. Não estima taxa global. |
| M15 — Disponibilidade observada | RN01: 3 tentativas bem-sucedidas / 3 tentativas × 100 = 100%. | Calculada na janela; Excelente (3), pois ≥ 99%. | Uma janela em 23/10/2026, aproximadamente 13h30. Não há SLA, monitoramento contínuo ou cobertura dos demais horários. |

## Interpretação das questões

| Questão | Resposta permitida pelos registros |
| --- | --- |
| Q1 — Conclusão e tempo | Conclusão sem ajuda nas tarefas de cada participante e razão 2,37 na comparação de linha. Favorável nessa tarefa; conjunto completo de tarefas entre perfis não verificado. |
| Q2 — Facilidade percebida | SUS 92,5, favorável para P01; P02 sem SUS. |
| Q3 — Inclusividade e assistência | Inconclusiva no conjunto; fonte não acompanhou o sistema e checklist ficou incompleto. |
| Q4 — Prevenção de erros | P01 relatou zero erros em RN01; os cinco casos inválidos foram tratados. Sem resultado de erros de P02. |
| Q5 — Funções previstas | Duas funções sem verificação integral; não concluir ausência nem completude definitiva. |
| Q6 — Resultados esperados | Compatíveis nos treze casos de escopos delimitados; corretude integral dos fluxos permanece sem demonstração. |
| Q7 — Coerência das informações | Coerência na recarga e na viagem conhecida; ciclo após uso na catraca não avaliado. |
| Q8 — Recarga no prazo | Uma execução em 1 s, segundo medição documentada por P01; compatível com o limite adotado de 60 s. |
| Q9 — Resposta e rede | Nem toda operação Wi-Fi ficou em até 3 s: extrato 3,1 s e mapa 5,3 s. Rede limitada controlada não testada. |
| Q10 — Recuperação | RF01 não satisfez o critério composto por falta de aviso, apesar de retomada manual bem-sucedida. |
| Q11 — Frequência de falhas | Compatível com a hipótese apenas na pequena rodada normal: 0/3 falhas. |
| Q12 — Disponibilidade | 3/3 sucessos na janela; horários distintos não observados. |

## Julgamento e limitações

Não se calcula média global dos quatro objetivos: não houve mínimo de observações previamente fixado e a cobertura é parcial. Os resultados apontam oportunidades de melhoria na ampliação de fonte, no aviso de perda de rede e na retomada da consulta. O tempo de abertura do mapa merece investigação, sem atribuição causal ao aplicativo, à rede ou aos serviços associados com os dados disponíveis.

As recomendações são propostas, não melhorias já implementadas. Esta pasta não acrescenta observações novas nem transforma relatos em medições independentes. PSM/esforço do projeto não foi medido aqui.
