n <- 4
i <- 2
faktores <- vector()
faktorex <- vector()

while(i <= n){
    x <- i
    faktores <- c(faktores, x)
    i <- i+1
}

faktores <- faktores[order(-faktores)]

faktores

p <- 3
t <- 1

while(t <= p){
  
  d <- '·'
  faktorex <- c(faktorex, d)
  t <- t+1
}

faktores <- faktores[order(-faktores)]

faktores
faktorex <- cat(faktorex, "\n")
faktorex

def <- paste0(faktores,sep='·')
def <- c(def,1)
def <- cat(def, "\n")


