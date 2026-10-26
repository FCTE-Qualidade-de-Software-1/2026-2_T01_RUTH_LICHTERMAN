# Qualidade de Software I — Trabalho Final 2026/2

Repositório do trabalho final da disciplina **Qualidade de Software I**, referente ao semestre 2026/2.

O projeto reúne a documentação do processo de avaliação da qualidade de um produto de software, incluindo a caracterização do produto, a seleção das características de qualidade, a definição dos objetivos de avaliação e a elaboração de questões, hipóteses e métricas.

A documentação é disponibilizada por meio de um site desenvolvido com MkDocs e Material for MkDocs, com publicação planejada no GitHub Pages.

## Integrantes

| Integrante | GitHub |
|---|---|
| Arthur Fernandes | [@arthurfernandesj](https://github.com/arthurfernandesj) |
| Daniel Sousa | [@daniel-de-sousa](https://github.com/daniel-de-sousa) |
| Giovana Fontes | [@GiovanaFontesS](https://github.com/GiovanaFontesS) |
| Hauedy | [@HauedyWS](https://github.com/HauedyWS) |
| Letícia | [@leticialopes20](https://github.com/leticialopes20) |
| Lucas Branco | [@lucasbbranco](https://github.com/lucasbbranco) |

## Links do projeto

- **GitHub Pages:** [Acessar a documentação](https://fcte-qualidade-de-software-1.github.io/2026-2_T01_RUTH_LICHTERMAN/)
- **Repositório GitHub:** [Acessar o repositório](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN)


## Objetivo do trabalho

O objetivo é aplicar um processo de avaliação da qualidade de um produto de software, definindo características de qualidade relevantes e estabelecendo uma estratégia de avaliação fundamentada em objetivos, questões e métricas.

O trabalho contempla a documentação do processo de avaliação e a organização das evidências e dos artefatos produzidos pela equipe.

## Entrega 1

**Data prevista: 26/10/2026**

De acordo com o planejamento da disciplina, a primeira entrega contempla as Fases 1 e 2 do processo de avaliação de produto.

### Fase 1 — Caracterização e avaliação do produto

Esta fase documenta o produto selecionado e a definição das características de qualidade consideradas relevantes para a avaliação.

A documentação deve apresentar, conforme o desenvolvimento realizado pela equipe:

- Identificação e descrição do produto;
- Contexto e objetivos da avaliação;
- Seleção das características de qualidade;
- Justificativas para a seleção das características;
- Referências utilizadas;
- Evidências e informações que fundamentam a avaliação.

### Fase 2 — Definição dos objetivos, questões e métricas

Esta fase estabelece como a avaliação será conduzida, relacionando os objetivos às questões e às métricas por meio da abordagem **Goal-Question-Metric (GQM)**.

A documentação deve contemplar os artefatos desenvolvidos pela equipe, incluindo:

- Objetivos da avaliação;
- Questões de avaliação;
- Hipóteses, quando aplicáveis;
- Definição das métricas;
- Procedimentos de coleta e cálculo;
- Critérios de interpretação e pontuação;
- Representação da estrutura GQM.

Os objetivos, as questões e as métricas devem ser consistentes com as características de qualidade selecionadas na Fase 1.

### Artigo

A Entrega 1 também contempla a primeira versão do artigo, contendo:

- Introdução;
- Referencial teórico;
- Metodologia de desenvolvimento;
- Descrição da Fase 1;
- Descrição da Fase 2.

A versão do artigo deve refletir o trabalho efetivamente realizado pela equipe.

### Contribuição dos integrantes

O projeto também deve apresentar a tabela de contribuição dos integrantes, registrando as atividades realizadas por cada participante e as respectivas evidências, conforme solicitado na disciplina.

## Estrutura do projeto

A documentação está organizada em páginas Markdown, processadas pelo MkDocs.

```text
.
├── .github/
│   └── workflows/
│       └── deploy-pages.yml
├── docs/
│   ├── index.md
│   ├── contribuicao.md
│   ├── referencias.md
│   ├── uso-de-ia.md
│   ├── fase-1/
│   │   └── index.md
│   ├── fase-2/
│   │   ├── index.md
│   │   ├── objetivos.md
│   │   ├── questoes.md
│   │   ├── hipoteses.md
│   │   ├── metricas.md
│   │   ├── niveis-pontuacao.md
│   │   └── grafico-gqm.md
│   ├── artigo/
│   │   ├── introducao.md
│   │   ├── referencial-teorico.md
│   │   └── metodologia.md
│   └── stylesheets/
│       └── extra.css
├── .gitignore
├── mkdocs.yml
├── readme.md
└── requirements.txt
```

### Descrição dos principais arquivos e diretórios

| Arquivo ou diretório | Descrição |
|---|---|
| `docs/index.md` | Página inicial da documentação. |
| `docs/fase-1/` | Documentação da primeira fase do processo de avaliação. |
| `docs/fase-2/` | Objetivos, questões, hipóteses, métricas, critérios de pontuação e representação GQM. |
| `docs/artigo/` | Seções da primeira versão do artigo. |
| `docs/contribuicao.md` | Registro da participação dos integrantes. |
| `docs/referencias.md` | Referências bibliográficas utilizadas. |
| `docs/uso-de-ia.md` | Registro do uso de ferramentas de inteligência artificial, quando aplicável. |
| `docs/stylesheets/extra.css` | Estilos visuais personalizados da documentação. |
| `mkdocs.yml` | Configurações do MkDocs, tema e navegação. |
| `requirements.txt` | Dependências Python necessárias para executar a documentação. |
| `.github/workflows/deploy-pages.yml` | Configuração da automação de publicação, quando habilitada no GitHub. |

## Tecnologias utilizadas

- **Python:** ambiente necessário para executar o MkDocs.
- **MkDocs:** gerador de sites estáticos baseado em Markdown.
- **Material for MkDocs:** tema e componentes visuais da documentação.
- **Markdown:** formato utilizado para escrever as páginas.
- **Git e GitHub:** versionamento e hospedagem do código-fonte.
- **GitHub Pages:** hospedagem da documentação.
- **GitHub Actions:** automação da publicação do site.

## Requisitos para execução local

Antes de iniciar, verifique se você possui:

- Git instalado;
- Python 3 instalado;
- pip disponível para instalar pacotes Python;
- Acesso ao terminal.

Os comandos a seguir consideram um ambiente Linux ou Ubuntu.

### 1. Verificar as instalações

No terminal, execute:

```bash
git --version
python3 --version
python3 -m pip --version
```

Se algum comando não funcionar, instale o componente correspondente antes de continuar.

### 2. Clonar o repositório

Clone o projeto utilizando o endereço HTTPS do repositório:

```bash
git clone https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN.git
```

Entre na pasta criada:

```bash
cd 2026-2_T01_RUTH_LICHTERMAN
```

### 3. Criar um ambiente virtual

É recomendado utilizar um ambiente virtual Python para manter as dependências do projeto isoladas.

```bash
python3 -m venv .venv
```

Ative o ambiente virtual:

```bash
source .venv/bin/activate
```

Depois da ativação, o terminal normalmente exibirá `(.venv)` antes do caminho ou do prompt.

Se o comando `python3 -m venv .venv` falhar no Ubuntu por falta do módulo `venv`, instale-o com:

```bash
sudo apt update
sudo apt install python3-venv
```

Em seguida, repita a criação e a ativação do ambiente virtual.

### 4. Instalar as dependências

Com o ambiente virtual ativado, execute:

```bash
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

Esse procedimento instala as dependências declaradas no arquivo `requirements.txt`.

Se a instalação terminar sem erros, o ambiente estará pronto para executar a documentação.

### 5. Executar o site localmente

Na raiz do projeto, execute:

```bash
python -m mkdocs serve
```

O terminal exibirá um endereço local, normalmente:

```text
http://127.0.0.1:8000/
```

Abra esse endereço no navegador para visualizar o site.

O servidor atualiza a visualização conforme os arquivos da documentação são modificados.

Para encerrar a execução, volte ao terminal e pressione:

```text
Ctrl + C
```

### 6. Gerar a versão estática do site

Para verificar se a documentação pode ser compilada corretamente, execute:

```bash
python -m mkdocs build --strict
```

O MkDocs tentará gerar a versão estática do site no diretório `site/`.

Se a compilação terminar sem erros, a documentação foi construída com sucesso.

A opção `--strict` também transforma avisos do MkDocs em erros. Isso ajuda a identificar problemas de configuração, referências ou navegação antes da publicação.

## Como publicar no GitHub Pages

A publicação depende da configuração do repositório e do workflow existente em `.github/workflows/deploy-pages.yml`.

### 1. Enviar o projeto para o GitHub

Se o repositório remoto já estiver configurado, verifique o estado do projeto:

```bash
git status
```

Adicione os arquivos modificados:

```bash
git add .
```

Crie um commit:

```bash
git commit -m "docs: atualiza documentação do projeto"
```

Envie as alterações para a branch principal:

```bash
git push origin main
```

> Se a branch principal do repositório tiver outro nome, substitua `main` pelo nome correto. Se o projeto já estiver versionado, não execute novamente a inicialização do Git.

### 2. Configurar o GitHub Pages

No GitHub:

1. Abra o repositório do projeto.
2. Acesse **Settings**.
3. Entre em **Pages**.
4. Verifique a configuração de publicação por **GitHub Actions**, conforme o workflow do projeto.
5. Salve as configurações necessárias.

O workflow precisa estar configurado para compilar a documentação e publicar o resultado no GitHub Pages. As permissões do GitHub Actions também devem permitir a publicação.

### 3. Acompanhar a publicação

Depois de enviar as alterações:

1. Acesse a aba **Actions** do repositório.
2. Abra a execução do workflow de publicação.
3. Verifique se todas as etapas terminaram com sucesso.
4. Acesse **Settings → Pages** para consultar o endereço publicado.

O endereço normalmente segue um destes formatos:

```text
https://USUARIO.github.io/NOME_DO_REPOSITORIO/
```

ou, quando o repositório utiliza o formato especial de site de usuário ou organização:

```text
https://USUARIO.github.io/
```

O endereço efetivo depende do nome do repositório e da configuração do GitHub Pages.

## Fluxo de trabalho com Git

Para atualizar a documentação durante o desenvolvimento:

1. Modifique os arquivos `.md` dentro de `docs/`.
2. Execute `python -m mkdocs serve` para conferir as alterações localmente.
3. Execute `python -m mkdocs build --strict` para verificar a compilação.
4. Registre as alterações com Git.
5. Envie os commits para o GitHub.
6. Verifique a execução do workflow de publicação.

Exemplo:

```bash
git status
git add .
git commit -m "docs: atualiza conteúdo da Fase 2"
git push origin main
```

## Organização e manutenção da documentação

A documentação deve acompanhar o desenvolvimento real do trabalho. Sempre que uma fase for atualizada, revise também os links de navegação, as referências e a consistência entre os artefatos.

Em particular:

- As características de qualidade da Fase 1 devem estar relacionadas aos objetivos definidos na Fase 2.
- As questões devem contribuir para responder aos objetivos de avaliação.
- As métricas devem ter definições, procedimentos de cálculo e critérios de interpretação documentados.
- A tabela de contribuição deve refletir as atividades efetivamente realizadas pelos integrantes.
- As referências devem corresponder às fontes realmente consultadas.
- O uso de ferramentas de inteligência artificial deve ser declarado conforme as orientações da disciplina.

## Referências

As referências específicas utilizadas no trabalho devem ser registradas na página [`docs/referencias.md`](docs/referencias.md).

## Disciplina

**Qualidade de Software I — 2026/2**

Trabalho acadêmico desenvolvido em equipe para documentar o processo de avaliação da qualidade de um produto de software.

---