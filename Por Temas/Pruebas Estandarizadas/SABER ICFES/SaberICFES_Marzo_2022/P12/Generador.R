## exams ----------------------------------------------------------------------------
setwd("~/Insync/alvaroangelm@iepedacitodecielo.edu.co/Google Drive/2023/Rexams2023/Repositorio/schoice/Schoice_2023/Schoice2023/PorTemas/SABER ICFES/SaberICFES_Marzo_2022/P12")
## load package
library(exams)
library(tinytex)
## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises
##examen01<-c("MMRango.Rnw","Q_varianza.Rnw","NotaQuimika2.Rnw","distancia2.Rnw")
examen01 <- c("P12_02f.Rmd")
## note that the currency exercise is in UTF-8 encoding

## exams2moodle ---------------------------------------------------------------------
## Moodle XML output (1 file containing all exams)
## -> for import into a Moodle system
semilla <- sample(100:999000, 1)
semilla
set.seed(semilla) 
##set.seed(888) 

## Generate Moodle exam with three replications per question

##########################################################################
set.seed(semilla)
exams2html(examen01,svg = TRUE)
################################################################
# set.seed(semilla)
# exams2pdf(examen01,name = "Contrasenia01_", encoding = "UTF-8", n = 3,
#           template = ("solution"), dir = "salida", edir = "ejercicios")
##########################################################################
# set.seed(semilla)
# exams2pdf(examen01,name="P12_01_",encoding="UTF-8",n=10,
#           template=("solution"),dir="salida",edir="ejercicios",height = 2,
#           width = 4)
##############################################################################
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
set.seed(semilla)
exams2moodle(examen01, n = 50, svg = TRUE, name = "P12_02f_", encoding = "UTF-8",
             dir = "salida", edir = "ejercicios",
             mchoice = list(shuffle = TRUE,answernumbering = "ABCD",
                            eval = list(partial = TRUE,rule = "none")))
####################################################################----------------------------------------------------------------------------


