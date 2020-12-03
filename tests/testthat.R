install.packages('knitr')
install.packages('testthat')

library(knitr)
library(testthat)


knitr::knit('ALE-Code.Rmd', tangle=TRUE)
source('ALE-Code.R')
testthat::test_file('tests/testthat/test-1.R')
testthat::test_file('tests/testthat/test-2.R')
system('-rm ALE-Code.R')
