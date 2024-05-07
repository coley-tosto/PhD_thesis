# Chapter 5: Investigating the sexually dimorphic transcriptome of a highly sexually dimorphic sex-role-reversed species, the Gulf pipefish (_Syngnathus scovelli_)


## Navigating this repository
All Rmarkdown documents used for the various analyses are located in the directory docs/. They do the following things:

- `Analyzing_scovelli_RNAseq_data.Rmd`: Works through obtaining the all publicly accesible RNA-sequencing reads for _S. scovelli_ and then follows the entire RNA-sequencing pipeline starting with the imported raw reads, moving through pre-assembly quality control, _de novo_ assembly generation, post-assembly quality control and thinning, and alignment and abundance estimations. The programs used for each step and how each program was used is highlighted in detail within the document, along with the results of the various steps. The end file generated from this document is a .RDS gene expression matrix that was then used for differential expression analysis.

- `scovelli_diff_expr_analysis.Rmd`: Read in the .RDS file, perform some exploratory analysis, including a single-factor analysis that looked at MvF gene expression across all organs, and then a detailed single-factor analysis that explored MvF expression levels within each organ. This file also shows all of the steps taken for the Gene Ontology analysis of sex-biased and sex-specific genes. 

- `scovelli_tissue_specificity.Rmd`: Read in the quant.sf files generated from salmon to calculate the tissue specificity index tau ($\tau$) for all genes. This file includes the filtering of genes and function that was used to calculate tau. Additionally, this file contains the comparisson analysis of tau vs sex-bias.

All bash scripts that correspond with any .Rmd documents can be found in the bash/ directory.
