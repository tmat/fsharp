$url = "https://download.microsoft.com/download/1/B/4/1B4DE605-8378-47A5-B01B-2C79D6C55519/dotnet-sdk-2.0.0-win-x64.zip"
$zipFile = "Tools\dotnet.zip"
$toolsDir = "Tools\dotnetcli"
Invoke-WebRequest $url -OutFile $zipFile
Expand-Archive $zipFile -DestionationPath $toolsDir
