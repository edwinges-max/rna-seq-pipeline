# RNA-seq Analysis Pipeline

End-to-end RNA-seq analysis pipeline for differential gene expression analysis.

## Overview
This pipeline performs:
- Quality control (FastQC)
- Read alignment (STAR)
- Gene quantification
- Differential expression analysis (DESeq2)

## Tools
- FastQC
- STAR
- featureCounts
- DESeq2
- Snakemake

## Workflow
1. Quality control
2. Alignment
3. Quantification
4. Differential expression

## Usage

```bash
snakemake --cores 4
