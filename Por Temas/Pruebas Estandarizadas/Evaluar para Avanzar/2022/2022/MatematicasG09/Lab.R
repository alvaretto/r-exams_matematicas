HelloWorld <- function() {
  print("Hello World!")
}

HelloWorld()

#######

MyPrint <- function(name) {
  str = paste("Hola,", name) 
  print(str)
}

MyPrint("John")
MyPrint("Marry")
MyPrint("Sam")
###############

MyVector <- function(a=7) {
  print(c(1:a))
}

MyVector()
MyVector(5)
MyVector(3)
###############

factorial <- function(x) {
  if(x %% 1 == 0 && x >= 0){
    if(x > 0)
      return <- x*factorial(x-1)
    else
      return <- 1  
  } else {
    return <- "Number should be positive integer." 
  }
}

cat("4! =", factorial(4), "\n")
cat("5! =", factorial(5), "\n")
cat("10! =", factorial(10), "\n")
###################

fib <- function(x) {
  if(x == 0){
    return <- 0
  } else if (x == 1) {
    return <- 1
  } else {
    return <- fib(x-1) + fib(x-2)
  }
}

cat("Fibonacci 5th term:", fib(10), "\n")
cat("Fibonacci 6th term:", fib(6), "\n")
cat("Fibonacci 7th term:", fib(7), "\n")