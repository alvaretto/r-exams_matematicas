mostrar_grafica <- function() {
  knitr::knit2pdf("TikZ4.tex")
  temp_pdf <- tempfile()
  file.copy("grafica.pdf", temp_pdf, overwrite = TRUE)
  utils::browseURL(temp_pdf)
}
mostrar_grafica()

