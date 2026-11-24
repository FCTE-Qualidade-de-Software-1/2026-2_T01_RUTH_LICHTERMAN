# Atualiza a issue #53 (ação de melhoria obrigatória) com as duas versões do protótipo.
# Uso, na raiz do repositório:
#   powershell -ExecutionPolicy Bypass -File scripts\atualiza_issue53.ps1

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
$repo = "FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN"

$corpo = @"
## Descrição
Ação de melhoria obrigatória da Entrega 2: protótipo de alta fidelidade no Figma para as ações **A1** (aviso de perda de conexão, nova tentativa e retomada) e **A2** (texto que acompanha a fonte do sistema e contraste revisto), justificadas pelos achados de **M13** (0/1 cenário: perda de conexão sem aviso) e **M4** (fonte não acompanha a ampliação do sistema; contraste estimado de 3,7:1 em "Fazer recarga").

- **v1 (15/11/2026, Lucas):** percursos de A1 (consulta e recarga interrompidas, reabertura e retorno após bloqueio) e A2 (texto em 100% e 200%, contraste do botão principal de 5,66:1).
- **v2 (24/11/2026, Letícia e Lucas):** evolução da v1 para o aplicativo de ponta a ponta (81 telas), com estados de conexão normal, lenta e sem internet (continuação de A1), texto ampliado no Perfil (A2) e saldo e recarga coerentes entre as telas. A v1 foi mantida sem alteração.

Nenhuma das versões foi implementada no aplicativo nem validada com participantes; os resultados originais de M4 e M13 permanecem inalterados.

## Critério da rubrica
Seção 3.2 da especificação (Entrega 2): ação de melhoria justificada pela avaliação

## Critério de pronto
- [x] Ação escolhida e justificada
- [x] Entrega técnica no repositório
- [x] Documentação no GitPage

## Evidências
- v1: https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/commit/0d673aeb e evidencias/prototipo/
- v2: https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/commit/d9cc7490, https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/commit/78429e78 e https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T01_RUTH_LICHTERMAN/commit/8b6de57d
- GitPage: https://fcte-qualidade-de-software-1.github.io/2026-2_T01_RUTH_LICHTERMAN/prototipo/ (https://fcte-qualidade-de-software-1.github.io/2026-2_T01_RUTH_LICHTERMAN/prototipo/v1/, https://fcte-qualidade-de-software-1.github.io/2026-2_T01_RUTH_LICHTERMAN/prototipo/v1-verificacao/ e https://fcte-qualidade-de-software-1.github.io/2026-2_T01_RUTH_LICHTERMAN/prototipo/v2/)
- Protótipo navegável v1: https://www.figma.com/proto/imCHuQ8h2wmrkuvHPtCjcE?node-id=6-143&starting-point-node-id=6%3A143
- Protótipo navegável v2: https://www.figma.com/proto/cKG7Stdd8v0K7UFOhxd02t/BRB-MOBILIDADE--PROTOTIPA%C3%87%C3%83O--Copy-?node-id=3174-357&p=f&scaling=scale-down&content-scaling=fixed&starting-point-node-id=3174%3A357

## Esforço (PSM)
- Horas estimadas: 8
- Horas reais (preencher ao fechar): 12

Horas reais: v1, 6 h (Lucas); v2, 6 h (Letícia e Lucas).
"@

$tmp = [System.IO.Path]::GetTempFileName()
[System.IO.File]::WriteAllText($tmp, $corpo, (New-Object System.Text.UTF8Encoding $false))
gh issue edit 53 --repo $repo --body-file $tmp --add-assignee "lucasbbranco,leticialopes20"
if ($LASTEXITCODE -eq 0) {
    gh issue comment 53 --repo $repo --body "Registro da versão 2 do protótipo (24/11/2026, Letícia e Lucas). Horas reais passam de 6 h para 12 h; quem realizou está em docs/gestao/dados/execucao.csv."
    Write-Host "Issue #53 atualizada." -ForegroundColor Green
}
Remove-Item $tmp -ErrorAction SilentlyContinue
