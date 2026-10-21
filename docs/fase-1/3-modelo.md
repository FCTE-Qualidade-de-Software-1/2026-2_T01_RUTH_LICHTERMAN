# Modelo de Qualidade

A avaliação do BRB Mobilidade foi organizada em quatro características: usabilidade, adequação funcional, eficiência de desempenho e confiabilidade. Os nomes das características e subcaracterísticas seguem o modelo de qualidade de produto da ISO/IEC 25010:2023 [1]. Cada característica gera objetivos de avaliação (O1 a O8). O modelo GQM (Goal-Question-Metric) é aplicado na [Fase 2](../fase-2/index.md): lá, cada objetivo é detalhado em questões, que são respondidas por métricas.

| Característica | Subcaracterísticas | Objetivos | Onde será observada |
| :--- | :--- | :--- | :--- |
| **Usabilidade** | Reconhecibilidade de adequação, aprendibilidade, operabilidade, proteção contra erros do usuário e acessibilidade | O1 – Facilidade de uso<br>O2 – Acessibilidade<br>O3 – Prevenção de erros do usuário | Navegação, consulta de saldo, acesso às funcionalidades, preenchimento de dados e operações |
| **Adequação funcional** | Completude funcional e correção funcional | O4 – Correção e completude<br>O5 – Consistência das informações | Recargas, consultas de saldo, extrato e histórico; conferência dos dados após consultas e recargas |
| **Eficiência de desempenho** | Comportamento temporal (utilização de recursos e capacidade ficam como extensão, se viáveis na Fase 3) | O6 – Tempo de resposta | Carregamento de telas, consultas e recargas |
| **Confiabilidade** | Ausência de falhas (antiga maturidade), tolerância a falhas, recuperabilidade e disponibilidade | O7 – Estabilidade e recuperação<br>O8 – Disponibilidade dos serviços | Consultas, recargas, retomada após falhas e acesso em diferentes momentos |

Cada objetivo é detalhado (o que analisar, propósito, perspectiva e contexto) na [Fase 2](../fase-2/objetivos.md).

## Escopo e limitação

O foco é o aplicativo e as funcionalidades descritas na [descrição do produto](1-descricao.md). O cartão físico, os validadores e o Sistema de Bilhetagem Eletrônica entram como contexto, quando ajudam a entender a experiência do usuário.

Quando não houver acesso aos registros internos do sistema, os resultados ficam limitados ao comportamento observado nos testes. Eles não representam necessariamente a disponibilidade ou o desempenho global do serviço.

## Referências

> [1] INTERNATIONAL ORGANIZATION FOR STANDARDIZATION. *ISO/IEC 25010:2023: Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Product quality model*. Genebra: ISO, 2023.

---

### Histórico de Versão

| Versão | Data       | Descrição                             | Autor       | Revisor     |
| :----- | :--------- | :------------------------------------ | :---------- | :---------- |
| 1.0    | 20/10/2026 | Criação da descrição     | [Letícia Lopes](https://github.com/leticialopes20) | [Arthur Fernandes](https://github.com/arthurfernandesj) |
| 1.1    | 21/10/2026 | Objetivos O1 a O8 e nomes da ISO/IEC 25010:2023, alinhados ao artigo e à Fase 2 | [Hauedy Wegner](https://github.com/HauedyWS) | |

