## exams ----------------------------------------------------------------------------
setwd("~/Insync/alvaroangelm@iepedacitodecielo.edu.co/Google Drive/2023/Rexams2023/Repositorio/schoice/Schoice_2023/2023_Repo/r-exams_matematicas/r-exams_matematicas/Por Temas/Pruebas Estandarizadas/SABER ICFES/TTE/SAI CFA11S123 - Sesión 01/Pregunta25/Cloze/SalidaMoodle")
library(exams)
library(xtable)

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises

# qqq <- c("03_C01_G10_2022.Rmd","02_C01_G10_2022.Rmd","01_C01_G10_2022.Rmd")
# qqq <- sample(c("11a_C01_G11_2021.Rmd","11b_C01_G11_2021.Rmd",
#                  "11c_C01_G11_2021.Rmd","11d_C01_G11_2021.Rmd"),1)

copias <- 10
qqq <- rep("P25_SAI_CFA11S123vMoo.Rmd",1)
#qqq <- rep("15_C01_G09_2022.Rmd",1)

examen01 <- qqq

# examen01 <- c("PermutacionSinRep_02.Rmd")

## note that the currency exercise is in UTF-8 encoding

semilla<-sample(100:1e8, 3)
semilla
set.seed(semilla)
##set.seed(11001) 

###############################
# set.seed(semilla)
# exams2html(examen01,svg=TRUE)
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
exams2moodle(examen01,
             n=copias,
             svg=TRUE,
             name="P25_SAI_CFA11S123_",
             encoding="UTF-8",
             dir="salida",
             edir="ejercicios",
             mchoice = list(shuffle = TRUE,
                            answernumbering = "ABCD",
                            eval = list(partial = TRUE,
                                        rule = "none")),
             #converter = "pandoc-mathjax"
             )
################################################################################