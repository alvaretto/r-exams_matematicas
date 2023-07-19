data <- sample(seq(5, 71, 1),1000, replace=T)
p <- quantile(data, c(.1,.2,.25,.35,.45,.5,.6,.7,.75,.85,.95,1))
p
p[1] <- round(p[1],0)
p[1]

##################

data <- data.frame(x1 = rep(LETTERS[1:2],       # Create example data frame
                            each = 4),
                   x2 = c(letters[1:3],
                          letters[2:5],
                          "b"))
print(data)  

#####################
library(DT)
library(plotly)
library(crosstalk)

sd <- SharedData$new(iris[, c("Sepal.Length", "Sepal.Width")])

bscols(
  device = "lg",
  datatable(sd, width = "100%"),
  plot_ly(sd, x = ~Sepal.Length, y = ~Sepal.Width)
)