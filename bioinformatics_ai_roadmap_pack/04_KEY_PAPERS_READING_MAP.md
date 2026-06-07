# Key Papers Reading Map

**Updated:** 2026-06-08

This file is not a random bibliography. It is a staged reading map. Read papers after you have enough context to understand why they matter.

## How to Read Bioinformatics Papers

For each paper, extract:

- [ ] Biological problem.
- [ ] Data type.
- [ ] Input/output.
- [ ] Core algorithm/statistical model.
- [ ] Assumptions.
- [ ] Evaluation design.
- [ ] Limitations.
- [ ] What tool/database resulted, if any.
- [ ] Whether the result is still current or mainly historical.

Template:

```markdown
## Paper Title

Problem:
Data:
Method:
Key idea:
Why it mattered:
Limitations:
What I should implement/use:
```

---

## Stage 1 — Sequence Search and Alignment

### BLAST

- **Paper:** Altschul et al., 1990, “Basic local alignment search tool.”
- **Why read:** foundational heuristic for rapid sequence similarity search.
- **Link:** https://pubmed.ncbi.nlm.nih.gov/2231712/
- [ ] Read abstract and method overview.
- [ ] Understand local alignment vs global alignment.
- [ ] Understand E-value intuition.

### BWA

- **Paper:** Li and Durbin, 2009, “Fast and accurate short read alignment with Burrows-Wheeler transform.”
- **Why read:** foundational short-read aligner based on BWT/FM-index ideas.
- **Link:** https://pubmed.ncbi.nlm.nih.gov/19451168/
- [ ] Understand why indexing is needed for huge genomes.
- [ ] Understand why short-read alignment is not exact matching.

### SAMtools / BCFtools

- **Paper:** Danecek et al., 2021/2020 preprint-era publication, “Twelve years of SAMtools and BCFtools.”
- **Why read:** practical tooling for BAM/VCF processing.
- **Link:** https://arxiv.org/abs/2012.10295
- [ ] Learn what SAM/BAM/CRAM and VCF/BCF workflows need.

---

## Stage 2 — RNA-seq and Differential Expression

### edgeR

- **Paper:** Robinson, McCarthy, Smyth, 2010, “edgeR: a Bioconductor package for differential expression analysis of digital gene expression data.”
- **Link:** https://pubmed.ncbi.nlm.nih.gov/19910308/
- [ ] Understand count data and overdispersion.

### DESeq2

- **Paper:** Love, Huber, Anders, 2014, “Moderated estimation of fold change and dispersion for RNA-seq data with DESeq2.”
- **Link:** https://pubmed.ncbi.nlm.nih.gov/25516281/
- [ ] Understand dispersion, shrinkage, adjusted p-values.
- [ ] Know why DESeq2 uses raw counts, not TPM.

### RNA-seq workflow

- **Paper/workflow:** Love et al., RNA-seq workflow: gene-level exploratory analysis and differential expression.
- **Link:** https://www.bioconductor.org/packages/release/workflows/vignettes/rnaseqGene/inst/doc/rnaseqGene.html
- [ ] Reproduce the workflow.
- [ ] Build a report from it.

---

## Stage 3 — Workflows and Reproducibility

### Snakemake

- **Paper:** Köster and Rahmann, 2012, “Snakemake — a scalable bioinformatics workflow engine.”
- **Link:** https://academic.oup.com/bioinformatics/article/28/19/2520/290322
- [ ] Understand rules, DAGs, wildcards, reproducible execution.

### Nextflow / nf-core

- **Paper:** Langer et al., 2025, “Empowering bioinformatics communities with Nextflow and nf-core.”
- **Link:** https://link.springer.com/article/10.1186/s13059-025-03673-9
- [ ] Understand community-standard pipelines and reusable modules.

---

## Stage 4 — Single-cell

### scVI

- **Paper:** Lopez et al., 2018/2017 preprint, “Deep generative model for single-cell RNA sequencing.”
- **Link:** https://arxiv.org/abs/1710.05086
- [ ] Understand latent variable models for scRNA-seq.

### scGPT

- **Paper:** Cui et al., 2024, “scGPT: toward building a foundation model for single-cell multi-omics using generative AI.”
- **Link:** https://www.nature.com/articles/s41592-024-02201-0
- [ ] Understand cells as gene-token contexts.
- [ ] Compare with standard Scanpy/scVI workflows.

### Single-cell foundation models review

- **Paper:** Baek et al., 2025, “Single-cell foundation models: bringing artificial intelligence into cellular biology.”
- **Link:** https://www.nature.com/articles/s12276-025-01547-5
- [ ] Understand the landscape and limitations.

### Nicheformer

- **Paper:** Tejada-Lapuerta et al., 2025, “Nicheformer: a foundation model for single-cell and spatial omics.”
- **Link:** https://www.nature.com/articles/s41592-025-02814-z
- [ ] Understand spatial context and local cellular microenvironment modeling.

---

## Stage 5 — Protein Structure and Protein Language Models

### AlphaFold 2

- **Paper:** Jumper et al., 2021, “Highly accurate protein structure prediction with AlphaFold.”
- **Link:** https://www.nature.com/articles/s41586-021-03819-2
- [ ] Understand why structure prediction changed the field.
- [ ] Learn confidence metrics.

### AlphaFold DB

- **Paper:** Varadi et al., AlphaFold Protein Structure Database in 2024.
- **Link:** https://pubmed.ncbi.nlm.nih.gov/37933859/
- [ ] Understand open predicted structure databases.

### AlphaFold 3

- **Paper:** Abramson et al., 2024, “Accurate structure prediction of biomolecular interactions with AlphaFold 3.”
- **Link:** https://www.nature.com/articles/s41586-024-07487-w
- [ ] Understand protein/nucleic acid/small molecule complex prediction.
- [ ] Note access, reproducibility, and validation limitations.

### ESM3

- **Paper:** Hayes et al., 2025, “Simulating 500 million years of evolution with a language model.”
- **Link:** https://www.science.org/doi/10.1126/science.ads0018
- [ ] Understand multimodal protein sequence/structure/function modeling.

---

## Stage 6 — DNA and Genome Foundation Models

### Nucleotide Transformer

- **Paper:** Dalla-Torre et al., 2025, “Nucleotide Transformer.”
- **Link:** https://www.nature.com/articles/s41592-024-02523-z
- [ ] Understand DNA pretraining across genomes and transfer learning.

### Evo

- **Paper:** Nguyen et al., 2024, “Sequence modeling and design from molecular to genome scale.”
- **Link:** https://www.science.org/doi/10.1126/science.ado9336
- [ ] Understand long-context genomic sequence modeling.

### DNA FM Benchmarking

- **Paper:** Feng et al., 2025, benchmarking DNA foundation models across genomic and epigenomic tasks.
- **Link:** https://www.nature.com/articles/s41467-025-65823-8
- [ ] Understand how to evaluate foundation models beyond hype.

### Genome Language Model Survey

- **Paper:** Shu et al., 2026, “A comprehensive survey of genome language models.”
- **Link:** https://academic.oup.com/bib/article/27/1/bbaf724/8426124
- [ ] Use as a 2026 map of DNA/RNA language models.

---

## Stage 7 — AI + Bioinformatics Surveys and Systems

### Foundation Models in Bioinformatics

- **Paper:** Guo et al., 2025, “Foundation models in bioinformatics.”
- **Link:** https://academic.oup.com/nsr/article/12/4/nwaf028/7979309
- [ ] Read as a high-level map of genomics, transcriptomics, proteomics, drug discovery, and single-cell foundation models.

### Explainable AI for Bioinformatics

- **Paper:** Karim et al., 2022, “Explainable AI for Bioinformatics: Methods, Tools, and Applications.”
- **Link:** https://arxiv.org/abs/2212.13261
- [ ] Understand why generic XAI can mislead in biological contexts.

### Agentic command generation / workflow repair direction

- **Paper/tool:** oxo-call, 2026, documentation-grounded bioinformatics command-line generation with LLMs.
- **Link:** https://arxiv.org/abs/2604.12387
- [ ] Use this as a signal that documentation-grounded agents for bioinformatics commands are an active 2026 direction.

### Snakemaker

- **Paper/tool:** Masera et al., 2025, “Snakemaker: transforming ad-hoc analyses into Snakemake workflows with generative AI.”
- **Link:** https://arxiv.org/abs/2505.02841
- [ ] Useful for agentic workflow-generation inspiration.

---

## Paper Reading Checklist

For every paper you read:

- [ ] Add it to `papers/reading_log.md`.
- [ ] Write 5 bullet summary.
- [ ] Write one limitation.
- [ ] Identify one thing to implement or reproduce.
- [ ] Identify whether the result is historical, current-practical, or frontier-research.

