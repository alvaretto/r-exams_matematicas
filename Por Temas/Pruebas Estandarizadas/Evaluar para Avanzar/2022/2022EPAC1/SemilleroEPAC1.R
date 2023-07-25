## exams ----------------------------------------------------------------------------
setwd("/media/datascience/Bodega/Nubes/2023/Rexams2023/Repositorio/schoice/Schioce_2023/Schoice2023/PorTemas/Evaluar para Avanzar/2022/2022EPAC1")
library(exams)
library(ggplot2)

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises

qqq <- rep("TablasR.Rmd",1)
examen01 <- qqq

# examen01 <- c("PermutacionSinRep_02.Rmd")

## note that the currency exercise is in UTF-8 encoding

semilla<-sample(100:1e8, 1)
semilla
set.seed(semilla)
##set.seed(11001) 

##########################################################################
# set.seed(semilla)
# exams2html(examen01,svg=TRUE)
################################################################
# set.seed(semilla)
# exams2pdf(examen01,name="Percentiles_",encoding="UTF-8",n=2,
#           template=("exam"),dir="salida",edir="ejercicios")
##########################################################################
# set.seed(semilla)
# exams2html(examen01,svg=TRUE,converter = "pandoc-mathjax", mathjax = TRUE)
##########################################################################
set.seed(semilla)
exams2html(examen01,svg=TRUE)
##########################################################################
# set.seed(semilla)
# exams2pandoc(examen01, n=1, dir="salida", type="odt")
#########################################################################
set.seed(semilla)
exams2pandoc(examen01, name="01_C01_G10_2022_",template = "plain.tex",n=1, 
             dir="salida", type = "docx")

###################################################################
# set.seed(semilla)
# exams2moodle(examen01,n=1,svg=TRUE,name="Kombinatorias",encoding="UTF-8",
#              dir="salida",edir="ejercicios",mchoice = list(shuffle = TRUE,
#              answernumbering = "ABCD",eval = list(partial = TRUE,
#                                                   rule = "none")),
#              converter = "pandoc-mathjax")
####################################################################
set.seed(semilla)
exams2moodle(examen01,n=1,svg=TRUE,name="01_C01_G10_2022_V2",encoding="UTF-8",
             dir="salida",edir="ejercicios",
             mchoice = list(shuffle = TRUE,answernumbering = "ABCD",
                            eval = list(partial = TRUE,rule = "none")))
####################################################################
set.seed(semilla)
exams2pdf(examen01,name="01_C01_G10_2022_", encoding="UTF-8",n=1,
          template=("solution"),dir="salida",edir="ejercicios")
##############################################################################

## hint: to quickly check (prior to Moodle export) whether each exercise can be
## converted to HTML, exams2html() can be used
# exams2html("ejercicios/CuatroTablas.Rnwd")

## ----------------------------------------------------------------------------