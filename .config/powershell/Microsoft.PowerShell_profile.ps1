# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Start OMP
$omp_config = Join-Path $PSScriptRoot ".\takuya.omp.json" 
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# Change icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineKeyHandler -Key Ctrl-Spacebar -Function MenuComplete
Set-PSReadLineKeyHandler -Key Ctrl-d -Function DeleteChar