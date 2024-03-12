param (
	[string]$repoUrl
)

if (-not $repoUrl) {
	Write-Host "Error: Please provide the repository URL argument." -ForegroundColor Red
	Write-Host "Usage: UpdateLocalRepository <RepositoryUrl>"
	Write-Host ""
	exit
}

Remove-Item * -Recurse -Force -Confirm:$false
git clone --quiet $repoUrl . > $null
git fetch --dry-run