## exams ----------------------------------------------------------------------------
setwd("~/Insync/alvaroangelm@iepedacitodecielo.edu.co/Google Drive/2023/Rexams2023/Repositorio/schoice/Schoice_2023/2023_Repo/r-exams_matematicas/r-exams_matematicas/Por Temas/Pruebas Estandarizadas/SABER ICFES/SaberICFES_Julio_2021_01")
library(exams)

copias <- 1
qqq <- rep("08.Rmd",10)
#qqq <- rep("15_C01_G09_2022.Rmd",1)

examen01 <- qqq

## note that the currency exercise is in UTF-8 encoding

semilla<-sample(100:1e8, 1)
semilla
set.seed(semilla)
##set.seed(11001) 

###############################
# set.seed(semilla)
# exams2html(examen01,svg=TRUE)
# ###############################
# set.seed(semilla)
# exams2pdf(examen01,name="Torta_",encoding="UTF-8",n=copias,
#           template=("nuevotaller"),dir="salida",edir="ejercicios")
# ####################################################################
set.seed(semilla)
exams2pdf(examen01,name="08_", encoding="UTF-8",n=copias,
          template=("solpcielo"),dir="salida",edir="ejercicios")
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
set.seed(semilla)
exams2moodle(examen01,n=copias,svg=TRUE,name="08_",encoding="UTF-8",
             dir="salida",edir="ejercicios", mchoice = list(shuffle = TRUE,
                                                            answernumbering = "ABCD",
                                                            eval = list(partial = TRUE,
                                                                        rule = "none")))
################################################################################

## hint: to quickly check (prior to Moodle export) whether each exercise can be
## converted to HTML, exams2html() can be used
# exams2html("ejercicios/CuatroTablas.Rnwd")

## -----------------------------------------------------------------------------