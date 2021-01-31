Import-Module C:\Users\Administrator\OneDrive\Dokumente\GitHub\Scripte\pause-process.ps1

$PIDS = get-Process -Name GTA5 | Select-Object Id 
Write-Host "Dieses Script Privatisiert die Lobby in GTA 5"
Write-Host "Pausiere Process GTA5.exe (PID: $($PIDS.Id))"
pause-process $PIDS.Id
Write-Host "Warte 10 Sekunden..."
Start-Sleep -s 10
Write-Host "Setze Prozess GTA5.exe fort.."
unpause-process $PIDS.Id
Write-Host "Lobby sollte jetzt Privat sein^^"