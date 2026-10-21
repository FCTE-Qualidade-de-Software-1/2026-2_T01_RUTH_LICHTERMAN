# Modelo de Qualidade

A avaliação do BRB Mobilidade foi organizada em quatro características: usabilidade, funcionalidade, eficiência e confiabilidade. As subcaracterísticas seguem o modelo de qualidade de produto da ISO/IEC 25010 [1]. Cada característica gera objetivos de avaliação (O1 a O7). O modelo GQM (Goal-Question-Metric) é aplicado na [Fase 2](../fase-2/index.md): lá, cada objetivo é detalhado em questões, que são respondidas por métricas.

| Característica | Subcaracterísticas | Objetivos | Onde será observada |
| :--- | :--- | :--- | :--- |
| **Usabilidade** | Reconhecibilidade da adequação, aprendizibilidade, operabilidade, engajamento, proteção contra erros do usuário e acessibilidade | O1 – Facilidade de uso<br>O2 – Acessibilidade e prevenção de erros | Navegação, consulta de saldo, acesso às funcionalidades, preenchimento de dados e operações |
| **Funcionalidade** | Completude funcional, correção funcional e adequação funcional | O3 – Correção e completude<br>O6 – Consistência das informações | Recargas, consultas de saldo, extrato e histórico; conferência dos dados após consultas e recargas |
| **Eficiência** | Comportamento temporal, utilização de recursos e capacidade | O4 – Desempenho e tempo de resposta | Carregamento de telas, consultas e recargas |
| **Confiabilidade** | Ausência de falhas, tolerância a falhas, recuperabilidade e disponibilidade | O5 – Estabilidade e recuperação<br>O7 – Disponibilidade dos serviços | Consultas, recargas, retomada após falhas e acesso em diferentes momentos |

Cada objetivo é detalhado (o que analisar, propósito, perspectiva e contexto) na [Fase 2](../fase-2/objetivos.md).

## Escopo e limitação

O foco é o aplicativo e as funcionalidades descritas na [descrição do produto](1-descricao.md). O cartão físico, os validadores e o Sistema de Bilhetagem Eletrônica entram como contexto, quando ajudam a entender a experiência do usuário.

Quando não houver acesso aos registros internos do sistema, os resultados ficam limitados ao comportamento observado nos testes. Eles não representam necessariamente a disponibilidade ou o desempenho global do serviço.

## Referências

> [1] INTERNATIONAL ORGANIZATION FOR STANDARDIZATION. *ISO/IEC 25010: Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Product quality model*. Genebra: ISO.

---

### Histórico de Versão

| Versão | Data       | Descrição                             | Autor       | Revisor     |
| :----- | :--------- | :------------------------------------ | :---------- | :---------- |
| 1.0    | 20/10/2026 | Criação da descrição     | [Letícia Lopes](https://github.com/leticialopes20) | [Arthur Fernandes](https://github.com/arthurfernandesj) |

