## exams ----------------------------------------------------------------------------
##setwd("~/MEGA/MEGAsync/NuevoRStudio2022/Rmarkdowns/Esqueleto/exercises/schoice/Aprendizajes/Evaluar para Avanzar/2022/MatematicasG11/ejercicios")
library(exams)
library(ggplot2)
library(reticulate)
library(tidyverse)
library(png)
library(RColorBrewer)

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises

# qqq <- c("03_C01_G10_2022.Rmd","02_C01_G10_2022.Rmd","01_C01_G10_2022.Rmd")
# qqq <- sample(c("11a_C01_G11_2021.Rmd","11b_C01_G11_2021.Rmd",
#                  "11c_C01_G11_2021.Rmd","11d_C01_G11_2021.Rmd"),1)

copias <- 1
qqq <- rep(c("11e_C01_G11_2021.Rmd"),10)

examen01 <- qqq

# examen01 <- c("PermutacionSinRep_02.Rmd")

## note that the currency exercise is in UTF-8 encoding

semilla<-sample(100:1e8, 1)
semilla
# set.seed(semilla)
##set.seed(11001) 

###############################
# set.seed(semilla)
# exams2html(examen01,svg=TRUE)
# ###############################
# set.seed(semilla)
# exams2pdf(examen01,name="Torta_",encoding="UTF-8",n=copias,
#           template=("nuevotaller"),dir="salida",edir="ejercicios")
# ####################################################################
# set.seed(semilla)
# exams2pdf(examen01,name="RespuestaTorta__", encoding="UTF-8",n=copias,
#           template=("soluciontallerespc"),dir="salidam11",edir="ejerciciosm11")
##########################################################################
# exams2pdf(examen01, n = 1, name = c("pdf-exam", "pdf-solution"),
#           encoding = "UTF-8",
#           dir = "salidam11",
#           edir = "ejerciciosm11",
#           template = c("templates/nuevotaller.tex", 
#                        "templates/soluciontallerespc.tex"),
#           header = list(
#             Date = "2015-01-01",
#             ID = function(i) formatC(i, width = 5, flag = "0")
#           ))
#########################################################################

# set.seed(semilla)
# exams2html(examen01,svg=TRUE,converter = "pandoc-mathjax", mathjax = TRUE)
########################################################################
# set.seed(semilla)
# exams2pandoc(examen01, n=1, dir="salida", type="odt")
#########################################################################
# set.seed(semilla)
# exams2pandoc(examen01, name="pandoc",template = "plain.tex",n=1, dir="salida",
#              type="markdown")

################################################################################
# set.seed(semilla)
# exams2moodle(examen01,n=1,svg=TRUE,name="Kombinatorias",encoding="UTF-8",
#              dir="salida",edir="ejercicios",mchoice = list(shuffle = TRUE,
#              answernumbering = "ABCD",eval = list(partial = TRUE,
#                                                   rule = "none")),
#              converter = "pandoc-mathjax")
################################################################################
set.seed(semilla)
exams2moodle(examen01,n=copias,svg=TRUE,name="TortasInsatisf2",encoding="UTF-8",
             dir="salidam11",edir="ejerciciosm11",
             mchoice = list(shuffle = TRUE,answernumbering = "ABCD",
                            eval = list(partial = TRUE,rule = "none")))
################################################################################

## hint: to quickly check (prior to Moodle export) whether each exercise can be
## converted to HTML, exams2html() can be used
# exams2html("ejercicios/CuatroTablas.Rnwd")

## -----------------------------------------------------------------------------