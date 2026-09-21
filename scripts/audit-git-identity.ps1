param(
  [string]$ExpectedLogin = ""
)

$ErrorActionPreference = "Stop"

$name = git config --get user.name
$email = git config --get user.email
$origin = git remote get-url origin

Write-Output "user.name=$name"
Write-Output "user.email=$email"
Write-Output "origin=$origin"

if (-not $name -or -not $email) {
  throw "Git author identity is incomplete."
}

if ($ExpectedLogin -and ($email -notmatch [regex]::Escape($ExpectedLogin))) {
  throw "Configured email does not contain expected login '$ExpectedLogin'."
}
