data(mtcars)
library(ggplot2)

ggplot(mtcars, aes(wt, mpg)) +
  geom_point()+labs(subtitle = "Añoñí") + theme(panel.grid.minor = element_line(colour = "gray93",
    linetype = "blank"))