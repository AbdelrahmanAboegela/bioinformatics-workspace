# Bioinformatics Workspace

A long-term learning and project workspace for bioinformatics, built for someone coming from an AI/ML/DL background.

The goal is not to jump straight into foundation models — it is to build the data literacy, pipeline knowledge, and statistical thinking that make AI-for-biology work actually valid.

---

## Structure

```text
E:\Bioinformatics\
├── bioinformatics_ai_roadmap_pack/   # Study roadmap, weekly plan, resources, project portfolio
├── projects/                         # Individual bioinformatics projects (created as work progresses)
├── scratch/                          # Temporary experiments — not for permanent work
├── .claude/
│   ├── memory/                       # Persistent session memory (state, projects, toolkit, decisions)
│   └── skills/                       # Reusable Claude workflow skills
├── CLAUDE.md                         # Workspace instructions for Claude Code
└── .gitignore
```

---

## Roadmap Pack

The [`bioinformatics_ai_roadmap_pack/`](bioinformatics_ai_roadmap_pack/) folder contains a structured self-study pack with 12 phases, from orientation to a research-grade capstone portfolio.

| File | Contents |
|---|---|
| [`README_START_HERE.md`](bioinformatics_ai_roadmap_pack/README_START_HERE.md) | Entry point — philosophy and reading order |
| [`00_MASTER_ROADMAP.md`](bioinformatics_ai_roadmap_pack/00_MASTER_ROADMAP.md) | Full phase breakdown with deliverables and time estimates |
| [`01_WEEKLY_STUDY_PLAN.md`](bioinformatics_ai_roadmap_pack/01_WEEKLY_STUDY_PLAN.md) | Week-by-week study plan with checkboxes |
| [`02_RESOURCE_CATALOG_EN_AR.md`](bioinformatics_ai_roadmap_pack/02_RESOURCE_CATALOG_EN_AR.md) | Curated free resources in English and Arabic |
| [`03_PROJECT_PORTFOLIO.md`](bioinformatics_ai_roadmap_pack/03_PROJECT_PORTFOLIO.md) | Projects from beginner utilities to research benchmarks |
| [`04_KEY_PAPERS_READING_MAP.md`](bioinformatics_ai_roadmap_pack/04_KEY_PAPERS_READING_MAP.md) | Classic and modern papers with reading order |
| [`05_BOOKS_AND_REFERENCES.md`](bioinformatics_ai_roadmap_pack/05_BOOKS_AND_REFERENCES.md) | Free and open books first, paid references second |
| [`06_TRENDS_2026_AI_BIOINFORMATICS.md`](bioinformatics_ai_roadmap_pack/06_TRENDS_2026_AI_BIOINFORMATICS.md) | Current directions: foundation models, spatial omics, agentic workflows |
| [`07_BIOINFORMATICS_TOOLKIT_CHECKLIST.md`](bioinformatics_ai_roadmap_pack/07_BIOINFORMATICS_TOOLKIT_CHECKLIST.md) | Tools, databases, file formats, and commands checklist |
| [`08_CLAUDE_CODE_WORKFLOW.md`](bioinformatics_ai_roadmap_pack/08_CLAUDE_CODE_WORKFLOW.md) | How this workspace integrates with Claude Code |
| [`09_SOURCE_INDEX.md`](bioinformatics_ai_roadmap_pack/09_SOURCE_INDEX.md) | Index of all external sources and links |

---

## Roadmap Phases

| Phase | Name | Estimated Time |
|---|---|---:|
| 0 | Orientation | 2–4 days |
| 1 | Biology Foundations | 2–4 weeks |
| 2 | Bioinformatics Computing | 2–4 weeks |
| 3 | Sequence Algorithms | 3–5 weeks |
| 4 | NGS Core Pipelines | 4–6 weeks |
| 5 | RNA-seq / Expression | 5–8 weeks |
| 6 | Genomics / Variants | 4–6 weeks |
| 7 | Single-cell + Spatial | 6–8 weeks |
| 8 | Proteins + Structure | 4–6 weeks |
| 9 | AI for Bioinformatics | 6–10 weeks |
| 10 | Reproducibility + Agents | continuous |
| 11 | Capstone Portfolio | 2–4 months |

---

## Project Portfolio Plan

Projects are organized from beginner utilities to research-grade benchmarks. Detailed checklists live in [`03_PROJECT_PORTFOLIO.md`](bioinformatics_ai_roadmap_pack/03_PROJECT_PORTFOLIO.md).

| Level | Project | Focus |
|---|---|---|
| 0 | Workspace template | Project layout and raw data hygiene |
| 1 | FASTA/FASTQ parser | File formats, biological sequences, Python scripting |
| 1 | Rosalind solutions | Sequence algorithms and biology fundamentals |
| 2 | FASTQ QC dashboard | FastQC, MultiQC, reproducibility reports |
| 2 | Toy alignment + BAM summary | minimap2/BWA, samtools, IGV |
| 3 | RNA-seq DE workflow | DESeq2/edgeR, normalization, volcano/MA/PCA plots, enrichment |
| 3 | Expression ML classifier | Leakage-safe omics ML, SHAP, pathway interpretation |
| 4 | Variant calling pipeline | BAM → VCF, filtering, annotation |
| 4 | Variant effect ML baseline | Sequence features, similarity-aware splits |
| 5 | Scanpy single-cell analysis | H5AD, QC, UMAP, clustering, cell type annotation |
| 5 | Classical vs FM cell embeddings | scVI vs scGPT representation comparison |
| 6 | Protein function classifier | ESM embeddings, similarity-aware splits |
| 6 | AlphaFold DB report | pLDDT/PAE interpretation, structure visualization |
| 7 | BioFile Inspector | File type detection, sample sheet validation, pipeline recommendation |
| 7 | Workflow repair benchmark | LLM/agent benchmark for broken bioinformatics pipelines |

---

## 2026 AI + Bioinformatics Focus Areas

- DNA/RNA language models (DNABERT, Nucleotide Transformer, Evo)
- Protein language models (ESM3, AlphaFold 3-era)
- Single-cell foundation models (scGPT, scVI, Nicheformer)
- Multimodal omics integration
- Agentic and reproducible workflow systems
- Pangenomics and long-read sequencing

---

## Core Principles

**Data safety.** Raw data is immutable. Never edit files in `data/raw/` in place.

**Provenance.** Every dataset entry records source, accession ID, access date, and license.

**Reproducibility.** Scripts use config files, explicit output paths, recorded tool versions, and deterministic seeds.

**No leakage.** Biological ML splits by patient, study, batch, or biological unit — not random rows.

**No overclaiming.** Computational findings are evidence, not conclusions. Clinical interpretation requires validation.

---

## Environment

- OS: Windows 11 + PowerShell for project management
- WSL2 or Linux for bioinformatics tools
- Conda/Mamba for environment management
- Python (AI, scripting, Scanpy)
- R/Bioconductor (RNA-seq, omics statistics)
- Snakemake / Nextflow for workflow management

---

## Status

Work in progress. Projects will be added under `projects/` as each phase of the roadmap is completed.
