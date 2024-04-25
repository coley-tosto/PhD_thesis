# Chapter  4: Investigating the sexually dimorphic transcriptome of a sex-role-reversed species expressing intermediate levels of sexual dimorphism, the Northern pipefish (_Syngnathus fuscus_)

This folder documents the analysis of sex-biased and tissue-specific expression in sexually mature male and female Northern pipefish.

## Navigating this repository
All Rmarkdown documents used for the various analyses are located in the directory docs/. They do the following things:

- `Analyzing_fuscus_RNAseq_data_from_MSU.Rmd`: Works through the entire RNA-sequencing pipeline starting with the raw reads, moving through pre-assembly quality control, _de novo_ assembly generation, post-assembly quality control and thinning, and alignment and abundance estimations. The programs used for each step and how each program was used is highlighted in detail within the document, along with the results of the various steps. The end file generated from this document is a .RDS gene expression matrix that was then used for differential expression analysis.
  
- `fuscus_diff_expr_analysis.Rmd`: Reads in the .RDS file generated from the above document, perform some exploratory analysis, including a single-factor analysis that looked at MvF gene expression across all organs, and then a detailed single-factor analysis that explored MvF expression levels within each organ.Lastly, it explains the pipeline used to classify sex-biased and sex-specific genes. This file also generates many of the figures used in this thesis.
  
- `fuscus_tissue_specificity.Rmd`: Read in the quant.sf files generated from salmon to calculate the tissue specificity index tau ($\tau$) for all genes. This file includes the filtering of genes and function that was used to calculate tau. Additionally, this file contains the comparisson analysis of tau vs sex-bias and generates additional figures included in this thesis.

All bash scripts that correspond with any .Rmd documents can be found in the bash/ directory.
