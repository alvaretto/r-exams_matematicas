my_vec <- 1:5
my_vec
sample(my_vec, size = 10, replace = TRUE)
sample(my_vec, size = 10, replace = TRUE, prob = c(0.5, rep(0.1, 6)))
