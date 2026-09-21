param(
  [string]$PrimaryAlias = "github-xalzeroph",
  [string]$SecondaryAlias = "github-secondary"
)

$ErrorActionPreference = "Continue"

Write-Host "Primary SSH identity:"
ssh -T $PrimaryAlias 2>&1

Write-Host ""
Write-Host "Secondary SSH identity:"
ssh -T $SecondaryAlias 2>&1

Write-Host ""
Write-Host "Effective Git author:"
git config --get user.name
git config --get user.email

Write-Host ""
Write-Host "Origin:"
git remote get-url origin
