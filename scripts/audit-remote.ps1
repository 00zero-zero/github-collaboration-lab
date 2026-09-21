param(
  [string]$Remote = "origin"
)

$ErrorActionPreference = "Stop"

$url = git remote get-url $Remote
if (-not $url) {
  throw "Remote '$Remote' is not configured."
}

Write-Output "remote=$Remote"
Write-Output "url=$url"

if ($url -match "github\.com[:/](?<owner>[^/]+)/(?<repo>[^/.]+)") {
  Write-Output "owner=$($Matches.owner)"
  Write-Output "repository=$($Matches.repo)"
} else {
  throw "Remote URL is not a recognized GitHub repository URL."
}
