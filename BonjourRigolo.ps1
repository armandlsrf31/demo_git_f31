# Script: BonjourHibou.ps1

# Récupérer le jour de la semaine en français
$day = (Get-Date).ToString("dddd", [System.Globalization.CultureInfo]::GetCultureInfo("fr-FR"))

# Récupérer le nom de l'utilisateur
$user = $env:USERNAME

# Effacer l'écran pour un effet "propre"
Clear-Host

# Afficher le message
Write-Host "Bonjour $user, tu resplendis en ce $day !" -ForegroundColor Cyan
Start-Sleep -Seconds 1

# Définir l'art ASCII du hibou
$asciiArt = @"
      .--.
     |o_o |
     |:_/ |
    //   \ \
   (|     | )
  /'\_   _/`\
  \___)=(___/

Un pingouin veille sur toi 🐧
"@

# Afficher ligne par ligne pour un effet dramatique
foreach ($line in $asciiArt -split "`n") {
    Write-Host $line -ForegroundColor Magenta
    Start-Sleep -Milliseconds 250
}

# Petit bonus rigolo : un bip mélodique
[console]::beep(800,300)
[console]::beep(1000,300)
[console]::beep(1200,300)

Write-Host "`nBonne journée $user ! 🌟" -ForegroundColor Green
