#1
a <- 35 %% 6 
print(a)

#2
15 > 20

#3
marks <- 100

#4
val <- "apple"
v <- c(TRUE, 0.1, "apple")
val %in% v

#5
mat <- matrix(c(1,2,3,4,5,6),nrow = 2)
mat %*% t(mat)

mat1 <- matrix(c(1,2,3,4,5,6),nrow = 2)
print(mat1)
mat2 <- matrix(c(6,5,4,3,2,1),nrow = 2)
print(t(mat2))
mat1 %*% t(mat2)
