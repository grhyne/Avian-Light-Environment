Travis CI Bagde: [![Build Status](https://travis-ci.com/grhyne/Avian-Light-Environment.svg?branch=main)](https://travis-ci.com/grhyne/Avian-Light-Environment)

# Avian Light Environment

This is a repository dedicated to better understanding the ecology of secretive ground-dwelling birds of the Amazon forests, specifically relating to niche partitioning in different light environments. Although a simple tool, the code written in R (ALE-Code.Rmd) provides base functions for extracting, manipulating, and visualizing raw light data from light-level geolocators, with the hopes of using this code for future analyses of Neotropical migratory species. 

## Instructions
Running this code involves comparing two species. To do so, follow these instructions. 
1. Open the **Data** folder in the repository, where each individual geolocator data will be stored as a .csv file with an accompanying BIRD_Description.txt file, labeled by their 4-letter species identification code. Select two species to compare, and open both of their Description.txt file. This will provide the information needed to insert into the code.

2. Open the ALE_Code.Rmd file, scroll past the introduction until you reach the **Inputting species information, installing packages** section under the Code heading. Here, we will simply enter the appropriate information from the Description.txt file for species 1 and species 2, including the full scientific name, the CODE_geo.csv file, the band date, and recapture date. Here is an example of the code, with ** indicating where you insert information:

```{r}
spName1 <- "**Sclerurus mexicanus**"
rawData <- as.data.frame(read.csv("./Species_Data/**SCME_geo.csv**", header=TRUE))

#Insert date banded and date recaptured in "YYYY-MM-DD" format
bandDate1 <- "**2018-07-05**"
recapDate1 <- "**2019-06-25**"

```
3. Create a PDF
In order to render our R markdown code (ALE-Code.Rmd) to a readable format (PDF), we will utilize the makefile. To do this, simply enter "make Manuscript" into the command line, and the new pdf will be found in the **Final_Manuscript** folder.

## Environment
The R code in this repository was written in the following environment:
R version 3.6.3 (2020-02-29)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 20.04.1 LTS
