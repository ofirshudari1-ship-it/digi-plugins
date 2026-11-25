# Installs all 5 digi-plugins plugins + the 6 skills and 4 agents of claude-tools. Windows PowerShell.
$ErrorActionPreference = 'Stop'
if (-not (Get-Command claude -ErrorAction SilentlyContinue)) { throw 'Claude Code not found. Install it first: https://claude.com/claude-code' }
if (-not (Get-Command git -ErrorAction SilentlyContinue)) { throw 'git not found. Install it first: https://git-scm.com' }

claude plugin marketplace add ofirshudari1-ship-it/digi-plugins
foreach ($p in 'searchlight','dispatch-desk','shuk-crew','inkwell','forge') {
  claude plugin install "$p@digi-plugins"
}

$tmp = Join-Path ([IO.Path]::GetTempPath()) ('claude-tools-' + [guid]::NewGuid())
git clone --depth 1 https://github.com/ofirshudari1-ship-it/claude-tools $tmp
New-Item -ItemType Directory -Force "$HOME\.claude\skills","$HOME\.claude\agents" | Out-Null
Copy-Item "$tmp\skills\*" "$HOME\.claude\skills" -Recurse -Force
Copy-Item "$tmp\agents\*" "$HOME\.claude\agents" -Force
Remove-Item $tmp -Recurse -Force

Write-Host "`nDone: 5 plugins + 6 skills + 4 agents. Start a NEW Claude Code session."
