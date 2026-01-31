<#
PowerShell helper to prepare a Windows dev machine for this Flutter project and install+run on a connected Android device.
Run as Administrator when possible.

What it does:
 - checks for Java and JAVA_HOME; installs Temurin 17 via Chocolatey if missing
 - sets JAVA_HOME (system) and updates PATH
 - checks Android SDK presence (ANDROID_SDK_ROOT / default location)
 - installs SDK components via sdkmanager if available
 - accepts Android licenses
 - runs `flutter clean`, `flutter pub get` and attempts `flutter run` on the first connected device

Usage (run from project root):
  PowerShell (Admin) > .\scripts\setup-and-run-windows.ps1

If Chocolatey is not available the script will print manual steps.
#>

param(
    [switch]$InstallJdk = $true,
    [string]$PreferJdk = 'temurin17' # temurin17 or temurin11
)

function Test-Command($name) {
    $which = (Get-Command $name -ErrorAction SilentlyContinue)
    return $which -ne $null
}

Write-Host "== Flutter Android setup & run helper ==" -ForegroundColor Cyan
if (-not (Test-Command flutter)) {
    Write-Host "ERROR: 'flutter' is not on PATH. Install Flutter and re-open the terminal." -ForegroundColor Red
    exit 3
}

# Check Java
if (Test-Command java) {
    Write-Host "Java already available:" -ForegroundColor Green
    & java -version
} elseif ($InstallJdk -and (Test-Command choco)) {
    Write-Host "No java detected — installing $PreferJdk via Chocolatey" -ForegroundColor Yellow
    if ($PreferJdk -eq 'temurin17') { choco install temurin17 -y } else { choco install temurin11 -y }
    Start-Sleep -Seconds 2
    if (-not (Test-Command java)) {
        Write-Host "Java installation finished but 'java' still not on PATH. You may need to reopen the shell." -ForegroundColor Yellow
    }
} else {
    Write-Host "No Java found and Chocolatey unavailable (or auto-install disabled)." -ForegroundColor Yellow
    Write-Host "Please install a JDK (Temurin 17 recommended): https://adoptium.net/ and re-run this script." -ForegroundColor Cyan
    exit 4
}

# Try to locate JAVA_HOME
$javaHomeCandidates = @(
    "C:\\Program Files\\Eclipse Adoptium",
    "C:\\Program Files\\AdoptOpenJDK",
    "C:\\Program Files\\Zulu",
    $env:JAVA_HOME
) | Where-Object { $_ -and (Test-Path $_) }

$detected = $null
foreach ($cand in $javaHomeCandidates) {
    try {
        $dirs = Get-ChildItem -Path $cand -Directory -ErrorAction SilentlyContinue | Sort-Object Name -Descending
        if ($dirs -and $dirs.Count -gt 0) { $detected = ($dirs[0].FullName); break }
    } catch { }
}
if (-not $detected -and $env:JAVA_HOME) { $detected = $env:JAVA_HOME }

if ($detected) {
    Write-Host "Setting JAVA_HOME to: $detected" -ForegroundColor Green
    [Environment]::SetEnvironmentVariable('JAVA_HOME', $detected, 'Machine')
    $env:JAVA_HOME = $detected
    $newPath = "$detected\bin;" + [Environment]::GetEnvironmentVariable('Path','Machine')
    [Environment]::SetEnvironmentVariable('Path', $newPath, 'Machine')
} else {
    Write-Host "Could not auto-detect JAVA_HOME. Please set JAVA_HOME to your JDK installation and re-open the shell." -ForegroundColor Red
    exit 5
}

# Android SDK checks
$androidSdk = $env:ANDROID_SDK_ROOT
if (-not $androidSdk) { $androidSdk = $env:ANDROID_HOME }
if (-not $androidSdk) {
    $default = "$env:LOCALAPPDATA\\Android\\Sdk"
    if (Test-Path $default) { $androidSdk = $default }
}
if (-not $androidSdk) {
    Write-Host "Android SDK not found. Install Android Studio or set ANDROID_SDK_ROOT to your SDK path." -ForegroundColor Red
    Write-Host "https://developer.android.com/studio" -ForegroundColor Cyan
    exit 6
}
Write-Host "Using Android SDK at: $androidSdk" -ForegroundColor Green

# Ensure sdkmanager exists
$sdkmanager = Join-Path $androidSdk "cmdline-tools\\latest\\bin\\sdkmanager.bat"
if (-not (Test-Path $sdkmanager)) {
    $sdkmanager = Join-Path $androidSdk "tools\\bin\\sdkmanager.bat"
}
if (-not (Test-Path $sdkmanager)) {
    Write-Host "sdkmanager not found in SDK — attempting to download Android command-line tools automatically..." -ForegroundColor Yellow
    $toolsUrl = 'https://dl.google.com/android/repository/commandlinetools-win-latest.zip'
    $tmpZip = Join-Path $env:TEMP 'commandlinetools-win-latest.zip'
    try {
        Write-Host "Downloading command-line tools from $toolsUrl" -ForegroundColor Cyan
        Invoke-WebRequest -Uri $toolsUrl -OutFile $tmpZip -UseBasicParsing -ErrorAction Stop
        $dest = Join-Path $androidSdk 'cmdline-tools\latest'
        if (-not (Test-Path $dest)) { New-Item -ItemType Directory -Path $dest -Force | Out-Null }
        Write-Host "Extracting to $dest" -ForegroundColor Cyan
        Expand-Archive -Path $tmpZip -DestinationPath $dest -Force
        Remove-Item $tmpZip -Force
        $sdkmanager = Join-Path $dest 'bin\sdkmanager.bat'
        if (-not (Test-Path $sdkmanager)) { throw 'sdkmanager still not found after extraction' }
        Write-Host 'Command-line tools installed.' -ForegroundColor Green
    } catch {
        Write-Host "Automatic install failed: $_" -ForegroundColor Red
        Write-Host "Please install 'Android SDK Command-line Tools' via Android Studio's SDK Manager and re-run this script." -ForegroundColor Yellow
        exit 7
    }
}

# Install essential SDK components (non-destructive)
Write-Host "Installing/updating Android SDK components (platform-tools, build-tools, platforms)..." -ForegroundColor Cyan
& `"$sdkmanager`" "platform-tools" "platforms;android-34" "build-tools;34.0.0" --sdk_root="$androidSdk" | Out-Null

# Accept licenses
Write-Host "Accepting Android SDK licenses..." -ForegroundColor Cyan
yes | & `"$sdkmanager`" --licenses --sdk_root="$androidSdk" > $null 2>&1
# flutter doctor licenses (some licenses handled here)
yes | flutter doctor --android-licenses | Out-Null

# Final Flutter steps
Write-Host "Running flutter clean && pub get" -ForegroundColor Cyan
flutter clean
flutter pub get

# Detect device
$devices = flutter devices --machine 2>$null | ConvertFrom-Json 2>$null
if ($devices -and $devices.Count -gt 0) {
    $deviceId = $devices[0].id
    Write-Host "Found device: $($devices[0].name) (id: $deviceId)" -ForegroundColor Green
    Write-Host "Starting app on device (debug) — this will build and install to the device." -ForegroundColor Cyan
    flutter run -d $deviceId
    exit $LASTEXITCODE
} else {
    Write-Host "No connected device found by 'flutter devices'. If your phone is connected via USB, ensure USB debugging is enabled and 'adb devices' shows it." -ForegroundColor Yellow
    Write-Host "You can still build an APK locally: 'flutter build apk --debug'" -ForegroundColor Cyan
    flutter build apk --debug
    Write-Host "When build completes, install with: adb install -r build\\app\\outputs\\flutter-apk\\app-debug.apk" -ForegroundColor Cyan
    exit 0
}
