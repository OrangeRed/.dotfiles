### Alias ###
Set-Alias c clear
Set-Alias g git

function gitStatus {git status -s}
Set-Alias gst gitStatus

Remove-Item alias:sls
