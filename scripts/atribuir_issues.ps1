# Atribui responsáveis e horas às issues e (opcionalmente) as fecha.
#
# Uso, na raiz do repositório:
#   powershell -ExecutionPolicy Bypass -File scripts\atribuir_issues.ps1 -DryRun   (só mostra)
#   powershell -ExecutionPolicy Bypass -File scripts\atribuir_issues.ps1           (aplica)
#
# Regras:
# - "Responsaveis" passa a ser exatamente a lista da tabela: quem não estiver nela é removido da issue.
# - "Estimadas" é preenchido em todas as issues da tabela.
# - "Reais" só deve ser preenchido com as horas que a pessoa confirmou ter gasto.
#   Issues com "Reais" vazio recebem responsável e estimativa, mas NÃO são fechadas.
# - Quem de fato realizou cada tarefa é registrado em docs/gestao/dados/execucao.csv.

param([switch]$DryRun)

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
$repo = "FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN"

# ---------------------------------------------------------------- EDITE AQUI
$tabela = @(
    # E1: Hauedy realizou #38 a #41. Preencha Reais com as suas horas reais para fechar.
    @{ N = 38; Responsaveis = "HauedyWS"; Estimadas = "3"; Reais = "" }
    @{ N = 39; Responsaveis = "leticialopes20"; Estimadas = "1"; Reais = "" }
    @{ N = 40; Responsaveis = "HauedyWS"; Estimadas = "1"; Reais = "" }
    @{ N = 41; Responsaveis = "leticialopes20"; Estimadas = "1,5"; Reais = "" }
    # E1: a fazer
    @{ N = 12; Responsaveis = "arthurfernandesj"; Estimadas = "2"; Reais = "" }
    @{ N = 13; Responsaveis = "GiovanaFontesS"; Estimadas = "2"; Reais = "" }
    @{ N = 14; Responsaveis = "daniel-de-sousa"; Estimadas = "2"; Reais = "" }
    @{ N = 16; Responsaveis = "daniel-de-sousa"; Estimadas = "1"; Reais = "" }
    @{ N = 27; Responsaveis = "GiovanaFontesS"; Estimadas = "1"; Reais = "" }
    @{ N = 32; Responsaveis = "leticialopes20"; Estimadas = "0,5"; Reais = "" }
    @{ N = 37; Responsaveis = "HauedyWS"; Estimadas = "0,5"; Reais = "" }
    @{ N = 42; Responsaveis = "leticialopes20"; Estimadas = "1"; Reais = "" }
    # E2 (estimativas do Planning Poker; responsáveis conforme a contribuição de cada um)
    @{ N = 43; Responsaveis = "arthurfernandesj"; Estimadas = "2"; Reais = "" }
    @{ N = 44; Responsaveis = "arthurfernandesj"; Estimadas = "3"; Reais = "" }
    @{ N = 45; Responsaveis = "daniel-de-sousa"; Estimadas = "2"; Reais = "" }
    @{ N = 46; Responsaveis = "arthurfernandesj"; Estimadas = "1"; Reais = "" }
    @{ N = 47; Responsaveis = "arthurfernandesj"; Estimadas = "2"; Reais = "" }
    @{ N = 48; Responsaveis = "lucasbbranco,daniel-de-sousa"; Estimadas = "5"; Reais = "" }
    @{ N = 49; Responsaveis = "lucasbbranco"; Estimadas = "2"; Reais = "" }
    @{ N = 51; Responsaveis = "arthurfernandesj"; Estimadas = "3"; Reais = "" }
    @{ N = 52; Responsaveis = "GiovanaFontesS"; Estimadas = "2"; Reais = "" }
    @{ N = 53; Responsaveis = "HauedyWS,leticialopes20"; Estimadas = "8"; Reais = "" }
    @{ N = 54; Responsaveis = "GiovanaFontesS"; Estimadas = "5"; Reais = "" }
    @{ N = 55; Responsaveis = "leticialopes20"; Estimadas = "0,5"; Reais = "" }
)

# Issue nova (criada só se ainda não existir uma com o mesmo título)
$novas = @(
    @{
        Titulo = "GitPage: Fases 3 e 4 conforme a versão final do artigo"
        Responsaveis = "HauedyWS"
        Milestone = "E2: Fases 3 e 4"
        Labels = "gitpage,fase-3,fase-4"
        Corpo = @"
## Descrição
Atualizar as páginas das Fases 3 e 4 do GitPage para refletir a versão final do artigo.

## Critério da rubrica
Fases 3 e 4; Premissa 13

## Critério de pronto
- [ ] Páginas das Fases 3 e 4 conferidas contra o artigo final
- [ ] Site compilado sem erros

## Esforço (PSM)
- Horas estimadas: 3
- Horas reais (preencher ao fechar): 
"@
    }
)
# ---------------------------------------------------------------------------

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) { Write-Host "Instale o GitHub CLI: winget install --id GitHub.cli" -ForegroundColor Red; exit 1 }
gh auth status *> $null
if ($LASTEXITCODE -ne 0) { Write-Host "Rode: gh auth login" -ForegroundColor Red; exit 1 }

$tmp = [System.IO.Path]::GetTempFileName()
$utf8 = New-Object System.Text.UTF8Encoding $false

foreach ($l in $tabela) {
    $n = $l.N
    $info = gh issue view $n --repo $repo --json body,state,title,assignees | ConvertFrom-Json
    $corpo = [string]$info.body
    $corpo = [regex]::Replace($corpo, '(Horas estimadas[^\n:]*:)[ \t]*[0-9.,]*', ('$1 ' + $l.Estimadas), 1)
    if ($l.Reais -ne "") {
        $corpo = [regex]::Replace($corpo, '(Horas reais[^\n:]*:)[ \t]*[0-9.,]*', ('$1 ' + $l.Reais), 1)
    }
    $novos = $l.Responsaveis.Split(",") | ForEach-Object { $_.Trim() }
    $atuais = @($info.assignees | ForEach-Object { $_.login })
    $remover = @($atuais | Where-Object { $novos -notcontains $_ })
    $fechar = ($l.Reais -ne "") -and ($info.state -eq "OPEN")
    $acao = if ($fechar) { "atribui, horas e FECHA" } else { "atribui e estima (fica aberta)" }
    $txtRem = if ($remover.Count -gt 0) { " (remove: " + ($remover -join ", ") + ")" } else { "" }
    Write-Host ("#{0} [{1}]{2} est. {3} h: {4} - {5}" -f $n, $l.Responsaveis, $txtRem, $l.Estimadas, $acao, $info.title)
    if ($DryRun) { continue }

    [System.IO.File]::WriteAllText($tmp, $corpo, $utf8)
    $ghArgs = @("issue", "edit", $n, "--repo", $repo, "--add-assignee", $l.Responsaveis, "--body-file", $tmp)
    if ($remover.Count -gt 0) { $ghArgs += @("--remove-assignee", ($remover -join ",")) }
    gh @ghArgs *> $null
    if ($LASTEXITCODE -ne 0) { Write-Host "  falhou ao editar #$n" -ForegroundColor Red; continue }
    if ($fechar) { gh issue close $n --repo $repo --reason completed *> $null }
    Start-Sleep -Milliseconds 600
}

foreach ($nv in $novas) {
    $existe = gh issue list --repo $repo --state all --search ("in:title `"" + $nv.Titulo + "`"") --json title | ConvertFrom-Json
    if (@($existe | Where-Object { $_.title -eq $nv.Titulo }).Count -gt 0) { Write-Host ("Já existe: " + $nv.Titulo); continue }
    Write-Host ("NOVA [{0}]: {1}" -f $nv.Responsaveis, $nv.Titulo)
    if ($DryRun) { continue }
    [System.IO.File]::WriteAllText($tmp, $nv.Corpo, $utf8)
    gh issue create --repo $repo --title $nv.Titulo --body-file $tmp --assignee $nv.Responsaveis --milestone $nv.Milestone --label $nv.Labels
}

Remove-Item $tmp -ErrorAction SilentlyContinue
Write-Host "Concluído." -ForegroundColor Green
