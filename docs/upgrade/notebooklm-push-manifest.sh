#!/usr/bin/env bash
# NotebookLM push manifest — THE STUDIO v2
# Run AFTER: notebooklm login

set -e

echo "Creating notebook..."
NB_ID=$(notebooklm create "THE STUDIO - Image Gen Cavalry" | grep -oE '[a-f0-9-]{36}' | head -1)
echo "Notebook ID: $NB_ID"

notebooklm use "$NB_ID"

cd "C:/Users/FX/claude-workspace/projects/STUDIO-RESEARCH/docs"

echo "Adding 6 sources..."
notebooklm source add "matrix-v2/generator-matrix-apr2026.md" --name "Generator Matrix Apr 2026"
notebooklm source add "battle-tests/food-stress-report-2026-04-19.md" --name "Food Battle-Test"
notebooklm source add "battle-tests/portrait-stress-report-2026-04-19.md" --name "Portrait Battle-Test"
notebooklm source add "battle-tests/lifestyle-stress-report-2026-04-19.md" --name "Lifestyle Battle-Test"
notebooklm source add "battle-tests/cgi-stress-report-2026-04-19.md" --name "CGI Battle-Test"
notebooklm source add "upgrade/studio-upgrade-v2-retro-2026-04-19.md" --name "Studio v2 Upgrade Retro"

echo "Waiting for ingestion..."
notebooklm source wait

echo "Done. Open: https://notebooklm.google.com/notebook/$NB_ID"
