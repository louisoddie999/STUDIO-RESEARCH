# STUDIO-RESEARCH

Research + retros + matrix for **THE STUDIO** — the Claude Code AI-image-generation skill cavalry.

## What's in here

```
docs/
├── matrix-v2/
│   └── generator-matrix-apr2026.md      # current source-of-truth generator matrix
├── battle-tests/
│   ├── food-stress-report-2026-04-19.md
│   ├── portrait-stress-report-2026-04-19.md
│   ├── lifestyle-stress-report-2026-04-19.md
│   └── cgi-stress-report-2026-04-19.md
└── upgrade/
    ├── studio-upgrade-v2-retro-2026-04-19.md
    ├── phase5-monthly-refresh-spec.md
    └── notebooklm-push-manifest.sh
```

## How this repo is used

1. **Local Studio runs** read `docs/matrix-v2/generator-matrix-apr2026.md` to pick generators per category.
2. **Monthly refresh cron** (scheduled remote agent) clones this repo, researches new generator versions via WebSearch, commits a diff + updated matrix, pushes to `main`.
3. **Local Claude Code sessions** `git pull` to sync latest matrix before Studio work.

## Related skills (in `~/.claude/skills/`)

studio-orchestrator · studio-prompt-bible · studio-retro · studio-race · studio-slop-check · studio-cgi-mode · reality-engine · packaging-preservation · color-palette-lock · shot-list-builder · prompt-syntax-master

## Ownership
Private repo. Internal research + strategy. Do not publish without scrub.
