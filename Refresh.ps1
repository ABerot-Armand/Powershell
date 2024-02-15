$medge = Start-Process -PassThru -FilePath microsoft-edge:http://192.168.33.250/scoreboard
$wshell = New-Object -ComObject wscript.shell

Start-Sleep -Seconds 15                  ### increase time for slow connection
while ( $true ) ### activate the desired window
{
    $wshell.AppActivate($medge.Id)
    $wshell.SendKeys('{f5}')             ### send keys only if successfully activated
    Start-Sleep -Seconds 15
}