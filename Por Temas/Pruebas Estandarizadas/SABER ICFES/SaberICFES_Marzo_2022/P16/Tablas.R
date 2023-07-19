# not evaluating
library(kableExtra)

kable(mtcars[1:5, ], "html") %>%
  kable_styling("striped") %>%
  row_spec(1, color = "red") %>%
  save_kable("test.pdf")

kable(mtcars, "latex") %>%
  kable_styling(latex_options = "striped") %>%
  save_kable("test.png")