#!/usr/bin/env bash
# Installs all 5 digi-plugins plugins + the 6 skills and 4 agents of claude-tools. Mac / Linux / Git Bash.
set -euo pipefail
command -v claude >/dev/null || { echo "Claude Code not found. Install it first: https://claude.com/claude-code"; exit 1; }
command -v git >/dev/null || { echo "git not found. Install it first: https://git-scm.com"; exit 1; }

claude plugin marketplace add ofirshudari1-ship-it/digi-plugins
for p in searchlight dispatch-desk shuk-crew inkwell forge; do
  claude plugin install "$p@digi-plugins"
done

tmp="$(mktemp -d)"
git clone --depth 1 https://github.com/ofirshudari1-ship-it/claude-tools "$tmp/ct"
mkdir -p ~/.claude/skills ~/.claude/agents
cp -r "$tmp/ct/skills/"* ~/.claude/skills/
cp "$tmp/ct/agents/"* ~/.claude/agents/
rm -r "$tmp"

echo; echo "Done: 5 plugins + 6 skills + 4 agents. Start a NEW Claude Code session."
