Import-Module .\pause-process.ps1 -ErrorAction Stop

$PIDS = get-Process -Name GTA5 | Select-Object Id

if ($PIDS -ne $empty) {
    Write-Host "This Script will 'empty' your GTA 5 Lobby"
    Write-Host "Pausing process GTA5.exe (PID: $($PIDS.Id))"
    foreach ($PIDD in $($PIDS.Id) ) { Pause-Process $PIDD }
    Write-Host "Waiting 10 seconds..."
    Start-Sleep -s 10
    Write-Host "Countinuing GTA5.exe process.."
    foreach ($PIDD in $($PIDS.Id) ) { Unpause-Process $PIDD }
    Write-Host "Your Lobby should now be empty"
}
else {
    Write-Host "Process GTA5.exe not found."
}