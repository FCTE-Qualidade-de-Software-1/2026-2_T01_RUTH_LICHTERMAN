# Protótipo de melhoria — BRB Mobilidade

Equipe Ruth Lichterman. Protótipo concluído em 15/11/2026; documentação organizada em 16/11/2026.

**[Abrir o protótipo navegável de A1 e A2](https://www.figma.com/proto/imCHuQ8h2wmrkuvHPtCjcE?node-id=6-143&starting-point-node-id=6%3A143)** · [Arquivo no Figma](https://www.figma.com/design/imCHuQ8h2wmrkuvHPtCjcE)

O acesso por link permite visualizar, sem editar. Esta entrega documenta a ação de melhoria prevista na [issue #53](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/issues/53).

## Objetivo e justificativa

Foi desenvolvido um protótipo de alta fidelidade para as ações A1 e A2 do artigo. A interface foi reconstruída em camadas editáveis a partir das referências do aplicativo, usando dados fictícios.

| Ação | Achado da avaliação | Representação no protótipo |
| :--- | :--- | :--- |
| A1 — Comunicação e recuperação de interrupções | No cenário RF01, o aplicativo continuou carregando sem informar a perda de conexão; a atualização manual permitiu retomar a consulta (M13) | Aviso após 8 s nos fluxos simulados de consulta e recarga, botão “Tentar novamente” e retomada com os dados de demonstração preservados |
| A2 — Ampliação de fonte e contraste | A fonte não acompanhou a ampliação configurada no sistema; o contraste do botão foi estimado em vídeo comprimido, sem conclusão normativa sobre o aplicativo (M4) | Telas em 100% e 200%, conteúdo com rolagem e botão principal com texto branco sobre #006CA8, contraste de 5,66:1 |

Os achados de origem estão no [registro dos testes](../gqm/registro_dos_testes.md) e nos [resultados por métrica](../gqm/resultados_por_metrica.md).

## Como apresentar

1. Abra o link navegável acima. A apresentação começa na tela inicial com fonte de 100%.
2. Para A1, entre em **Bilhetagem**, abra o extrato, aguarde o aviso de conexão e clique em **Tentar novamente**. Na recarga, avance pela escolha do valor e confirmação para observar a interrupção simulada e a nova tentativa.
3. Na tela inicial, clique em **A+ Fonte**, no topo, para abrir a versão de 200% e navegar pelas telas ampliadas.
4. Volte à tela inicial ampliada e clique em **A− Fonte** para retornar ao início de A1, em 100%.
5. Os pontos de partida C1–C4, disponíveis no modo de apresentação do Figma, permitem demonstrar separadamente consulta interrompida, recarga interrompida, reabertura e retorno após bloqueio.

Os controles A+/A− são recursos da demonstração. A recomendação para o aplicativo real continua sendo respeitar a preferência de fonte do Android. A ampliação se aplica aos textos da interface representados, mantendo a arte do cartão e a barra do sistema.

## Arquivos desta pasta

| Arquivo | Conteúdo |
| :--- | :--- |
| [verificacao.md](verificacao.md) | Conferência dos fluxos, fonte, contraste e limites da simulação |
| [prototipo_sem_conexao.png](imagens/prototipo_sem_conexao.png) | Tela de A1 com mensagem e ação de nova tentativa, exportada do Figma |
| [prototipo_fonte_200.png](imagens/prototipo_fonte_200.png) | Tela inicial de A2, com fonte ampliada, contraste proposto e controle de retorno |

As figuras são do protótipo e usam dados fictícios. Não são capturas de dados pessoais das sessões de medição.

## Alcance da entrega

O Figma simula estados e navegação; não detecta a rede do aparelho, não processa pagamentos nem implementa persistência ou prevenção de duplicidade em produção. Os cenários de reabertura e bloqueio são representados por telas e pontos de partida, sem fechamento ou bloqueio real do Android.

Os resultados originais de M4 e M13 permanecem inalterados. A conferência do protótipo não corresponde a nova coleta GQM nem a validação com participantes. A3 (desempenho do mapa) e A4 (ampliação da avaliação) permanecem como propostas futuras.

### Histórico de Versão

| Versão | Data | Descrição | Autor | Revisor |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 16/11/2026 | Registro da entrega do protótipo de A1 e A2 | [Lucas Branco](https://github.com/lucasbbranco) | — |
