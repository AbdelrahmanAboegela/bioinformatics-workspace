---
name: update-bio-memory
description: Update Bioinformatics workspace memory after learning concepts, installing tools, creating projects, solving bugs, changing workflows, or completing milestones.
---

# Update Bioinformatics Memory

Use this skill after meaningful work in `E:\Bioinformatics`.

## Goal

Keep the workspace memory accurate without bloating `CLAUDE.md`.

## Files to Update

- `.claude/memory/CURRENT_STATE.md`
- `.claude/memory/PROJECTS.md`
- `.claude/memory/TOOLKIT.md`
- `.claude/memory/DECISIONS.md`
- `.claude/memory/LEARNING_LOG.md`

## Procedure

1. Identify what changed in the session.
2. Classify the update:
   - learning/concept
   - tool/package/command
   - project status
   - dataset/provenance
   - bug/fix/gotcha
   - durable decision
   - milestone
3. Update the smallest set of memory files needed.
4. Keep loaded files concise:
   - `CURRENT_STATE.md` should summarize current context.
   - `PROJECTS.md` should track project status.
   - `TOOLKIT.md` should track tools and commands.
   - `DECISIONS.md` should only include durable decisions.
   - `LEARNING_LOG.md` can hold detailed dated entries.
5. Never store secrets, API keys, tokens, private credentials, or sensitive personal data.
6. In the final response, mention which memory files were updated.

## Entry Format for LEARNING_LOG.md

```markdown
## YYYY-MM-DD â€” <Short Title>

Type: concept | tool | project | dataset | bugfix | decision | milestone

Summary:
- ...

Details:
- ...

Reusable commands:
```powershell
...
```

Related files:
- ...
```
