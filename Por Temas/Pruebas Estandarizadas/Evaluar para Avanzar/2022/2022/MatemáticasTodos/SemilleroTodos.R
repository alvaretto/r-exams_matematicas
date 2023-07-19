## exams ----------------------------------------------------------------------------
setwd("~/MEGA/MEGAsync/NuevoRStudio2022/Rmarkdowns/Esqueleto/exercises/schoice/Aprendizajes/Evaluar para Avanzar/2022/MatemáticasTodos")
library(exams)
library(ggplot2)
library(reticulate)

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises


talleres <- 10          # Número de talleres diferentes, que regularmente se
talleres <- talleres+1  # asocia al número de estudiantes.
i <- 1
j <- 1

while(i<talleres){
 torta <- c("11a_C01_G11_2021.Rmd","11b_C01_G11_2021.Rmd","11c_C01_G11_2021.Rmd",
           "11d_C01_G11_2021.Rmd","11e_C01_G11_2021.Rmd")
 
 p <- length(torta)
 p <- p+1


ejercicios <- 4         # Número de ejercicios que tiene el taller.
copias <- 1             # Mantener en 1, por defecto.

if(i==p){
  j <- 1
}
  # qqq<- sample(c("01_C01_G10_2022.Rmd","02_C01_G10_2022.Rmd","03_C01_G10_2022.Rmd",
  #                torta[j]),ejercicios)

qqq<- c("01_C01_G10_2022.Rmd","02_C01_G10_2022.Rmd","03_C01_G10_2022.Rmd",
               torta[j])

  
taller <- paste(i,"Taller",sep="_")
soltaller <- paste(i,"Resp_Taller",sep="_")

# taller <- c("Taller1_","Taller2_","Taller3_","Taller4_","Taller5_")
# soltaller <- c("Resp_Taller1_","Resp_Taller2_","Resp_Taller3_","Resp_Taller4_",
#                "Resp_Taller5_")

semilla<-sample(100:1e8, 1)
semilla
##########################################################################
# set.seed(semilla)
# exams2pdf(qqq,name=taller,encoding="UTF-8",n=copias,
#           template=("nuevotaller"),dir="salida",edir="ejercicios")
# ##########################################################################
# set.seed(semilla)
# exams2pdf(qqq,name=soltaller, encoding="UTF-8",
#           n=copias,template=("soluciontallerespc"),dir="salida",
#           edir="ejercicios")
##########################################################################
# set.seed(semilla)
# exams2html(examen01,svg=TRUE)
################################################################
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
# set.seed(semilla)
# exams2moodle(examen01,n=1,svg=TRUE,name="Kombinatorias",encoding="UTF-8",
#              dir="salida",edir="ejercicios",mchoice = list(shuffle = TRUE,
#              answernumbering = "ABCD",eval = list(partial = TRUE,
#                                                   rule = "none")),
#              converter = "pandoc-mathjax")
####################################################################
set.seed(semilla)
exams2moodle(qqq,n=copias,svg=TRUE,name=taller,encoding="UTF-8",
             dir="salida",edir="ejercicios",
             mchoice = list(shuffle = TRUE,answernumbering = "ABCD",
                            eval = list(partial = TRUE,rule = "none")))
####################################################################

## hint: to quickly check (prior to Moodle export) whether each exercise can be
## converted to HTML, exams2html() can be used
# exams2html("ejercicios/CuatroTablas.Rnwd")

i <- i+1
j <- j+1
}
## ----------------------------------------------------------------------------------