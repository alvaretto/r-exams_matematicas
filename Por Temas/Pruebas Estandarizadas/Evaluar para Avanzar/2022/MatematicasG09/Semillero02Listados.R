## exams -----------------------------------------------------------
setwd("/media/datascience/Bodega/Rexams2023/Repositorio/schoice/Schioce_2023/Schoice2023/PorTemas/Evaluar para Avanzar/2022/MatematicasG09")
library(exams)
library(ggplot2)
library(reticulate)
library(datasets)
library(readxl)
library(data.table)

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises

listado <- read_excel("9BMat.xlsx")
listado <- data.frame(listado)
listado

numest <- length(listado[,1])
numest <- 3             # Si se deja sin definir se tomará el valor del listado

talleres <- numest      # Número de talleres diferentes, que regularmente se
talleres <- talleres+1  # asocia al número de estudiantes.
talleres

i <- 1

while(i < talleres){
  # torta <- c("20_C01_G109_2022.Rmd")
  # 
  # p <- length(torta)
  # p <- p+1
  ejercicios <- 1         # Número de ejercicios que tiene el taller.
  copias <- 1             # Mantener en 1, por defecto.
  # qqq<- sample(c("01_C01_G10_2022.Rmd","02_C01_G10_2022.Rmd","03_C01_G10_2022.Rmd",
  #                torta[j]),ejercicios)
  qqq<- c("20_C01_G09_2022g9.Rmd")
  Taller <- listado[i,1]
  Taller
  SolTaller <- listado[i,1]
  SolTaller
  taller <- paste(i,"Taller_",Taller,sep="_")
  soltaller <- paste(i,"Resp_",SolTaller,sep="_")
  # taller <- c("Taller1_","Taller2_","Taller3_","Taller4_","Taller5_")
  # soltaller <- c("Resp_Taller1_","Resp_Taller2_","Resp_Taller3_","Resp_Taller4_",
  #                "Resp_Taller5_")
  semilla<-sample(100:1e8, 1)
  semilla
  ##########################################################################
  set.seed(semilla)
  exams2pdf(qqq,name=taller,encoding="UTF-8",n=copias,
            template=("nuevotaller"),dir="salida",edir="ejercicios")
  # ##########################################################################
  set.seed(semilla)
  exams2pdf(qqq,name=soltaller, encoding="UTF-8",
            n=copias,template=("soluciontallerespc"),dir="salida",
            edir="ejercicios")
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
  # set.seed(semilla)
  # exams2moodle(qqq,n=copias,svg=TRUE,name=taller,encoding="UTF-8",
  #              dir="salida",edir="ejercicios",
  #              mchoice = list(shuffle = TRUE,answernumbering = "ABCD",
  #                             eval = list(partial = TRUE,rule = "none")))
  ####################################################################
  
  ## hint: to quickly check (prior to Moodle export) whether each exercise can be
  ## converted to HTML, exams2html() can be used
  # exams2html("ejercicios/CuatroTablas.Rnwd")
  i <- i+1
}
## ----------------------------------------------------------------------------------