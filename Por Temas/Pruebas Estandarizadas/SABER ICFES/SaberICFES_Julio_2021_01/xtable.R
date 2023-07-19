# install.packages("xtable")
library(xtable)
library(pander)
data("airquality")
df <- head(airquality, 15)

install.packages("pander")

pandoc.table( df
              , caption = "BBDD `airquality` con `pandoc.table()`"
              , justify = 'lcrrcl'
              , round = 2
              , decimal.mark = ","
              , missing = NA
              , emphasize.rownames = FALSE
              , split.cells = 5
              , emphasize.strong.cells =
                which(df > 12 & df == df$Wind, arr.ind = TRUE)
)