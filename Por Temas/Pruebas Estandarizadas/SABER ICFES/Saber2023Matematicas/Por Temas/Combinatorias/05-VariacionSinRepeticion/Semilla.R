## exams ----------------------------------------------------------------------------
setwd("/media/datascience/Bodega/Nubes/2023/Rexams2023/Repositorio/schoice/Schioce_2023/Schoice2023/Saber2023Matematicas/Por Temas/Combinatorias/05-VariacionSinRepeticion")
library(exams)
library(ggplot2)
library(ggrepel)
library(tidyverse)
library(gtools)
library(glue)
##load package


## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises


# examen01 <- c("CombinacionSinRep_01.Rmd","CombinacionConRep_01.Rmd",
#               "PermutacionSinRep_01.Rmd","PermutacionConRep_01.Rmd",
#               "PermutacionConRep_02.Rmd","CombinacionSinRep_02.Rmd",
#               "VariacionSinRep_01.Rmd","VariacionConRep_01.Rmd",
#               "VariacionConRep_02.Rmd","PermutacionCirc_01.Rmd",
#               "CombinacionSinRep_03.Rmd","CombinacionConRep_02.Rmd",
#               "VariacionSinRep_02.Rmd","PermutacionSinRep_02.Rmd")

examen01 <- c("VariacionSinRep_01_05_py.Rmd")

## note that the currency exercise is in UTF-8 encoding

semilla<-sample(100:1e8, 1)
semilla
# set.seed(semilla) 
##set.seed(11001) 

## Generate Moodle exam with three replications per question
# set.seed(semilla)
# exams2pdf(examen01,name="Taller01_",encoding="UTF-8",n=1,
# template=("solution"),dir="salida",edir="ejercicios")

#-----------------------------------
# set.seed(semilla)
# exams2pdf(examen01,name="Respuestas_Taller01_",encoding="UTF-8",n=1,
#           template=c("solution"),dir="salida",engine="knitr",
#           verbose=T,edir="ejercicios")
#-----------------------------------

set.seed(semilla)
exams2html(examen01,svg=TRUE)
#-----------------------------------

# set.seed(semilla)
# exams2pandoc(examen01, n=1, dir="salida", type="docx")
# set.seed(semilla)
# exams2pandoc(examen01, n=1, dir="salida", type="odt")

#-----------------------------------
set.seed(semilla)
exams2moodle(examen01,n=40,svg=TRUE,name="VariacionSinRep_01_05_py",encoding="UTF-8",
             dir="salida",edir="ejercicios",
             mchoice = list(shuffle = TRUE,answernumbering = "ABCD",
                            eval = list(partial = TRUE,rule = "none")))
#-----------------------------------
 
## hint: to quickly check (prior to Moodle export) whether each exercise can be
 # converted to HTML, exams2html() can be used
 # exams2html("ejercicios/CuatroTablas.Rnwd")

## ----------------------------------