install.packages('knitr')
install.packages('testthat')

library(knitr)
library(testthat)


knitr::knit('ALE-Code.Rmd', tangle=TRUE)
source('ALE-Code.R')
testthat::test_file('tests/testthat/test-0.R')
testthat::test_file('tests/testthat/test-1.R')

rmarkdown::render('..ALE-Code.Rmd', output_format ='pdf_document', output_dir = '../Final_Manuscript', output_file = 'Final_Manuscript')
