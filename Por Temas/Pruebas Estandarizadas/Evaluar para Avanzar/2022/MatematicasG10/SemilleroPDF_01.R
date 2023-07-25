## exams ----------------------------------------------------------------------------

library(exams)
library(ggplot2)
library(reticulate)

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises

# qqq <- c("03_C01_G10_2022.Rmd","02_C01_G10_2022.Rmd","01_C01_G10_2022.Rmd")
qqq <- rep(c("06b_C01_G10_2022.Rmd"),10)
examen01 <- qqq

# examen01 <- c("PermutacionSinRep_02.Rmd")

## note that the currency exercise is in UTF-8 encoding

semilla<-sample(100:1e8, 1)
semilla
set.seed(semilla)
##set.seed(11001) 

###############################
# set.seed(semilla)
# exams2pdf(examen01,name="Percentiles_",encoding="UTF-8",n=2,
#           template=("exam"),dir="salida",edir="ejercicios")
################################################################################
# set.seed(semilla)
# exams2pdf(examen01,name="EVA10_1_2022_", encoding="UTF-8",n=1,
#           template=("nuevotaller"),dir="salidam10",edir="ejerciciosm10")
################################################################################
exams2pdf(examen01, n = 1, name = c("Taller_", "Solución_"),
          encoding = "UTF-8",
          dir = "salidam10",
          edir = "ejerciciosm10",
          template = c("templates/nuevotaller.tex",
                       "templates/soluciontallerespc.tex"),
          header = list(
            Date = Sys.Date(),
            ID = function(i) formatC(i, width = 5,flag = "0")))
################################################################################