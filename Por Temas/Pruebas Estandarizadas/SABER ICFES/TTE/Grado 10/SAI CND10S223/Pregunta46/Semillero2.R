## exams ----------------------------------------------------------------------------
setwd("~/Insync/alvaroangelm@iepedacitodecielo.edu.co/Google Drive/2023/Rexams2023/Repositorio/schoice/Schoice_2023/2023_Repo/r-exams_matematicas/r-exams_matematicas/Por Temas/Pruebas Estandarizadas/SABER ICFES/TTE/Grado 10/SAI CND10S223/Pregunta46")
library(exams)

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises

# qqq <- c("03_C01_G10_2022.Rmd","02_C01_G10_2022.Rmd","01_C01_G10_2022.Rmd")
# qqq <- sample(c("11a_C01_G11_2021.Rmd","11b_C01_G11_2021.Rmd",
#                  "11c_C01_G11_2021.Rmd","11d_C01_G11_2021.Rmd"),1)

copias <- 1
qqq <- rep("CND10S223-46v01TipoA.Rmd", 10)
#qqq <- rep("15_C01_G09_2022.Rmd",1)

examen01 <- qqq

# examen01 <- c("PermutacionSinRep_02.Rmd")

## note that the currency exercise is in UTF-8 encoding

semilla<-sample(100:1e8, 1)
semilla
set.seed(semilla)
##set.seed(11001) 

###############################
set.seed(semilla)
exams2html(examen01,svg=TRUE)
# ####################################################################
# set.seed(semilla)
# exams2pdf(examen01,name="CND10S223-46_", encoding="UTF-8",n=copias,
#           template=("solpcielo"),dir="salida",edir="ejercicios")
##########################################################################
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
# set.seed(semilla)
# exams2moodle(examen01,n=copias,svg=TRUE,name="15_C01_G09_2022_TipoA1_",encoding="UTF-8",
#              dir="salida",edir="ejercicios", mchoice = list(shuffle = TRUE,
#                                                             answernumbering = "ABCD",
#                                                             eval = list(partial = TRUE,
#                                                                         rule = "none")))
################################################################################

## hint: to quickly check (prior to Moodle export) whether each exercise can be
## converted to HTML, exams2html() can be used
# exams2html("ejercicios/CuatroTablas.Rnwd")

## -----------------------------------------------------------------------------