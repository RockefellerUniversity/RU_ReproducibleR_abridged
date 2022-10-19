params <-
list(isSlides = "no")

## ----setup, include=FALSE-----------------------------------------------------
suppressPackageStartupMessages(require(knitr))
knitr::opts_chunk$set(echo = TRUE, tidy = T)
#knitr::opts_knit$set(root.dir = '../My_Project_Folder')




## ----eval=FALSE---------------------------------------------------------------
## if (!require("BiocManager", quietly = TRUE))
##     install.packages("BiocManager")
##     BiocManager::install("GEOquery", force =TRUE)
## 


## ----eval=TRUE, echo=FALSE----------------------------------------------------
knitr::include_graphics("imgs/cedar_signIn.png")


## ----eval=TRUE, echo=FALSE----------------------------------------------------
knitr::include_graphics("imgs/cedar_webpage.png")



## ----message=FALSE------------------------------------------------------------
devtools::install_github("earnaud/cedarr", dependencies = TRUE)


## ----message=FALSE------------------------------------------------------------

help("API response", package = "cedarr")
# ?cedarr::`API response`

