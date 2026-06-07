# Claude Code Workflow for `E:\Bioinformatics`

**Updated:** 2026-06-08

This file explains how to use Claude Code with the bioinformatics roadmap and the memory setup you created.

## Recommended Folder Layout

```text
E:\Bioinformatics\
  CLAUDE.md
  .claude\
    memory\
      CURRENT_STATE.md
      PROJECTS.md
      TOOLKIT.md
      DECISIONS.md
      LEARNING_LOG.md
    skills\
      update-bio-memory\
        SKILL.md
  roadmap\
    README_START_HERE.md
    00_MASTER_ROADMAP.md
    ...
  notes\
  projects\
  scratch\
```

## Copy This Roadmap Pack Into Your Workspace

PowerShell:

```powershell
$src = "<downloaded-roadmap-folder>"
$dst = "E:\Bioinformatics\roadmap"
New-Item -ItemType Directory -Force -Path $dst | Out-Null
Copy-Item -Recurse -Force "$src\*" $dst
```

If you downloaded the zip:

```powershell
Expand-Archive -Force .\bioinformatics_ai_roadmap_pack.zip -DestinationPath E:\Bioinformatics\roadmap
```

## How to Ask Claude Code to Use the Roadmap

Use prompts like:

```text
Read roadmap/README_START_HERE.md and roadmap/00_MASTER_ROADMAP.md. Then inspect this workspace and tell me what my next 7-day plan should be.
```

```text
I completed Week 1 biology foundations and learned central dogma, genes, transcripts, FASTA basics. Update the bioinformatics memory files.
```

```text
Start Project 1.1 from roadmap/03_PROJECT_PORTFOLIO.md. Create the folder structure, code skeleton, tests, and README. Do not touch data/raw.
```

```text
Before finishing, update .claude/memory/PROJECTS.md, TOOLKIT.md, and LEARNING_LOG.md if anything durable changed.
```

## Memory Rules

Use these memory files intentionally:

| File | Purpose |
|---|---|
| `CURRENT_STATE.md` | concise current focus and next step |
| `PROJECTS.md` | active/completed projects |
| `TOOLKIT.md` | tools, commands, packages learned |
| `DECISIONS.md` | durable decisions |
| `LEARNING_LOG.md` | append-only detailed learning events |

Do not load huge logs every session. Keep `LEARNING_LOG.md` append-only but not imported by default if it becomes large.

## Recommended Update Prompt After Each Session

```text
Update the bioinformatics memory:
- summarize what I learned or built today
- update active project status if changed
- add any tools/commands/packages to TOOLKIT.md
- append detailed notes to LEARNING_LOG.md
- keep CURRENT_STATE.md concise
- do not store secrets or huge logs
```

## Claude Code Project Startup Prompt

Use this at the beginning of a session:

```text
We are in E:\Bioinformatics. Use CLAUDE.md and the roadmap files under roadmap/. First inspect the current folder structure and memory files. Then propose the smallest concrete next step. Keep raw data protected.
```

## Bioinformatics-Specific Guardrails for Claude

Tell Claude explicitly:

- [ ] Do not overwrite raw data.
- [ ] Always record accession IDs and tool versions.
- [ ] Validate sample sheets before running pipelines.
- [ ] Prefer reproducible scripts/workflows over notebook-only work.
- [ ] Run small tests before long jobs.
- [ ] Avoid clinical/biological overclaims.
- [ ] Flag possible batch effects, reference build mismatches, and leakage.

## When to Create New Skills

Create a Claude skill when a workflow becomes repeated:

- [ ] RNA-seq project setup.
- [ ] FASTQ QC workflow.
- [ ] Sample sheet validation.
- [ ] GEO/SRA dataset intake.
- [ ] DESeq2 report generation.
- [ ] Scanpy single-cell workflow.
- [ ] protein embedding experiment.
- [ ] Snakemake pipeline conversion.

Skill template:

```markdown
---
name: <skill-name>
description: Use when <specific trigger>.
---

# <Skill Name>

## Goal

## Inputs

## Steps

## Validation

## Outputs

## Common Failures
```

## Good First Claude Task

```text
Create projects/001-fasta-fastq-parser using roadmap Project 1.1. Include README, src package, scripts, tests, and a tiny synthetic test file. Do not download external data yet. Update memory after finishing.
```
