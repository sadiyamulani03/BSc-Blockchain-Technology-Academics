abc = c(4,7,9,3)
meanofabc = sum (abc)/length(abc)
meanofabc

mean(abc)

# to remove a variable from environment
rm (meanofabc)

values = c(98, 4, 68, 62)
mymean = function (y){sum(y)/length(y)}
mymean(values)

p = c(5,9,5,3,4,55,35,568,35,7)
staddevia = function(s){}

triArea = function(triangle_base, triangle_height){
  triangle_base = as.numeric(readline("Enter base value:"))
  triangle_height = as.numeric(readline("Enter height value:"))
  return(0.5*triangle_base*triangle_height)}
triArea(triangle_base, triangle_height)

triangle_base = as.numeric(readline("Enter base value:"))
triangle_height = as.numeric(readline("Enter height value:"))
result = triArea(triangle_base, triangle_height)
result

L = 3
B = 5
areaofrec = function(l,b){return(l*b)}
areaofrec(L,B)

