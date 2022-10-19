params <-
list(isSlides = "no")

## ----setup, include=FALSE-----------------------------------------------------
suppressPackageStartupMessages(require(knitr))
knitr::opts_chunk$set(echo = TRUE, tidy = T)


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides != "yes"){
  cat("# Reproducible Research

---
"    
  )
  
}



## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Set Up

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Set Up

---
"    
  )
  
}



## ----setwd_introtoR,eval=F----------------------------------------------------
## setwd("/PathToMyDownload/Reproducible_R-master/r_course")
## # e.g. setwd("~/Downloads/Reproducible_R-master/r_course")


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Reproducible Research

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Reproducible Research

---
"    
  )
  
}



## ----eval=F-------------------------------------------------------------------
## # Generate some random numbers and plot them
## myRandNumbers <- rnorm(100,10,2)
## 
## plot(myRandNumbers)
## 
## sessionInfo()


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# R Markdown

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# R Markdown

---
"    
  )
  
}



## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# R Markdown Header

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# R Markdown Header

---
"    
  )
  
}



## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# R Markdown Body

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# R Markdown Body

---
"    
  )
  
}



## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# R Markdown Code Chunks

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# R Markdown Code Chunks

---
"    
  )
  
}



## ```{r}

## hist(rnorm(100))

## ```


## -----------------------------------------------------------------------------
hist(rnorm(100))


## ----warning=F,message=F------------------------------------------------------
library(ggplot2)


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Other R Markdown tricks

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Other R Markdown tricks

---
"    
  )
  
}



## ---- eval=T------------------------------------------------------------------
temp <- rnorm(3)
temp2 <- rnorm(3)
dfExample <- data.frame(temp,temp2)
kable(dfExample)

