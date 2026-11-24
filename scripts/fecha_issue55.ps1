# Fecha a issue #55 (Release E2) depois que a release v2.0 for publicada.
# Uso, na raiz do repositório:
#   powershell -ExecutionPolicy Bypass -File scripts\fecha_issue55.ps1

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
$repo = "FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN"
$reais = "0,5"   # horas reais gastas na release (edite se precisar)

gh release view v2.0 --repo $repo *> $null
if ($LASTEXITCODE -ne 0) { Write-Host "A release v2.0 ainda não existe. Crie a release antes de fechar a issue." -ForegroundColor Red; exit 1 }

$corpo = (gh issue view 55 --repo $repo --json body | ConvertFrom-Json).body
$corpo = $corpo -replace '- \[ \] Tag v2.0', '- [x] Tag v2.0'
$corpo = $corpo -replace '- \[ \] Release com descrição', '- [x] Release com descrição'
$corpo = [regex]::Replace($corpo, '(Horas reais[^\n:]*:)[ \t]*[0-9.,]*', ('$1 ' + $reais), 1)

$tmp = [System.IO.Path]::GetTempFileName()
[System.IO.File]::WriteAllText($tmp, $corpo, (New-Object System.Text.UTF8Encoding $false))
gh issue edit 55 --repo $repo --body-file $tmp
gh issue close 55 --repo $repo --reason completed --comment "Release v2.0 publicada: https://github.com/$repo/releases/tag/v2.0. Alocada para Letícia e realizada por Hauedy; registro em docs/gestao/dados/execucao.csv."
Remove-Item $tmp -ErrorAction SilentlyContinue
Write-Host "Issue #55 fechada." -ForegroundColor Green
