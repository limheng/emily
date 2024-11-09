# Verify installations
Write-Output "Java path:"
$env:JAVA_HOME
Write-Output "Maven version:"
mvn -v
Write-Output "Node.js version:"
node -v
Write-Output "npm version:"
npm -v
Write-Output "MongoDB status:"
Get-Service MongoDB
