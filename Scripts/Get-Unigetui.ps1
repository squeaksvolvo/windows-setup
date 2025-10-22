#Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

# Install winget if needed (usually pre-installed in Win11)
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "Winget not found. Please install App Installer from the Microsoft Store first."
    exit
}

winget install --id MartiCliment.UniGetUI --exact --silent --accept-source-agreements --accept-package-agreements

$installed = winget list --id MartiCliment.UniGetUI | Select-String "MartiCliment.UniGetUI"

if ($installed) {
    Write-Host "UniGetUI installed."
}
else {
    Write-Host "Failed to install UniGetUI."
}