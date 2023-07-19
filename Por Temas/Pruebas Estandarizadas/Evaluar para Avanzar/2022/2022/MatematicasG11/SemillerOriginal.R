## exams ----------------------------------------------------------------------------
setwd("~/MEGA/MEGAsync/NuevoRStudio2022/Rmarkdowns/Esqueleto/exercises/schoice/Aprendizajes/Evaluar para Avanzar/2022/MatematicasG11/Semilleros")
library(exams)
library(ggplot2)
library(reticulate)
library(datasets)
library(readxl)
library(data.table)

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises

papa <- read_excel("hombres.xlsx")
papa <- data.frame(papa)
papa

bob <- sample(papa[,1],1)
bob

qqq <- rep("11j_C01_G11_2021.Rmd",1)
# qqq <- rep("tikztri.Rmd",1)
examen01 <- qqq

# examen01 <- c("PermutacionSinRep_02.Rmd")

## note that the currency exercise is in UTF-8 encoding

semilla<-sample(100:1e8, 1)
semilla
set.seed(semilla)
##set.seed(11001) 

##########################################################################
# set.seed(semilla)
# exams2pdf(examen01,name="Percentiles_",encoding="UTF-8",n=2,
#           template=("exam"),dir="salida",edir="ejercicios")
##########################################################################
set.seed(semilla)
exams2pdf(examen01,name=bob, encoding="UTF-8",n=1,
          template=("solution"),dir="salidam11",edir="ejerciciosm11")
##########################################################################
set.seed(semilla)
exams2html(examen01,svg=TRUE)
################################################################
# set.seed(semilla)
# exams2html(examen01,svg=TRUE,converter = "pandoc-mathjax", mathjax = TRUE)
##########################################################################
# set.seed(semilla)
# exams2pandoc(examen01, n=1, dir="salida", type="odt")
#########################################################################
# set.seed(semilla)
# exams2pandoc(examen01, name="pandoc",template = "plain.tex",n=1, dir="salida",
#              type="markdown")

###################################################################
# set.seed(semilla)
# exams2moodle(examen01,n=1,svg=TRUE,name="Kombinatorias",encoding="UTF-8",
#              dir="salida",edir="ejercicios",mchoice = list(shuffle = TRUE,
#              answernumbering = "ABCD",eval = list(partial = TRUE,
#                                                   rule = "none")),
#              converter = "pandoc-mathjax")
####################################################################
set.seed(semilla)
exams2moodle(examen01,n=1,svg=TRUE,name="Python3",encoding="UTF-8",
             dir="salida",edir="ejercicios",
             mchoice = list(shuffle = TRUE,answernumbering = "ABCD",
                            eval = list(partial = TRUE,rule = "none")))
####################################################################

## hint: to quickly check (prior to Moodle export) whether each exercise can be
## converted to HTML, exams2html() can be used
# exams2html("ejercicios/CuatroTablas.Rnwd")

## ----------------------------------------------------------------------------------