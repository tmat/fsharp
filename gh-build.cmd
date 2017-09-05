@echo off
set TOOLRUNTIME_DIR=%~dp0Tools
powershell -ExecutionPolicy unrestricted -NoProfile -Command ".\install-dotnet.ps1"
dotnet --version
set PATH=%TOOLRUNTIME_DIR%\dotnetcli;%PATH%
dotnet --version
pushd src
call buildfromsource.cmd
