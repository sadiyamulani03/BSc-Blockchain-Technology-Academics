# if

a <- 5

if (a > 0){
  print("Number is Positive")
}

# else
b <- -10
if (b > 0){
  print("Number is Positive")
}else{
  print ("Number is Negative")
}

#function
x <- 5
evenOdd <- function(x){
  if(x %% 2 == 0) return("even") 
  else return("Odd")
}
print(evenOdd(8))
print(evenOdd(7))

#Inf & NaN
c <- c(Inf, 2, 3)
print(is.finite(c))

d <- c(1, NaN, 3)
print(is.nan(d))

# NA 
e <- c()
print(is.na(e))
