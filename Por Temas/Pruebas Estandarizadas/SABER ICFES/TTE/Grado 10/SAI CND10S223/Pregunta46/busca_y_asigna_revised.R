
busca_y_asigna <- function(dicci, claves) {
  
  # Create an empty list to store results
  resultados <- list()
  
  # Loop through the first 5 keys in 'claves'
  for (i in 1:min(5, length(claves))) {
    key <- claves[i]
    
    # Existing grepl and assignment logic
    if (grepl("un niño es de", key)) {
      patinaje <- "de niños"
      numerator <<- (ninos1[1] + ninos1[2] + ninos1[3] + ninos1[4])
    } else if (grepl("una niña es de", key)) {
      patinaje <- "de niñas"
      numerator <<- (ninos1[5] + ninos1[6] + ninos1[7] + ninos1[8])
    } else if (grepl("un niño de primero", key)) {
      patinaje <- "de niños de primero"
      numerator <<- (ninos1[1])
    } else if (grepl("una niña de primero", key)) {
      patinaje <- "de niñas de primero"
      numerator <<- (ninos1[5])
    } else if (grepl("un niño de segundo", key)) {
      patinaje <- "de niños de segundo"
      numerator <<- (ninos1[2])
    } else if (grepl("una niña de segundo", key)) {
      patinaje <- "de niñas de segundo"
      numerator <<- (ninos1[6])
    } else if (grepl("un niño de tercero", key)) {
      patinaje <- "de niños de tercero"
      numerator <<- (ninos1[3])
    } else if (grepl("una niña de tercero", key)) {
      patinaje <- "de niñas de tercero"
      numerator <<- (ninos1[7])
    } else if (grepl("un niño de cuarto", key)) {
      patinaje <- "de niños de cuarto"
      numerator <<- (ninos1[4])
    } else if (grepl("una niña de cuarto", key)) {
      patinaje <- "de niñas de cuarto"
      numerator <<- (ninos1[8])
    } else if (grepl("un estudiante de primero", key)) {
      patinaje <- "de estudiantes de primero"
      numerator <<- (ninos1[1] + ninos1[5])
    } else if (grepl("un estudiante de segundo", key)) {
      patinaje <- "de estudiantes de segundo"
      numerator <<- (ninos1[2] + ninos1[6])
    } else if (grepl("un estudiante de tercero", key)) {
      patinaje <- "de estudiantes de tercero"
      numerator <<- (ninos1[3] + ninos1[7])
    } else if (grepl("un estudiante de cuarto", key)) {
      patinaje <- "de estudiantes de cuarto"
      numerator <<- (ninos1[4] + ninos1[8])
    } else {
      patinaje <- key
    }
    
    # Append the result to the resultados list
    resultados[[i]] <- patinaje
  }
  
  return(resultados)
}

# Using the function to get the 'patinaje' values for the first 5 keys in 'claves'
resultados <- busca_y_asigna(dicci, claves)
