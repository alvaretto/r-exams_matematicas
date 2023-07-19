library(exams)
library(reticulate)
library(ggplot2)
library(dplyr)
library(RColorBrewer)

i <- 0
j <- 0
#### Otro while mas grande, desde aquí

while(i == 0) {
  # Números de 10 en 10,desde 50 hasta el número de clientes
  porc <- seq(50, clientes, 10)
  porc
  
  # 5 de esos números
  uzuarioz <- sample(porc,5,replace = F) 
  uzuarioz
  
  # La suma de esos 5 números
  sumaporce <- sum(uzuarioz) 
  sumaporce
  
  # Si la suma de esos 5 números es igual al número de clientes, continúe
  if(sumaporce == clientes) { 
    i <- i + 1
  }
  
  # De lo contrario, continúe el bucle (while)
  else
    i <- i
}

zolokarro <- uzuarioz[5]
zoloapto <- uzuarioz[4]
zolokaza <- uzuarioz[3]
karroykaza <- uzuarioz[2]
karroyapto <- uzuarioz[1]

kol <- sample(c("Set1","Set2","Set3","Accent","Dark2","Paired","Pastel1",
                "Pastel2","BrBG", "PiYG", "PRGn", "PuOr", "RdBu", "RdGy",
                "RdYlBu", "RdYlGn", "Spectral","Blues", "BuGn", "BuPu", "GnBu",
                "Greens", "Greys", "Oranges", "OrRd", "PuBu", "PuBuGn", "PuRd",
                "Purples", "RdPu", "Reds", "YlGn", "YlGnBu", "YlOrBr","YlOrRd"),
              1)
colores <- brewer.pal(length(uzuarioz),kol)