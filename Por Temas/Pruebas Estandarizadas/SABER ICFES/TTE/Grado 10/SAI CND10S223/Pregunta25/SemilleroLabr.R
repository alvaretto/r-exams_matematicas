## exams ----------------------------------------------------------------------------
setwd("~/Insync/alvaroangelm@iepedacitodecielo.edu.co/Google Drive/2023/Rexams2023/Repositorio/schoice/Schoice_2023/2023_Repo/r-exams_matematicas/r-exams_matematicas/Por Temas/Pruebas Estandarizadas/SABER ICFES/TTE/Grado 10/SAI CND10S223/Pregunta25")
library(exams)

qqq <- rep("CND10S223-25_v01_opAll_tiA.Rmd", 1)
copias <- 200
nombre_sin_extension <- sub("\\.Rmd$", "", qqq)
nombre_arch <- paste0(nombre_sin_extension, "_")

examen01 <- qqq

semilla <- sample(100:1e8, 1)
#semilla <- c(1234)
set.seed(semilla)
##set.seed(11001)

################################################################################
set.seed(semilla)
exams2moodle(examen01,
             n = copias,
             svg = TRUE,
             name = nombre_arch,
             encoding = "UTF-8",
             dir = "salida",
             edir = "ejercicios",
             mchoice = list(shuffle = TRUE,
                            answernumbering = "ABCD",
                            eval = list(partial = TRUE,
                                        rule = "none")))
################################################################################
# set.seed(semilla)
# exams2pdf(examen01,
#           name = nombre_arch,
#           encoding = "UTF-8",
#           n = copias,
#           template = ("solpcielo"),
#           dir = "salida",
#           edir = "ejercicios")
################################################################################
set.seed(semilla)
exams2html(examen01,
           svg = TRUE)
################################################################################
