# PowerShell setup script for Windows Server 2019

# Update system and install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install OpenJDK for Spring Boot
choco install openjdk17 -y
$javaPath = Get-ChildItem -Path C:\\ -Recurse -Filter java.exe -ErrorAction SilentlyContinue | Select-Object -First 1 -ExpandProperty DirectoryName
$env:JAVA_HOME = Split-Path -Path $javaPath -Parent
[System.Environment]::SetEnvironmentVariable("JAVA_HOME", $env:JAVA_HOME, [System.EnvironmentVariableTarget]::Machine)

# Install Maven
choco install maven -y

# Install Node.js (for Vue.js)
choco install nodejs -y

# Install MongoDB
choco install mongodb -y

# Start MongoDB service
Start-Service MongoDB

New-NetFirewallRule -DisplayName "Allow Port 8080" -Direction Inbound -Protocol TCP -LocalPort 8080 -Action Allow
New-NetFirewallRule -DisplayName "Allow Port 27017" -Direction Inbound -Protocol TCP -LocalPort 27017 -Action Allow
