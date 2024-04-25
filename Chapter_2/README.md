# Chapter 3: Sexual selection on monomorphic traits is underpinned by evidence of genetic constraints on sex-biased expression in the dusky pipefish, _Syngnathus floridae_

This folder documents the analysis of selection pressures and gene expression in sexually mature male and female Dusky pipefish.

## Navigating this repository
All Rmarkdown documents used for the various analyses are located in the directory docs/. They do the following things:

- `Analyzing_floridae_RNAseq_data_from_MSU.Rmd`: Works through the entire RNA-sequencing pipeline starting with the raw reads, moving through pre-assembly quality control, de novo assembly generation, post-assembly quality control and thinning, and alignment and abundance estimations. The programs used for each step and how each program was used is highlighted in detail within the document, along with the results of the various steps. The end file generated from this document is a .RDS gene expression matrix that was then used for differential expression analysis.

- `floridae_diff_expr_analysis.Rmd`: Read in the .RDS file, perform some exploratory analysis, including a single-factor analysis that looked at MvF gene expression across all organs, and then a detailed multi-factor analysis that explored MvF expression levels within each organ. Lastly, this file works through the steps of the Gene Ontology analysis performed on sex-biased genes.

- `floridae_tissue_specificity.Rmd`: Read in the quant.sf files generated from salmon to calculate the tissue specificity index tau ($\tau$) for all genes. This file includes the filtering of genes and function that was used to calculate tau. Additionally, this file works through the comparisson of sex-biased gene expression and tissue specificity.

All bash scripts that correspond with any .Rmd documents can be found in the bash/ directory.
