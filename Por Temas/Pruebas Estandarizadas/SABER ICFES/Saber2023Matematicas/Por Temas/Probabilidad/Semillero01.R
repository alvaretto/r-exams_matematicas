## exams ----------------------------------------------------------------------------
setwd("/media/datascience/Bodega/Nubes/2023/Rexams2023/Repositorio/schoice/Schioce_2023/Schoice2023/Saber2023Matematicas/Por Temas/Probabilidad")

library(exams)
library(ggplot2)
library(ggrepel)
library(tidyverse)
library(reticulate)
library(tinytex)
library(magick)

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises

# qqq <- c("03_C01_G10_2022.Rmd","02_C01_G10_2022.Rmd","01_C01_G10_2022.Rmd")
# qqq <- sample(c("11a_C01_G11_2021.Rmd","11b_C01_G11_2021.Rmd",
#                  "11c_C01_G11_2021.Rmd","11d_C01_G11_2021.Rmd"),1)

copias <- 1
#qqq <- ("20_C01_G09_2022g9.Rmd")
qqq <- c("15_C01_G09_2022_py.Rmd")

examen01 <- qqq

# examen01 <- c("PermutacionSinRep_02.Rmd")

## note that the currency exercise is in UTF-8 encoding

semilla <- sample(100:1e8, 1)
semilla
set.seed(semilla)
##set.seed(11001)

###############################
# set.seed(semilla)
# exams2html(examen01, svg = TRUE)
# ###############################
# set.seed(semilla)
# exams2pdf(examen01,name="Torta_",encoding="UTF-8",n=copias,
#           template=("nuevotaller"),dir="salida",edir="ejercicios")
# ####################################################################

# set.seed(semilla)
# exams2html(examen01,svg=TRUE,converter = "pandoc-mathjax", mathjax = TRUE)
########################################################################
# set.seed(semilla)
# exams2pandoc(examen01,
#              n = 1,
#              dir = "salida",
#              type = "odt")
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
# exams2moodle(
#   examen01,
#   n = 60,
#   svg = TRUE,
#   name = "15_C01_G09_2022_py",
#   encoding = "UTF-8",
#   dir = "salida",
#   edir = "ejercicios",
#   mchoice = list(
#     shuffle = TRUE,
#     answernumbering = "ABCD",
#     eval = list(partial = TRUE, rule = "none")
#   )
# )
################################################################################
set.seed(semilla)
exams2pdf(
  examen01,
  name = "15_C01_G09_2022__",
  encoding = "UTF-8",
  n = 1,
  template = ("myexam2"),
  dir = "salida",
  edir = "ejercicios"
)
##########################################################################
## hint: to quickly check (prior to Moodle export) whether each exercise can be
## converted to HTML, exams2html() can be used
# exams2html("ejercicios/CuatroTablas.Rnwd")

## -----------------------------------------------------------------------------