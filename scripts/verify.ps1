<#
.SYNOPSIS
  Verifies that the local repository drop matches the expected file set.
#>
[CmdletBinding()]
param(
  [string]$RepoRoot = (Resolve-Path "$PSScriptRoot\..").Path
)

$expected = @(
  'README.md',
  'LICENSE',
  '.gitignore',
  'prompts\kestrel.md',
  'docs\MECHANISM.md',
  'docs\INSTALL.md',
  'docs\FAQ.md',
  'examples\session-transcript.md',
  'scripts\install.ps1',
  'scripts\verify.ps1',
  '.github\ISSUE_TEMPLATE\bug.md',
  '.github\workflows\verify.yml'
)

$fail = 0
foreach ($rel in $expected) {
  $p = Join-Path $RepoRoot $rel
  if (-not (Test-Path -LiteralPath $p)) {
    Write-Host "MISSING  $rel" -ForegroundColor Red
    $fail = 1
    continue
  }
  $len = (Get-Item -LiteralPath $p).Length
  if ($len -le 0) {
    Write-Host "EMPTY    $rel" -ForegroundColor Red
    $fail = 1
  } else {
    Write-Host ("OK       {0} ({1} bytes)" -f $rel, $len) -ForegroundColor Green
  }
}

if ($fail -eq 0) { Write-Host 'All expected files present.' -ForegroundColor Green }
else            { Write-Host 'Verification failed.'      -ForegroundColor Red   }

exit $fail