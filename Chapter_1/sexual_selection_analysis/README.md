# Chapter 2: Comparing mating systems and sexual selection pressures across three congeneric species of pipefish that span the continuum of sexual dimorphism
This directory contains information about how I generated the calculations of sexual selection for three species of pipefish from the genus _Syngnathus_. Calculations of fitness were generated from the results of the parentage analysis for _Synanthus floridae_ and _Synganthus fuscus_. Publicly accesible data was pulled for the comparisson of _Synganthus scovelli_.

## Navigating this repository
All Rmarkdown documents used for the various analyses are located in the directory docs/. They do the following things:

 - `selection_analysis_floridae.Rmd` and `selection_analysis_fuscus.Rmd`: Work through the analysis conducted on data I collected from experimental breeding experiments done with _Syngnathus floridae_ and _Synganthus fuscus_. I first investigate the presence of sexual dimorphism in body size and then convert the results from the genetic parentage analysis into overall fitness estimates for males and females. These documents also include all analyses into mated v. unmated indivduals and how I performed the calculations of Bateman's gradient, the decomposition of the opportunity for selection ($I$), and the absolute ($s$) and standardized ($s'$) selection differentials on standard length.
   
 - `selection_analysis_scovelli.Rmd`: Works through the re-analysis of publicly accesible data gather for _Synganthus scovelli_ from similar experimental breeding populations. This document follows the same structure as outlined above, minus the generation of the fitness data (included in the public dataset).
   
 - `generating_figures.Rmd`: Generates all of the figures used in the thesis using data generated in the previous three RMarkdown documents.

### R
The directory R/ contains the script that was used to convert the results from the genetic parentage analysis into overall mating and reproductive success for _S. floridae_ and _S. fuscus_.
