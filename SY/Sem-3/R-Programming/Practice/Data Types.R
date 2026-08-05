#double
a <- 8
typeof(a)

b <- 4.5
typeof(b)

#integer
c <- 8L
typeof(c)

#character
answer = "4>5"
answer
typeof(answer)
is.character(answer)

#complex data type
z8 <- 3 + 4i
typeof(z8)
class(z8)

z1 <- 5i

z2 <- complex(real = 2, imaginary = 6)

#raw
d <- as.raw()

class(d)
typeof(d)

#Type casting (conversion)
name <- "ABC"
as.numeric(name)

#sort
e = c(7,6,8)
e
sort(e)
typeof(abc)

#summary
summary(e)

studentnames = c("Sadiya","Rachana","Alicia","Shahin")
nchar(studentnames)
sort(studentnames)

#factor variable
gender = c("M","F","M","F","F")
class(gender)
typeof(gender)
fgen = as.factor(gender)
fgen
summary(fgen)

#8/5
shirt_sizes = c("L","M","L","S","S","L","S","M")
size_factor = factor(shirt_sizes)
