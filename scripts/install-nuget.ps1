# Download nuget.exe into project's windows/tools folder (idempotent)
# Usage: .\scripts\install-nuget.ps1

$destDir = Join-Path $PSScriptRoot '..' | Join-Path -ChildPath 'windows\tools'
$destDir = [System.IO.Path]::GetFullPath($destDir)
if (-not (Test-Path $destDir)) {
  New-Item -ItemType Directory -Path $destDir -Force | Out-Null
}
$nugetPath = Join-Path $destDir 'nuget.exe'
$nugetUrl = 'https://dist.nuget.org/win-x86-commandline/latest/nuget.exe'

if (Test-Path $nugetPath) {
  Write-Output "nuget.exe already present at $nugetPath"
  exit 0
}

Write-Output "Downloading nuget.exe from $nugetUrl to $nugetPath"
try {
  Invoke-WebRequest -Uri $nugetUrl -OutFile $nugetPath -UseBasicParsing -ErrorAction Stop
  Write-Output "Downloaded nuget.exe"
} catch {
  Write-Error "Failed to download nuget.exe: $_"
  exit 1
}

# Ensure file is executable by current user
Try {
  & icacls $nugetPath /grant "$($env:USERNAME):(R,W)" | Out-Null
} Catch { }
Write-Output "nuget.exe installed to $nugetPath"