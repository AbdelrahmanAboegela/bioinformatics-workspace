# Setup Claude Code memory and project instructions for E:\Bioinformatics
# Run this from PowerShell.

$root = "E:\Bioinformatics"

New-Item -ItemType Directory -Force -Path `
  "$root\.claude\memory", `
  "$root\.claude\skills\update-bio-memory" | Out-Null

@'
# Bioinformatics Workspace Instructions

@.claude/memory/CURRENT_STATE.md
@.claude/memory/PROJECTS.md
@.claude/memory/TOOLKIT.md
@.claude/memory/DECISIONS.md

## Workspace Identity

This is a long-term bioinformatics learning and project workspace.

Root path:

```text
E:\Bioinformatics
```

The workspace is used for studying bioinformatics, building multiple projects, experimenting with datasets, implementing pipelines, learning tools, and producing reproducible research/code artifacts.

Claude should treat this folder as both:

1. A learning notebook for the user's growing bioinformatics knowledge.
2. A project workspace where code, datasets, workflows, reports, and experiments must remain organized and reproducible.

## Core Behavior

When working in this repository:

- First inspect the active project structure before making changes.
- Prefer practical implementation over vague explanation.
- Be explicit about assumptions, dataset formats, paths, tool versions, and commands.
- Keep raw data safe. Never overwrite, delete, or mutate raw biological data unless explicitly told to.
- Prefer reproducible workflows over one-off commands.
- When a task becomes repeated, propose or create a project skill under `.claude/skills/<skill-name>/SKILL.md`.
- When learning progress or project state changes, update the memory files in `.claude/memory/`.
- Do not let temporary experiments pollute the root folder. Put experiments under a named project or `scratch/`.

## Bioinformatics Priorities

Always consider:

- Data provenance.
- Sample metadata integrity.
- Reference genome/transcriptome version.
- Annotation source and release version.
- Tool versions and parameters.
- Random seeds for stochastic methods.
- Separation of raw, intermediate, processed, and final outputs.
- Clear distinction between computational findings and biological/clinical interpretation.

Do not overclaim biological conclusions. Treat outputs as computational evidence unless validated by appropriate biological/statistical analysis.

## Preferred Project Layout

For each substantial project, prefer this structure:

```text
projects/<project-name>/
  README.md
  CLAUDE.md                  # optional project-specific instructions
  data/
    raw/                     # immutable
    external/                # downloaded references/resources
    interim/                 # temporary cleaned/intermediate files
    processed/               # analysis-ready data
  metadata/
    samples.tsv
    data_dictionary.md
  notebooks/
  src/
  scripts/
  workflows/
  configs/
  results/
  reports/
  docs/
  tests/
  environment/
```

If a project is small, use a simpler structure, but still preserve raw data and document commands.

## Data Safety Rules

- Never edit files in `data/raw/` in place.
- Never delete datasets, FASTQ/BAM/VCF/FASTA/GTF/GFF files, notebooks, or result folders without explicit permission.
- Before destructive operations, show the exact paths and command.
- Prefer copying raw data into `data/interim/` before transformation.
- Keep checksums for important downloaded or generated data when reasonable.
- Store dataset source, access date, license/terms, and citation in the project README or metadata folder.

## Reproducibility Rules

For scripts and workflows:

- Prefer command-line interfaces with clear arguments.
- Include logging.
- Make scripts resumable when processing many samples.
- Avoid hardcoded absolute paths unless they are workspace-level config paths.
- Use config files for parameters.
- Write outputs to explicit output folders.
- Record tool versions.
- Use deterministic seeds where applicable.
- Add small test fixtures when possible.

For Python:

- Prefer `src/` modules for reusable logic.
- Notebooks are for exploration, not final pipelines.
- Move stable notebook logic into scripts or modules.
- Use `argparse`, `typer`, or config files for scripts.
- Prefer `pathlib`, structured logging, and clear exceptions.
- Use virtual environments, Conda/Mamba environments, or containers per project.

For R:

- Prefer scripts or Quarto/RMarkdown for reproducible reports.
- Record package versions.
- Keep raw input paths and output paths explicit.
- Avoid hidden workspace state.

For workflows:

- Prefer Snakemake, Nextflow, CWL, WDL, or Makefiles when a process has multiple steps or many samples.
- Keep workflow configs under `configs/`.
- Put workflow logs under `logs/`.
- Validate sample sheets before launching long runs.

## Bioinformatics Analysis Expectations

For sequencing work, check and document relevant items:

- Input type: FASTQ, BAM/CRAM, VCF/BCF, FASTA, GTF/GFF, count matrix, abundance table, metadata table.
- Organism and reference build.
- Single-end vs paired-end.
- Read length and platform.
- Sample IDs and batch variables.
- QC expectations.
- Tool choice and parameters.
- Output interpretation limits.

For RNA-seq:

- Track aligner/pseudoaligner choice.
- Track annotation release.
- Validate sample metadata.
- Check batch effects and library size.
- Avoid differential expression claims without proper design formula and statistical correction.

For variant analysis:

- Track reference genome build.
- Track caller and filtering parameters.
- Distinguish germline vs somatic assumptions.
- Document annotation database versions.
- Avoid clinical claims unless explicitly validated.

For metagenomics:

- Track database version.
- Track host/decontamination steps.
- Be careful with relative abundance interpretations.
- Document classifier and confidence thresholds.

For ML on biological data:

- Check data leakage aggressively.
- Split by patient, study, batch, family, or biological unit where needed.
- Keep train/validation/test separation strict.
- Report baselines, metrics, confidence intervals where possible.
- Save preprocessing fitted only on training data.
- Do not tune on the test set.
- Record random seeds and hardware assumptions.

## Memory Auto-Update Policy

Claude must maintain project memory in `.claude/memory/`.

The files are:

```text
.claude/memory/CURRENT_STATE.md   # concise state loaded every session
.claude/memory/PROJECTS.md        # active/completed projects and status
.claude/memory/TOOLKIT.md         # tools, packages, commands, environments learned/used
.claude/memory/DECISIONS.md       # durable project/design decisions
.claude/memory/LEARNING_LOG.md    # append-only dated learning log
```

Update memory automatically when any of these happen:

- A new project is created.
- A project goal, dataset, tool, or workflow changes.
- The user learns a new bioinformatics concept, tool, command, package, file format, or pipeline pattern.
- A bug, environment issue, installation fix, or command gotcha is solved.
- A dataset is downloaded, created, cleaned, or validated.
- A meaningful milestone is completed.
- A reusable pattern appears and should become a skill or template.

Memory update rules:

- Keep `CURRENT_STATE.md` concise, ideally under 150 lines.
- Append detailed learning events to `LEARNING_LOG.md`.
- Update `TOOLKIT.md` when a tool/package/command becomes part of the user's working knowledge.
- Update `PROJECTS.md` when project status changes.
- Update `DECISIONS.md` only for stable decisions that should guide future work.
- Do not save secrets, tokens, private credentials, or sensitive personal data.
- Do not save huge logs; summarize the important part.
- At the end of meaningful work, say whether memory was updated and list the files changed.

If unsure whether a memory update is warranted, prefer a small update over losing important context.

## Session Start Protocol

At the start of a new task:

1. Identify the active project, if any.
2. Read relevant memory files if the task depends on prior context.
3. Inspect the folder structure before editing.
4. Confirm whether the task is exploratory, learning-focused, implementation-focused, or reporting-focused.
5. Make a short plan for multi-step work.

## Session End Protocol

Before finishing a meaningful task:

1. Summarize what changed.
2. Run or propose verification commands when applicable.
3. Update memory files if anything durable was learned or built.
4. Mention remaining risks, TODOs, or next steps.
5. Keep the final answer direct and practical.

## Skills Policy

Personal/global skills may live under:

```text
C:\Users\0king\.claude\skills
```

Project-specific skills should live under:

```text
E:\Bioinformatics\.claude\skills
```

Create a skill when:

- The user repeats a workflow.
- A procedure grows too long for `CLAUDE.md`.
- A project needs a special checklist.
- A specific toolchain needs stable commands.
- A recurring bioinformatics analysis pattern appears.

Each skill should have:

```text
.claude/skills/<skill-name>/SKILL.md
```

Use concise frontmatter with a clear description so Claude can invoke it when relevant.

## Preferred Communication Style

The user prefers practical, direct, high-value help.

When explaining:

- Be clear and technically precise.
- Use examples and commands.
- Avoid filler.
- For complex topics, reason step by step.
- For project setup, give copy-pasteable PowerShell commands.
- For research/project planning, be strict and realistic.
- Do not hype weak ideas.
- Call out data quality, licensing, validation, and reproducibility risks.

## Important Safety and Ethics

For biological, medical, or human data:

- Do not help identify individuals from genomic/medical data.
- Do not expose private health information.
- Recommend de-identification and access control.
- Distinguish educational analysis from clinical decision-making.
- Do not provide clinical diagnosis or treatment decisions.
- Respect dataset licenses and publication restrictions.

## Default Commands to Prefer

On Windows PowerShell:

```powershell
Get-ChildItem
Get-Content
Set-Content
New-Item
Remove-Item
Copy-Item
Move-Item
python --version
pip --version
conda --version
mamba --version
git status
```

For project discovery:

```powershell
Get-ChildItem -Force
Get-ChildItem -Recurse -Depth 2
git status
```

For Python environments:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
pip freeze > requirements.txt
```

For Conda/Mamba environments:

```powershell
conda env export > environment/environment.yml
mamba env export > environment/environment.yml
```

## Protected Paths

Treat these as protected unless explicitly told otherwise:

```text
data/raw/
data/external/
metadata/
environment/
.claude/memory/
CLAUDE.md
```

Protected means: inspect and update carefully, never casually overwrite.
'@ | Set-Content -Encoding UTF8 "$root\CLAUDE.md"

@'
# Current State

Last updated: 2026-06-08

## Workspace

Root: `E:\Bioinformatics`

Purpose: long-term bioinformatics learning and multi-project workspace.

## Current Focus

- Study bioinformatics fundamentals.
- Build several practical bioinformatics projects.
- Keep project state, learned tools, and workflow decisions persistent across Claude Code sessions.

## Active Project

None recorded yet.

When the first concrete project starts, update this section with:

- Project name.
- Goal.
- Dataset/source.
- Main tools.
- Current milestone.
- Next action.

## Current Learning Themes

- Bioinformatics project organization.
- Reproducible computational biology workflows.
- Safe handling of raw biological data.
- Tool and environment tracking.

## Memory Maintenance

Keep this file concise. Detailed events go to `LEARNING_LOG.md`.
'@ | Set-Content -Encoding UTF8 "$root\.claude\memory\CURRENT_STATE.md"

@'
# Projects

This file tracks bioinformatics projects in `E:\Bioinformatics`.

## Active Projects

No active projects recorded yet.

Template:

```markdown
## <Project Name>

Status: planned | active | paused | completed
Started:
Last updated:
Path:
Goal:
Dataset/source:
Main tools:
Current milestone:
Next actions:
Risks/issues:
```

## Completed Projects

None yet.

## Paused / Archived Projects

None yet.
'@ | Set-Content -Encoding UTF8 "$root\.claude\memory\PROJECTS.md"

@'
# Toolkit

This file tracks tools, packages, commands, and file formats learned or used in this workspace.

## Core Environment

- OS: Windows / PowerShell
- Workspace root: `E:\Bioinformatics`
- Claude Code project memory: `CLAUDE.md` plus `.claude/memory/`

## Bioinformatics File Formats

Add learned formats here, for example:

- FASTA
- FASTQ
- BAM / SAM / CRAM
- VCF / BCF
- GTF / GFF
- BED
- count matrices
- sample metadata tables

## Tools Learned / Used

Add tools here as they become relevant.

Template:

```markdown
### <Tool Name>

Category:
Installed where:
Version:
Used for:
Common commands:
Gotchas:
Related projects:
```

## Python Packages

Add stable packages here.

## R Packages

Add stable packages here.

## Workflow Tools

Add Snakemake, Nextflow, Make, Docker, Conda/Mamba, etc. when used.

## Useful Commands

Add commands that worked and should be reused.
'@ | Set-Content -Encoding UTF8 "$root\.claude\memory\TOOLKIT.md"

@'
# Decisions

This file records durable decisions that should influence future work.

## Workspace Decisions

- Use `E:\Bioinformatics` as the root for bioinformatics learning and projects.
- Keep raw biological data immutable.
- Use `.claude/memory/` as project-local memory for learning progress, tools, project state, and decisions.
- Keep `CURRENT_STATE.md`, `PROJECTS.md`, `TOOLKIT.md`, and `DECISIONS.md` short enough to load every session.
- Keep detailed dated learning events in `LEARNING_LOG.md`.

## Project Decisions

None yet.

Template:

```markdown
## YYYY-MM-DD — <Decision Title>

Context:
Decision:
Reason:
Impact:
Revisit if:
```
'@ | Set-Content -Encoding UTF8 "$root\.claude\memory\DECISIONS.md"

@'
# Learning Log

Append-only dated log of concepts, tools, projects, bugs, and workflow lessons learned in this workspace.

## 2026-06-08 — Workspace memory initialized

- Created persistent Claude Code memory structure for bioinformatics learning and projects.
- Established memory files for current state, project tracking, toolkit tracking, durable decisions, and append-only learning events.
'@ | Set-Content -Encoding UTF8 "$root\.claude\memory\LEARNING_LOG.md"

@'
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
## YYYY-MM-DD — <Short Title>

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
'@ | Set-Content -Encoding UTF8 "$root\.claude\skills\update-bio-memory\SKILL.md"

Write-Host "Created Bioinformatics Claude Code setup at $root"
Write-Host "Next commands:"
Write-Host "cd $root"
Write-Host "claude"
Write-Host "Then inside Claude Code run: /memory"
