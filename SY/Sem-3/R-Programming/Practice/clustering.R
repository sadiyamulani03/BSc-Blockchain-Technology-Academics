# k means:- 

iris

head(iris_data) = iris[, 1:4]

#scaling :- scaling the data scaled function is used to standardize numerical data
iris_scaled = scale(iris_data)

head(iris_scaled) = scale(iris_data)

salary = c(1000,2000,3000,4000,5000)
scaled_sal = scale(salary)

#19/9
set.seed(100) #initial observation

#kmeans() is an R function that performs K-Means clustering.
#It tries to divide the data into groups called clusters.
km = kmeans(iris_scaled,
            centers = 3)

km$cluster
#What is a cluster center?
#A cluster center is like the representative/average point of a cluster.

#Simple explanation:"If all flowers belonging to a cluster are placed together, the center represents the typical measurements of that group."
km$centers

km$size

table(iris$Species)
table(km$cluster,
      iris$Species)

plot(
  iris$Petal.Length,
  iris$Petal.Width,
  col = km$cluster,
  pch = 19, #ploting clustering shape 17<- triangle, circle <-19, 22<-square
  main = "K-means clustering of iris",
  xlab = "Petal Length",
  ylab = "Petal Width"
)





