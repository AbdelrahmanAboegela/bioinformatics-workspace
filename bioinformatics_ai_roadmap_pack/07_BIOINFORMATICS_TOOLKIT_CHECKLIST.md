# Bioinformatics Toolkit Checklist

**Updated:** 2026-06-08

This file is a working checklist of tools, databases, file formats, and skills.

## File Formats

### Sequence and read files

- [ ] FASTA: `.fa`, `.fasta`, `.fna`, `.faa`.
- [ ] FASTQ: `.fq`, `.fastq`, `.fq.gz`, `.fastq.gz`.
- [ ] Quality scores and Phred encoding.

### Alignment files

- [ ] SAM.
- [ ] BAM.
- [ ] CRAM.
- [ ] sorting and indexing.
- [ ] mapping quality.
- [ ] SAM flags.

### Variant files

- [ ] VCF.
- [ ] BCF.
- [ ] INFO/FILTER/FORMAT fields.
- [ ] genotype fields.

### Genome annotation and intervals

- [ ] BED.
- [ ] GTF.
- [ ] GFF/GFF3.
- [ ] coordinate systems.

### Omics matrices

- [ ] count matrix.
- [ ] TPM/FPKM/RPKM.
- [ ] metadata/sample sheet.
- [ ] H5AD/AnnData.
- [ ] loom.

### Structure files

- [ ] PDB.
- [ ] mmCIF.
- [ ] AlphaFold PDB/mmCIF output.

---

## Databases

| Database | Learn | Link |
|---|---|---|
| NCBI | sequence, PubMed, BLAST, GEO/SRA access | https://www.ncbi.nlm.nih.gov/ |
| SRA | raw sequencing reads | https://www.ncbi.nlm.nih.gov/sra |
| GEO | expression/functional genomics datasets | https://www.ncbi.nlm.nih.gov/geo/ |
| Ensembl | genome annotations/browser | https://www.ensembl.org/ |
| UCSC Genome Browser | genome browsing | https://genome.ucsc.edu/ |
| UniProt | protein sequences/function | https://www.uniprot.org/ |
| RCSB PDB | experimental protein structures | https://www.rcsb.org/ |
| AlphaFold DB | predicted protein structures | https://alphafold.ebi.ac.uk/ |
| KEGG | pathways | https://www.kegg.jp/ |
| Reactome | pathways | https://reactome.org/ |
| Human Protein Atlas | protein expression/localization | https://www.proteinatlas.org/ |
| CellxGene Census | single-cell data | https://chanzuckerberg.github.io/cellxgene-census/ |

---

## Core Command-Line Tools

### QC

- [ ] FastQC.
- [ ] MultiQC.
- [ ] fastp.
- [ ] cutadapt.

### Sequence search and alignment

- [ ] BLAST+.
- [ ] minimap2.
- [ ] BWA.
- [ ] Bowtie2.
- [ ] STAR.
- [ ] HISAT2.

### File processing

- [ ] samtools.
- [ ] bcftools.
- [ ] bedtools.
- [ ] seqkit.
- [ ] csvtk.
- [ ] pigz.

### RNA-seq

- [ ] Salmon.
- [ ] kallisto.
- [ ] featureCounts / subread.
- [ ] DESeq2.
- [ ] edgeR.
- [ ] limma-voom.
- [ ] tximport.

### Single-cell

- [ ] Scanpy.
- [ ] Seurat.
- [ ] scvi-tools.
- [ ] CellTypist.
- [ ] Squidpy.

### Workflows and environments

- [ ] Conda/Mamba/Micromamba.
- [ ] Bioconda.
- [ ] Docker.
- [ ] Apptainer/Singularity.
- [ ] Snakemake.
- [ ] Nextflow.
- [ ] nf-core.
- [ ] Git/GitHub.

---

## Python Packages

- [ ] biopython.
- [ ] pandas.
- [ ] numpy.
- [ ] scipy.
- [ ] scikit-learn.
- [ ] matplotlib.
- [ ] seaborn.
- [ ] statsmodels.
- [ ] scanpy.
- [ ] anndata.
- [ ] scvi-tools.
- [ ] pybedtools.
- [ ] pysam.
- [ ] cyvcf2.
- [ ] torch.
- [ ] transformers.
- [ ] datasets.

---

## R Packages

- [ ] BiocManager.
- [ ] DESeq2.
- [ ] edgeR.
- [ ] limma.
- [ ] tximport.
- [ ] GenomicRanges.
- [ ] SummarizedExperiment.
- [ ] SingleCellExperiment.
- [ ] Seurat.
- [ ] ggplot2.
- [ ] dplyr.
- [ ] readr.
- [ ] clusterProfiler.
- [ ] fgsea.

---

## Environment Commands

### Conda/Mamba

```bash
mamba create -n bioinfo python=3.11
mamba activate bioinfo
mamba install -c conda-forge -c bioconda fastqc multiqc samtools bcftools bedtools seqkit
```

### Python venv

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
pip install pandas numpy scipy scikit-learn biopython matplotlib
```

### Git

```bash
git status
git add README.md src scripts configs environment
git commit -m "Initialize bioinformatics project"
```

---

## Reproducibility Checklist

Before calling a project “done”:

- [ ] README has goal and data source.
- [ ] Raw data path is documented.
- [ ] Accession IDs recorded.
- [ ] Reference genome/annotation version recorded.
- [ ] Tool versions recorded.
- [ ] Environment file saved.
- [ ] Commands are copy-pasteable.
- [ ] Random seeds set where applicable.
- [ ] Outputs go to explicit folders.
- [ ] Raw data is not overwritten.
- [ ] Limitations are stated.

---

## Common Mistakes to Avoid

- [ ] Using TPM as raw input to DESeq2/edgeR.
- [ ] Ignoring batch effects.
- [ ] Mixing genome builds.
- [ ] Splitting ML data randomly when samples/patients/studies leak.
- [ ] Treating UMAP clusters as proof of cell types.
- [ ] Treating AlphaFold predictions as experimental structures.
- [ ] Forgetting accession IDs.
- [ ] Not saving tool versions.
- [ ] Running old commands from outdated tutorials without checking docs.

