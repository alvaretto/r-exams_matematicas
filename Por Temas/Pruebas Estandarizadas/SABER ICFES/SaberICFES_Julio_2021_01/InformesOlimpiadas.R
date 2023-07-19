library(tidyverse)
library(datasets)
library(readxl)

Todos <- read_excel("Todos.xlsx")

# filter(Todos, Ciudad == "CALARCA")

#Pepo <- Todos %>% filter(Ciudad == "CALARCA", PrimeraRonda >= 80, Grado == "G2")

#DeptoG2 <- Todos %>% filter(PrimeraRonda >= 0, Grado == "G2")

#DeptoTodos <- Todos %>% filter(PrimeraRonda >= 0)

TodosG2 <- Todos %>% filter(Grado == "G2")

  
