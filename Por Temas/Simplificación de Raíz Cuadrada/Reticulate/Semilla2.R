## exams ----------------------------------------------------------------------------
setwd("~/MEGA/MEGAsync/NuevoRStudio2022/Rmarkdowns/Esqueleto/exercises/schoice/Aprendizajes/Simplificación de Raíz Cuadrada/Reticulate")
library(exams)
library(tinytex)
library(gtools)
library(glue)
library(tth)
library(reticulate)

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises

qqq <- rep("kReticulate01.Rmd",20)
examen01 <- qqq

# examen01 <- c("PermutacionSinRep_02.Rmd")

## note that the currency exercise is in UTF-8 encoding

semilla<-sample(100:1e8, 1)
semilla
set.seed(semilla)
##set.seed(11001) 

################################################################

# exams2pdf(examen01,name="Taller01_",encoding="UTF-8",n=1,
#           template=("nuevotaller"),dir="salida",edir="ejercicios")
# set.seed(semilla)

##########################################################################
set.seed(semilla)
exams2pdf(examen01,name="Respuestas_Reticulate_",encoding="UTF-8",n=1,
          template=("soluciontallerespc"),dir="salida",edir="ejercicios")
##############################################################################
# set.seed(semilla)
# exams2html(examen01,svg=TRUE,converter = "pandoc-mathjax", mathjax = TRUE)
##########################################################################
set.seed(semilla)
exams2html(examen01,svg=TRUE)
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