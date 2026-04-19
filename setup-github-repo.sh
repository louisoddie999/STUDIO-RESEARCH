#!/usr/bin/env bash
# One-shot setup for STUDIO-RESEARCH GitHub repo.
# Run ONCE. Requires gh CLI + git identity already configured.
#
# Prereqs (run these yourself first — Claude rules forbid me from touching git config):
#   1. Install gh:              winget install GitHub.cli
#   2. Authenticate gh:         gh auth login
#   3. Set git identity:        git config --global user.name "YOUR NAME"
#                               git config --global user.email "you@example.com"
#
# Then:
#   cd claude-workspace/projects/STUDIO-RESEARCH
#   bash setup-github-repo.sh

set -e

REPO_NAME="STUDIO-RESEARCH"
VISIBILITY="--private"

# Sanity
[ -d ".git" ] && { echo "Already a git repo. Aborting."; exit 1; }
command -v gh >/dev/null || { echo "gh CLI not installed. Run: winget install GitHub.cli"; exit 1; }
gh auth status >/dev/null 2>&1 || { echo "Not logged in. Run: gh auth login"; exit 1; }
git config user.name >/dev/null 2>&1 || git config --global user.name >/dev/null 2>&1 || { echo "git identity missing. Run: git config --global user.name 'YOUR NAME'"; exit 1; }

echo "[1/5] git init..."
git init -b main

echo "[2/5] initial commit..."
git add -A
git commit -m "Initial commit: Studio v2 upgrade artifacts

- Apr 2026 generator matrix (8 generators, verified pricing)
- 4 battle-test stress reports (food, portrait, lifestyle, CGI)
- Studio v2 upgrade retro
- Phase 5 monthly refresh spec
- NotebookLM push manifest"

echo "[3/5] create GitHub repo + push..."
gh repo create "$REPO_NAME" $VISIBILITY --source=. --remote=origin --push --description="THE STUDIO — AI image gen cavalry research, matrix, retros"

REPO_URL=$(gh repo view --json url -q .url)
echo "[4/5] Repo live at: $REPO_URL"

echo "[5/5] Done."
echo
echo "Next:"
echo "  1. Tell Claude Code: 'repo is at $REPO_URL'"
echo "  2. Claude will update studio-orchestrator + phase5 spec to point at this repo"
echo "  3. Claude will fire the schedule skill to activate monthly matrix-refresh cron"
