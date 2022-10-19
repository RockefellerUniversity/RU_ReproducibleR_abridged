params <-
list(isSlides = "no")

## ----setup, include=FALSE-----------------------------------------------------
suppressPackageStartupMessages(require(knitr))
knitr::opts_chunk$set(echo = TRUE, tidy = T)
#knitr::opts_knit$set(root.dir = '../My_Project_Folder')




## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides != "yes"){
  cat("# MetaData in Bioinformatics Research

---
"    
  )
  
}



## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Accessing (Meta)Data from Gene Expression Omnibus (GEO) using R

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Accessing (Meta)Data from Gene Expression Omnibus (GEO) using R

---
"    
  )
  
}



## ----eval=FALSE---------------------------------------------------------------
## if (!require("BiocManager", quietly = TRUE))
##     install.packages("BiocManager")
##     BiocManager::install("GEOquery", force =TRUE)
## 


## ---- warnings=F, message=F---------------------------------------------------
library(GEOquery)
library(tidyverse)
library(pryr)



## ---- eval=T------------------------------------------------------------------

args(getGEO)  



## ---- eval=FALSE--------------------------------------------------------------
## # To store the data to specified folder, we need the the Dataset,
## dir.create("GeoData")


## ----eval=F-------------------------------------------------------------------
## gds <- GEOquery::getGEO(GEO = "GDS5288", destdir = "GeoData")
## 


## ---- echo=F, eval=F----------------------------------------------------------
## save(gds, file = "../data/gds.RData")


## ---- echo=F, eval=T----------------------------------------------------------
load("data/gds.RData")


## -----------------------------------------------------------------------------
GEOquery::Meta(gds)[c("title", "description", "ref",
                      "platform", "platform_technology_type",
                      "sample_organism", "sample_id", "sample_type")]


## -----------------------------------------------------------------------------
GEOquery::Columns(gds) 


## -----------------------------------------------------------------------------
GEOquery::Table(gds)[1:5,]


## -----------------------------------------------------------------------------
pryr::object_size(gds)
class(gds)
isS4(gds) 



## ---- eval=F------------------------------------------------------------------
## gsm <- getGEO("GSM1308977", destdir = "GeoData")


## ---- echo=F, eval=F----------------------------------------------------------
## save(gsm, file = "../data/gsm.RData")


## ---- echo=F, eval=T----------------------------------------------------------
load("data/gsm.RData")


## -----------------------------------------------------------------------------
Meta(gsm)


## -----------------------------------------------------------------------------
Columns(gsm)
Table(gsm) 


## -----------------------------------------------------------------------------

pryr::object_size(gsm)
class(gsm)
isS4(gsm) 


## ---- eval=F------------------------------------------------------------------
## gpl <- getGEO("GPL570", destdir = "GeoData")


## ---- echo=F, eval=F----------------------------------------------------------
## save(gpl, file = "../data/gpl.RData")


## ---- echo=F, eval=T----------------------------------------------------------
load("data/gpl.RData")


## -----------------------------------------------------------------------------
pryr::object_size(gpl)
class(gpl)


## -----------------------------------------------------------------------------
Meta(gpl) %>% str(vec.len = 1, nchar.max = 65)


## -----------------------------------------------------------------------------
Columns(gpl) %>% as_tibble()


## -----------------------------------------------------------------------------
Table(gpl) %>% dim()
Table(gpl) %>% as_tibble() %>%
  dplyr::select(ID, GB_ACC, `Sequence Source`, `Target Description`)



## ---- eval=F------------------------------------------------------------------
## gse <- getGEO(GEO = "GSE54157", destdir = "GeoData",
##               GSEMatrix = FALSE) # Note the GSEMatrix argument
## gse_exprs <- getGEO(GEO = "GSE54157", destdir = "GeoData",
##               GSEMatrix = TRUE) # Note the GSEMatrix argument


## ---- echo=F, eval=F----------------------------------------------------------
## save(gse, file = "../data/gse.RData")
## save(gse_exprs, file = "../data/gse_exprs.RData")


## ---- echo=F, eval=T----------------------------------------------------------
load("data/gse.RData")
load("data/gse_exprs.RData")


## -----------------------------------------------------------------------------
class(gse)
Meta(gse)[c("title", "type", "platform_id", "summary",
            "supplementary_file")]



## -----------------------------------------------------------------------------
GEOquery::GSMList(gse) %>% names()
GEOquery::GPLList(gse) %>% names()


## ---- eval=F------------------------------------------------------------------
## gse_exprs <- getGEO(GEO = "GSE54157", destdir = "geoData",
##                     GSEMatrix = TRUE) # Note the GSEMatrix argument


## -----------------------------------------------------------------------------
class(gse_exprs)
length(gse_exprs)
pryr::object_size(gse_exprs)
lapply(gse_exprs, class)


## ---- eval=F------------------------------------------------------------------
## gse_GPL570 <- gse_exprs[[1]]
## Biobase::pData(gse_GPL570) %>% as_tibble()
## 


## -----------------------------------------------------------------------------
supp_info <- GEOquery::getGEOSuppFiles(GEO = "GSE147507")
rownames(supp_info)
basename(rownames(supp_info)[1])
basename(rownames(supp_info)[2])



## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Creating metadata using template: CEDAR Workbench

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Creating metadata using template: CEDAR Workbench

---
"    
  )
  
}



## ----eval=TRUE, echo=FALSE----------------------------------------------------
knitr::include_graphics("imgs/cedar_signIn.png")


## ----eval=TRUE, echo=FALSE----------------------------------------------------
knitr::include_graphics("imgs/cedar_webpage.png")



## ----message=FALSE------------------------------------------------------------
devtools::install_github("earnaud/cedarr", dependencies = TRUE)


## ----message=FALSE------------------------------------------------------------

help("API response", package = "cedarr")
# ?cedarr::`API response`

