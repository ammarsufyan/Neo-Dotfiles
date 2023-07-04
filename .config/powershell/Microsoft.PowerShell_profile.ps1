# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Start OMP
oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH\bubbles.omp.json" | Invoke-Expression

# Change icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineKeyHandler -Key Ctrl-Spacebar -Function MenuComplete
Set-PSReadLineKeyHandler -Key Ctrl-d -Function DeleteChar