# Atribui responsáveis e horas às issues concluídas e (opcionalmente) as fecha.
#
# Uso, na raiz do repositório:
#   powershell -ExecutionPolicy Bypass -File scripts\atribuir_issues.ps1 -DryRun   (só mostra)
#   powershell -ExecutionPolicy Bypass -File scripts\atribuir_issues.ps1           (aplica)
#
# Regras:
# - "Estimadas" é preenchido em todas as issues da tabela.
# - "Reais" só deve ser preenchido com as horas que a pessoa confirmou ter gasto.
#   Issues com "Reais" vazio recebem responsável e estimativa, mas NÃO são fechadas.
# - Issues com "Reais" preenchido são fechadas como concluídas.

param([switch]$DryRun)

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
$repo = "FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN"

# ---------------------------------------------------------------- EDITE AQUI
# Responsaveis: logins do GitHub separados por vírgula.
# Reais: deixe "" até a pessoa confirmar quanto tempo gastou.
$tabela = @(
    # Já feitas no artigo/site (fecham quando a pessoa informar as horas reais)
    @{ N = 10; Responsaveis = "GiovanaFontesS"; Estimadas = "1,5"; Reais = "1,5" }
    @{ N = 17; Responsaveis = "daniel-de-sousa"; Estimadas = "1,5"; Reais = "1,5" }
    @{ N = 18; Responsaveis = "daniel-de-sousa"; Estimadas = "1,5"; Reais = "1,5" }
    @{ N = 19; Responsaveis = "daniel-de-sousa"; Estimadas = "1"; Reais = "1" }
    @{ N = 21; Responsaveis = "daniel-de-sousa"; Estimadas = "2"; Reais = "2" }
    @{ N = 22; Responsaveis = "daniel-de-sousa,GiovanaFontesS"; Estimadas = "1"; Reais = "1" }
    @{ N = 23; Responsaveis = "daniel-de-sousa"; Estimadas = "1"; Reais = "1" }
    @{ N = 24; Responsaveis = "GiovanaFontesS"; Estimadas = "3"; Reais = "3" }
    @{ N = 26; Responsaveis = "lucasbbranco"; Estimadas = "4"; Reais = "4" }
    @{ N = 34; Responsaveis = "lucasbbranco"; Estimadas = "1"; Reais = "1" }
    @{ N = 29; Responsaveis = "leticialopes20"; Estimadas = "1"; Reais = "1" }
    @{ N = 30; Responsaveis = "leticialopes20"; Estimadas = "0,5"; Reais = "0,5" }
    @{ N = 33; Responsaveis = "leticialopes20"; Estimadas = "0,5"; Reais = "0,5" }
    @{ N = 35; Responsaveis = "HauedyWS"; Estimadas = "0,5"; Reais = "0,5" }
    @{ N = 36; Responsaveis = "HauedyWS"; Estimadas = "1"; Reais = "1" }
    # A fazer: artigo e conteúdo (Arthur, Giovana, Lucas, Daniel)
    @{ N = 12; Responsaveis = "arthurfernandesj"; Estimadas = "2"; Reais = "" }
    @{ N = 13; Responsaveis = "GiovanaFontesS"; Estimadas = "2"; Reais = "" }
    @{ N = 14; Responsaveis = "daniel-de-sousa"; Estimadas = "1,5"; Reais = "" }
    @{ N = 16; Responsaveis = "daniel-de-sousa"; Estimadas = "1"; Reais = "" }
    @{ N = 27; Responsaveis = "GiovanaFontesS"; Estimadas = "1"; Reais = "" }
    @{ N = 28; Responsaveis = "GiovanaFontesS"; Estimadas = "2"; Reais = "" }
    @{ N = 44; Responsaveis = "arthurfernandesj"; Estimadas = "3"; Reais = "" }
    @{ N = 45; Responsaveis = "daniel-de-sousa"; Estimadas = "1,5"; Reais = "" }
    @{ N = 46; Responsaveis = "arthurfernandesj"; Estimadas = "1"; Reais = "" }
    @{ N = 47; Responsaveis = "arthurfernandesj"; Estimadas = "1,5"; Reais = "" }
    @{ N = 48; Responsaveis = "lucasbbranco"; Estimadas = "3"; Reais = "" }
    @{ N = 51; Responsaveis = "lucasbbranco"; Estimadas = "2"; Reais = "" }
    @{ N = 52; Responsaveis = "lucasbbranco"; Estimadas = "1,5"; Reais = "" }
    @{ N = 54; Responsaveis = "daniel-de-sousa,GiovanaFontesS"; Estimadas = "4"; Reais = "" }
    # A fazer: GitHub, GitPage e gestão (Hauedy, Letícia)
    @{ N = 32; Responsaveis = "leticialopes20"; Estimadas = "0,5"; Reais = "" }
    @{ N = 37; Responsaveis = "HauedyWS"; Estimadas = "0,5"; Reais = "" }
    @{ N = 38; Responsaveis = "HauedyWS"; Estimadas = "3"; Reais = "" }
    @{ N = 39; Responsaveis = "leticialopes20"; Estimadas = "1"; Reais = "" }
    @{ N = 40; Responsaveis = "HauedyWS"; Estimadas = "1"; Reais = "" }
    @{ N = 41; Responsaveis = "leticialopes20"; Estimadas = "1,5"; Reais = "" }
    @{ N = 42; Responsaveis = "leticialopes20"; Estimadas = "2"; Reais = "" }
    @{ N = 43; Responsaveis = "HauedyWS"; Estimadas = "1,5"; Reais = "" }
    @{ N = 49; Responsaveis = "leticialopes20"; Estimadas = "2"; Reais = "" }
    @{ N = 53; Responsaveis = "HauedyWS,leticialopes20"; Estimadas = "6"; Reais = "" }
    @{ N = 55; Responsaveis = "leticialopes20"; Estimadas = "0,5"; Reais = "" }
)
# ---------------------------------------------------------------------------

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) { Write-Host "Instale o GitHub CLI: winget install --id GitHub.cli" -ForegroundColor Red; exit 1 }
gh auth status *> $null
if ($LASTEXITCODE -ne 0) { Write-Host "Rode: gh auth login" -ForegroundColor Red; exit 1 }

$tmp = [System.IO.Path]::GetTempFileName()
$utf8 = New-Object System.Text.UTF8Encoding $false

foreach ($l in $tabela) {
    $n = $l.N
    $info = gh issue view $n --repo $repo --json body,state,title | ConvertFrom-Json
    $corpo = [string]$info.body
    $corpo = [regex]::Replace($corpo, '(Horas estimadas[^\n:]*:)[ \t]*[0-9.,]*', ('$1 ' + $l.Estimadas), 1)
    if ($l.Reais -ne "") {
        $corpo = [regex]::Replace($corpo, '(Horas reais[^\n:]*:)[ \t]*[0-9.,]*', ('$1 ' + $l.Reais), 1)
    }
    $fechar = ($l.Reais -ne "") -and ($info.state -eq "OPEN")
    $acao = if ($fechar) { "atribui, horas e FECHA" } else { "atribui e estima (fica aberta)" }
    Write-Host ("#{0} [{1}] {2}: {3}" -f $n, $l.Responsaveis, $acao, $info.title)
    if ($DryRun) { continue }

    [System.IO.File]::WriteAllText($tmp, $corpo, $utf8)
    gh issue edit $n --repo $repo --add-assignee $l.Responsaveis --body-file $tmp *> $null
    if ($LASTEXITCODE -ne 0) { Write-Host "  falhou ao editar #$n" -ForegroundColor Red; continue }
    if ($fechar) { gh issue close $n --repo $repo --reason completed *> $null }
    Start-Sleep -Milliseconds 600
}
Remove-Item $tmp -ErrorAction SilentlyContinue
Write-Host "Concluído." -ForegroundColor Green
