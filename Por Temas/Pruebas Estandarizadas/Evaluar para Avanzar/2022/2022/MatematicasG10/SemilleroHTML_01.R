## exams ----------------------------------------------------------------------------

library(exams)
library(ggplot2)
library(reticulate)

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises

# qqq <- c("03_C01_G10_2022.Rmd","02_C01_G10_2022.Rmd","01_C01_G10_2022.Rmd")
qqq <- rep(c("06a_C01_G10_2022.Rmd","06b_C01_G10_2022.Rmd"),1)
examen01 <- qqq

# examen01 <- c("PermutacionSinRep_02.Rmd")

## note that the currency exercise is in UTF-8 encoding

semilla<-sample(100:1e8, 1)
semilla
set.seed(semilla)
##set.seed(11001) 

#######################################################################
# set.seed(semilla)
# exams2pdf(examen01,name="Percentiles_",encoding="UTF-8",n=2,
#           template=("exam"),dir="salida",edir="ejercicios")
#######################################################################
exams2html(examen01, n = 3, name = "html-sol", solution = TRUE,
           svg=TRUE,
           encoding = "UTF-8",
           dir = "salidam10",
           edir = "ejerciciosm10",
           template = "templates/plano.html")
#######################################################################

# exams2html(examen01, svg=TRUE, template = "templates/plano.html")