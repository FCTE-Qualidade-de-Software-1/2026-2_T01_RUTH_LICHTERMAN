# Verificação do protótipo

Conferência realizada em 15/11/2026; registro organizado em 16/11/2026. [Acesso e instruções de apresentação](README.md).

## Fluxos conferidos

| Item | Resultado observado na simulação |
| :--- | :--- |
| C1 — Consulta interrompida | O aviso de conexão apareceu após a transição configurada de 8 s. “Tentar novamente” passou pelo estado de retomada e exibiu o extrato com os três lançamentos fictícios |
| C2 — Recarga interrompida | O aviso manteve o valor de R$ 2,70 e o cartão final 0000. A nova tentativa passou pela verificação da solicitação e chegou à tela Pix de demonstração |
| C3 — Reabertura | “Continuar recarga” chegou, após verificação, à mesma tela Pix utilizada em C2 |
| C4 — Retorno após bloqueio | “Retomar consulta” chegou ao mesmo extrato restaurado de C1 |
| Ampliação de fonte | As telas de início, extrato, valor da recarga e Pix foram construídas em 100% e 200%, com quebra de linha e rolagem. No percurso ampliado de início e recarga, a rolagem permitiu alcançar “Próximo” e abrir o Pix ampliado |
| Alternância durante a apresentação | Na tela inicial, A+ abriu a versão de 200%; A− retornou à tela de 100% de A1. A ida e a volta foram testadas no navegador, assim como o acesso à recarga ampliada e seu retorno ao início |
| Aviso de conexão em 200% | Texto e botão inspecionados visualmente. A ligação de nova tentativa para o extrato ampliado foi configurada, mas esse clique específico não foi confirmado na conferência |
| Camadas editáveis | Telas construídas com textos, frames, instâncias e vetores; sem imagem de interface completa como fundo |
| Dados de demonstração | Saldo, cartão e lançamentos fictícios; sem CPF, número real de cartão ou código bancário utilizável |

Os quatro cenários de A1 foram percorridos no protótipo. Isso não demonstra detecção real de rede, persistência após encerramento do aplicativo, prevenção real de duplicidade ou execução do protocolo ampliado de M13.

## Contraste do botão principal

O texto branco (#FFFFFF) sobre o preenchimento #006CA8 tem razão de contraste **5,66:1**, calculada pelas cores definidas no projeto, acima do mínimo de 4,5:1 adotado para texto comum.

O cálculo usa luminância relativa: cada canal sRGB é normalizado para o intervalo de 0 a 1 e convertido para valor linear por `c/12,92` quando `c ≤ 0,04045`, ou `((c + 0,055)/1,055)^2,4` nos demais casos. A luminância é `L = 0,2126 R + 0,7152 G + 0,0722 B`. A razão é `(L mais clara + 0,05)/(L mais escura + 0,05)`.

Esse valor se refere ao botão do protótipo. A estimativa anterior de 3,7:1 em vídeo comprimido do aplicativo permanece uma observação exploratória e não foi substituída por essa medida.

## Figuras da entrega

As imagens [A1 — aviso de conexão](imagens/prototipo_sem_conexao.png) e [A2 — fonte ampliada](imagens/prototipo_fonte_200.png) foram exportadas diretamente do Figma em PNG em 16/11/2026. A tela ampliada mostra a posição inicial de uma área rolável; o conteúdo abaixo continua acessível por rolagem na apresentação.

## Limites da verificação

Não houve implementação no BRB Mobilidade, nova rodada com participantes, teste de leitor de tela ou medição física de área de toque. A apresentação de fonte de 200% é simulada por telas equivalentes, com A+/A− na tela inicial; não é uma alteração da configuração real do Android. Não foram atribuídos novos percentuais ou níveis a M4 e M13. Os 8 s são uma configuração da demonstração, não um tempo medido no aplicativo.
