$source = Join-Path "source" "sln.json"
$data = Get-Content -Raw -Path $source | ConvertFrom-Json

Write-Host "Solution:" $data.solution

Write-Host
$data.projects | ForEach-Object {
  Write-Host "Project:" $_.name
  Write-Host "Template:" $_.template
  Write-Host "Dependencies:"
  $_.dependencies | ForEach-Object {
    Write-Host $_
  }

  Write-Host
}