$ErrorActionPreference = 'Stop'

if (-not (Test-Path .\NewFile.txt)) {
    New-Item -Path .\NewFile.txt -ItemType File | Out-Null
}

for ($i = 1; $i -le 1000; $i++) {
    Add-Content -Path .\NewFile.txt -Value "Line $i"
    git add .\NewFile.txt
    git commit -m "Commit $i"
}
