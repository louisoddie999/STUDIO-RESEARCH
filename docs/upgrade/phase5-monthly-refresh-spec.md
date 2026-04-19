# Phase 5 — Monthly Matrix Refresh Spec
_2026-04-19_

## Goal
Keep `generator-matrix-apr2026.md` from going stale. AI image models ship new versions monthly (Flux 2 → 2.1, Gemini 3.1 → 3.2, Seedream 4.5 → 5.0). A matrix that's 90 days old routes Studio to deprecated models.

## Trigger
Monthly, 1st of each month at 09:00 Africa/Lagos. Use the `schedule` skill (cron remote agent) to fire autonomously.

## Behavior

On fire, the scheduled agent:

1. Reads current matrix at `claude-workspace/projects/STUDIO-RESEARCH/docs/matrix-v2/generator-matrix-apr2026.md`
2. For each of the 8 tracked generators, runs WebSearch + WebFetch:
   - `[generator name] pricing site:$(official)`
   - `[generator name] new version [CURRENT YEAR]`
   - `[generator name] deprecated` / `sunset` / `EOL`
3. Builds a diff report at `claude-workspace/projects/STUDIO-RESEARCH/docs/matrix-v2/diff-[YYYY-MM].md`:
   - Version changes (e.g., Flux 2 → Flux 2.1)
   - Price changes (e.g., Gemini 3.1 $0.067 → $0.045)
   - New deprecations (e.g., DALL-E 3 sunset May 12 2026)
   - New entrants (e.g., Seedream 5.0 released)
4. If any diff detected → copies current matrix to archive, writes new `generator-matrix-YYYY-MM.md`, updates studio-orchestrator's matrix-source pointer
5. Emits push notification: "Studio matrix refreshed — N changes, N deprecations flagged"

## Acceptance
- Zero manual intervention unless a deprecation is imminent (<30 days)
- Matrix pointer in studio-orchestrator always points to latest
- Archive keeps 6 months of matrices for rollback reference

## Repo (source of truth)

**github.com/louisoddie999/STUDIO-RESEARCH** — PRIVATE. Main branch is canonical. Remote agent clones, updates, pushes. Local Claude Code sessions `git pull` before reading matrix.

## Remote-agent workflow (what the cron runs)

1. Clone `https://github.com/louisoddie999/STUDIO-RESEARCH.git`
2. Read `docs/matrix-v2/generator-matrix-apr2026.md`
3. For each of 8 tracked generators, WebSearch:
   - `[generator name] pricing site:$(official)`
   - `[generator name] new version [CURRENT MONTH YEAR]`
   - `[generator name] deprecated` / `sunset` / `EOL`
4. Build diff at `docs/matrix-v2/diff-[YYYY-MM].md`
5. If any change → write `docs/matrix-v2/generator-matrix-[YYYY-MM].md` as the new current file, keep the prior as archive
6. `git add . && git commit -m "chore(matrix): refresh YYYY-MM — N changes, N deprecations"`
7. `git push origin main`
8. Output summary for scheduled-agent log: "Matrix refreshed YYYY-MM — N changes, N deprecations. See commit SHA."

## Activation

Fired via `schedule` skill → `RemoteTrigger` create. Cron: `0 8 1 * *` UTC (= 09:00 Africa/Lagos on 1st of each month). Model: claude-sonnet-4-6. Environment: env_01MEHusdaU2pRNaERFhYAJ3w. Repo cloned via session_context.sources.

## Dependencies
- `schedule` skill (installed)
- `WebSearch` + `WebFetch` permissions
- Research agent prompt template (below)

## Research agent prompt template

```
You are refreshing THE STUDIO generator matrix. Current version at {path}. Today is {date}.

For each tracked generator, run WebSearch to verify:
- Current model ID + version
- Current USD price per image
- Any deprecation notices
- Any new version launched

Produce diff report at {diff_path}. Cite every change with URL.
Flag [UNVERIFIED] for anything you can't cite.

If any deprecation within 60 days → escalate to user.

Output: diff-{YYYY-MM}.md with sections: version changes, price changes, deprecations, new entrants, [UNVERIFIED] items.
```

## Follow-ups
- After 3 monthly runs, add a cost-trend chart (PNG generated via Python) to show generator pricing over time
- If a generator's price rises >50% or quality drops in telemetry, auto-demote from its category's primary slot
