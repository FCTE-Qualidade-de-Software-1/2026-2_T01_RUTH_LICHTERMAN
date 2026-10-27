# Descrição do Produto

## 1. O que é o BRB Mobilidade

O BRB Mobilidade é um serviço de gestão do Cartão Mobilidade do Distrito Federal e de acesso digital a funcionalidades do transporte público coletivo. Funciona como aplicativo móvel para iOS e Android e é o foco deste estudo. O cartão físico, os validadores e os processos de bilhetagem são considerados apenas quando ajudam a entender a experiência do usuário no aplicativo [1, 2].

O aplicativo busca facilitar o acesso digital aos serviços do cartão. Sem ele, consultas e operações de crédito dependeriam de atendimento presencial ou de outros canais, o que pode dificultar a vida do usuário.

## 2. Funcionalidades

- **Cadastro:** conta criada com e-mail, celular e CPF. Se já houver cartão vinculado ao CPF, o aplicativo o identifica sozinho. Cada pessoa tem um único cartão. Quem não tem cartão faz um pré-cadastro e retira o cartão físico presencialmente [5].
- **Recarga:** exclusivamente por Pix, nas opções "Recarregar pra mim" e "Recarregar pra outra pessoa" (neste caso, informa-se o número do cartão do beneficiário). O saldo aparece no aplicativo em até 1 minuto e o crédito chega aos validadores em até 5 minutos [4].
- **Consultas:** saldo, histórico de recargas e extrato de utilização, com dias e horários de uso do cartão.
- **Gestão do cartão:** atualização de dados cadastrais, bloqueio de cartão perdido e pedido de segunda via, com retirada presencial em pontos indicados no aplicativo.
- **Linhas de ônibus:** busca por barra de pesquisa ou mapa, com itinerários, paradas, localização dos ônibus em tempo real e horários de partida. O aplicativo não informa a previsão de chegada ao destino do passageiro.

## 3. Público-alvo e ambiente de uso

O público são usuários do transporte público do DF que usam o Cartão Mobilidade, entre adolescentes, adultos e idosos, com níveis variados de familiaridade digital. Adolescentes usam o serviço em deslocamentos escolares, adultos para trabalho e estudos, e idosos conforme suas necessidades de deslocamento.

O uso acontece no celular, na rotina de deslocamento. Recargas, consultas de saldo e extrato e a localização dos ônibus dependem de conexão com a internet. O suporte é feito por chatbots e pela central telefônica (61) 3120-9500 [3].

## 4. Tecnologias e integrações

- **Pix:** recargas processadas por API e webhooks bancários, com confirmação em tempo real [5].
- **Mapas e GPS:** mapa interativo e acompanhamento da frota em tempo real. Os dados são exportados em GTFS para plataformas como Cittamobi, Moovit e "DF no Ponto" [6, 7].
- **Integração tarifária:** o aplicativo aplica as regras da Semob-DF, que permitem até 2 transbordos (3 embarques) em 3 horas, sob o teto de R$ 5,50 [7].
- **Bilhetagem (SBE):** após o Pix, a transação vai ao banco de dados central do SBE, que valida o pagamento e atualiza a conta na nuvem. Cada validação no veículo registra data, hora, linha e geolocalização, e esses dados voltam ao aplicativo como extrato de utilização [2, 8].

## 5. ODS relacionados

O projeto contribui de forma indireta para dois Objetivos de Desenvolvimento Sustentável, com metas e indicadores conforme o IPEA [10, 11]. A avaliação não calcula os indicadores oficiais, mas produz evidências sobre aspectos do aplicativo que influenciam o que eles medem.

| ODS e meta | Indicador | Pertinência ao BRB Mobilidade |
| :--- | :--- | :--- |
| **ODS 11, meta 11.2:** acesso a sistemas de transporte seguros, acessíveis, sustentáveis e a preço acessível para todos, com atenção a idosos e pessoas com deficiência. | **11.2.1:** proporção da população com acesso adequado ao transporte público, por sexo, idade e pessoas com deficiência. | O aplicativo é parte do acesso ao transporte público no DF: permite recarregar, consultar saldo e linhas e acompanhar ônibus. Se o passageiro não consegue operá-lo sozinho, o acesso tarifário e à informação de viagem fica comprometido, em especial para quem tem menos familiaridade digital. A avaliação traz evidências de capacidade de interação, acessibilidade e recarga no prazo. |
| **ODS 16, meta 16.6:** instituições eficazes, responsáveis e transparentes em todos os níveis. | **16.6.2:** proporção da população satisfeita com sua última experiência de serviços públicos. | O aplicativo é um canal de serviço público de bilhetagem. Saldos corretos, serviço disponível e comunicação clara de falhas determinam a confiança do passageiro e a necessidade de atendimento presencial. A avaliação traz evidências de corretude, disponibilidade, recuperação após falhas e percepção de uso. |

## 6. Referências

> [1] URBI MOBILIDADE. *BRB assume bilhetagem do transporte público do Distrito Federal*. Brasília: Urbi, 2019. Disponível em: <https://urbimobilidade.com.br/brb-assume-bilhetagem>. Acesso em: 2026.

> [2] SECRETARIA DE ESTADO DE TRANSPORTE E MOBILIDADE DO DF (SEMOB-DF). *Bilhetagem Eletrônica e Cartão Mobilidade*. Brasília: Semob-DF, 2025. Disponível em: <https://www.semob.df.gov.br/bilhete-unico>. Acesso em: 2026.

> [3] BANCO DE BRASÍLIA (BRB). *BRB Mobilidade diversifica meios de pagamento e moderniza atendimento aos usuários*. Brasília: BRB Imprensa, 2024.

> [4] BANCO DE BRASÍLIA (BRB). *BRB Mobilidade celebra 5 anos de inovação do sistema de transporte público do DF*. Brasília: BRB Imprensa, 2024.

> [5] CLUBE DO ÔNIBUS. *Cartão Mobilidade DF: Guia de Informações Úteis em 2025*. 2025. Disponível em: <https://clubedoonibus.com.br/cartao-mobilidade-df/>. Acesso em: 2026.

> [6] ASSOCIAÇÃO NACIONAL DAS EMPRESAS DE TRANSPORTES URBANOS (NTU). O Mapa das Tecnologias de Bilhetagem no Brasil. *Revista NTU Urbano*, ed. 26, 2025.

> [7] SECRETARIA DE ESTADO DE TRANSPORTE E MOBILIDADE DO DF (SEMOB-DF). *Perguntas Frequentes da Semob-DF: Regras de Integração e Tarifas*. Brasília: Semob-DF, 2025.

> [8] CONTROLADORIA-GERAL DO DISTRITO FEDERAL (CGDF). *Relatório de Auditoria nº 04/2022 – DIAPC/COATP/SUBCI/CGDF: Avaliação do Sistema de Bilhetagem Automática BRB/SEMOB*. Brasília: CGDF, 2023.

> [9] ORGANIZAÇÃO DAS NAÇÕES UNIDAS. *Objetivos de Desenvolvimento Sustentável 10 e 11*. Disponível em: <https://brasil.un.org/pt-br/sdgs/10> e <https://brasil.un.org/pt-br/sdgs/11>.

> [10] INSTITUTO DE PESQUISA ECONÔMICA APLICADA (IPEA). *ODS 11 – Cidades e Comunidades Sustentáveis*. Disponível em: <https://ipea.gov.br/ods/ods11.html>. Acesso em: 26 out. 2026.

> [11] INSTITUTO DE PESQUISA ECONÔMICA APLICADA (IPEA). *ODS 16 – Paz, Justiça e Instituições Eficazes*. Disponível em: <https://ipea.gov.br/ods/ods16.html>. Acesso em: 26 out. 2026.

---

### Histórico de Versão

| Versão | Data       | Descrição                | Autor       | Revisor     |
| :----- | :--------- | :----------------------- | :---------- | :---------- |
| 1.0    | 20/10/2026 | Criação da descrição     | [Letícia Lopes](https://github.com/leticialopes20) | [Arthur Fernandes](https://github.com/arthurfernandesj) |
| 1.1    | 26/10/2026 | ODS 11 e 16 com metas, indicadores e justificativa de pertinência | [Daniel Sousa](https://github.com/daniel-de-sousa) | [Letícia Lopes](https://github.com/leticialopes20) |
