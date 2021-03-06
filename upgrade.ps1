
# https://stackoverflow.com/questions/4037939/powershell-says-execution-of-scripts-is-disabled-on-this-system
# powershell -ExecutionPolicy ByPass -File script.ps1
# 

$vim_release_url = 'https://api.github.com/repos/vim/vim-win32-installer/releases/latest'

$req = [system.Net.WebRequest]::Create($vim_release_url)
$resp = $req.GetResponse()
$dataStream = $resp.GetResponseStream()
$reader = New-Object system.IO.StreamReader $dataStream
$reader.ReadToEnd()
$reader.Close()
$resp.Close()