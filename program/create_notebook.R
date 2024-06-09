
rm(list = ls())
cat("\014") 

library(haven)
library(codebook)
library(rmarkdown)
library(data.table)

#options(future.globals.maxSize = 892 * 1024^2)  # 892 MiB
options(future.globals.maxSize = 5 * 1024 * 1024 * 1024)  # 3 GiB

years <- c("2017")

for(i in years) {
  #new_codebook_rmd() # will generate a new Rmarkdown file called `codebook.Rmd`
  render(paste0("codebook_", i, ".Rmd")) # will generate an HTML codebook
  
}