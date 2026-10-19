# Cria as labels, os milestones e as issues do projeto no GitHub.
#
# Requisitos: GitHub CLI (gh) instalado e autenticado.
#   1. Instale: winget install --id GitHub.cli
#   2. Autentique: gh auth login
#
# Uso, na raiz do repositório:
#   powershell -ExecutionPolicy Bypass -File scripts\criar_issues.ps1 -DryRun   (só mostra o que seria criado)
#   powershell -ExecutionPolicy Bypass -File scripts\criar_issues.ps1           (cria de verdade)
#
# Pode ser executado mais de uma vez: labels, milestones e issues que já existem
# (mesmo título) são ignorados.

param([switch]$DryRun)

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

$repo = "FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN"
$dadosPath = Join-Path $PSScriptRoot "issues.json"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    Write-Host "GitHub CLI (gh) não encontrado. Instale com: winget install --id GitHub.cli" -ForegroundColor Red
    exit 1
}
gh auth status *> $null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Você não está autenticado no gh. Rode: gh auth login" -ForegroundColor Red
    exit 1
}

$issues = Get-Content -Raw -Encoding UTF8 $dadosPath | ConvertFrom-Json
Write-Host "Issues no arquivo: $($issues.Count)"

# ---------------- Labels ----------------
$labels = [ordered]@{
    "fase-1"     = "1d76db"
    "fase-2"     = "0e8a16"
    "fase-3"     = "fbca04"
    "fase-4"     = "d93f0b"
    "artigo"     = "5319e7"
    "gitpage"    = "006b75"
    "gestao"     = "b60205"
    "retroativa" = "c5def5"
}
foreach ($nome in $labels.Keys) {
    if ($DryRun) { Write-Host "[dry-run] label $nome"; continue }
    gh label create $nome --color $labels[$nome] --repo $repo --force *> $null
    Write-Host "Label ok: $nome"
}

# ---------------- Milestones ----------------
$milestones = @(
    @{ title = "E1: Fases 1 e 2"; due = "2026-10-27T02:59:00Z"; desc = "Entrega 1 (26/10/2026): Fases 1 e 2, GitPage, 1a versão do artigo, tabela de contribuição e release E1." },
    @{ title = "E2: Fases 3 e 4"; due = $null; desc = "Entrega 2: Fases 3 e 4, ação de melhoria, versão final do artigo e release E2." }
)
$existentes = @()
if (-not $DryRun) {
    $existentes = (gh api "repos/$repo/milestones?state=all&per_page=100" | ConvertFrom-Json) | ForEach-Object { $_.title }
}
foreach ($m in $milestones) {
    if ($existentes -contains $m.title) { Write-Host "Milestone já existe: $($m.title)"; continue }
    if ($DryRun) { Write-Host "[dry-run] milestone $($m.title)"; continue }
    $args_ = @("api", "repos/$repo/milestones", "-f", "title=$($m.title)", "-f", "description=$($m.desc)")
    if ($m.due) { $args_ += @("-f", "due_on=$($m.due)") }
    gh @args_ *> $null
    if ($LASTEXITCODE -ne 0) { Write-Host "Falha ao criar milestone $($m.title)" -ForegroundColor Red; exit 1 }
    Write-Host "Milestone criado: $($m.title)"
}

# ---------------- Issues ----------------
$titulosExistentes = @()
if (-not $DryRun) {
    $titulosExistentes = (gh issue list --repo $repo --state all --limit 500 --json title | ConvertFrom-Json) | ForEach-Object { $_.title }
}
$tmp = [System.IO.Path]::GetTempFileName()
$utf8SemBom = New-Object System.Text.UTF8Encoding $false
$criadas = 0

foreach ($i in $issues) {
    if ($titulosExistentes -contains $i.title) { Write-Host "Já existe, ignorando: $($i.title)"; continue }
    $labelsIssue = ($i.labels -join ",")
    if ($DryRun) {
        $estado = if ($i.closed) { "fechada" } else { "aberta" }
        Write-Host "[dry-run] [$($i.milestone)] [$labelsIssue] ($estado) $($i.title)"
        continue
    }
    [System.IO.File]::WriteAllText($tmp, $i.body, $utf8SemBom)
    $url = gh issue create --repo $repo --title $i.title --body-file $tmp --milestone $i.milestone --label $labelsIssue
    if ($LASTEXITCODE -ne 0) { Write-Host "Falha ao criar: $($i.title)" -ForegroundColor Red; continue }
    $criadas++
    Write-Host "Criada: $url  $($i.title)"
    if ($i.closed) {
        gh issue close $url --repo $repo --reason completed --comment "Tarefa concluída antes da adoção das issues (registro retroativo)." *> $null
        Write-Host "  fechada (retroativa)"
    }
    Start-Sleep -Milliseconds 800
}
Remove-Item $tmp -ErrorAction SilentlyContinue
Write-Host ""
Write-Host "Concluído. Issues criadas nesta execução: $criadas" -ForegroundColor Green
Write-Host "Agora atribua os responsáveis no GitHub (Issues > selecionar > Assignees)."
