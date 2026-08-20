#simple in-build data importation
data("iris")
#checking first 6 observations
head(iris)
#structure of dataset(datatype of all columns)
str(iris)
#specific columns/rows
iris[c(10:20),c(2,3,4)]
#data manuplulation (dplyr is a library used for )
#Core functions and Verbs
#filter(): Extracts rows from a data frame based on specified logical conditions. 
filter(iris, Sepal.Length > 6)
#with pipe operator
iris |>
  dplyr::filter(Sepal.Length > 6)

iris |>
  dplyr::filter(Species == "virginica")
#two conditions at same time 
iris |>
  dplyr::filter(Sepal.Length > 6 ,Species == "virginica" )

levels(iris$Species)
iris |>
  dplyr::filter(Species == c("virginica","setosa"))

iris |>
  dplyr::filter(Species == "virginica"| Species == "versicolor")

#select(): Chooses specific columns (variables) from a data frame. 
colnames(iris)
library(dplyr)
iris |> #|> is a pipe operator used to chain different functions together
  dplyr::select("Sepal.Width","Petal.Length")
#rangewise columns
select(iris, Sepal.Width:Petal.Length)
#mutate(): Creates new variables or modifies existing ones based on functions of other columns. 
#arrange(): Reorders the rows of a data frame in ascending or descending order.
#ascending
arrange(iris, Sepal.Length)
#descending
arrange(iris , desc(Sepal.Length))
iris |>
  arrange(desc(Sepal.Length)) |>
  filter(Species == "virginica"| Species == "versicolor")
#summarise(): Collapses multiple values down to a single summary statistic, often used in conjunction with group_by() to perform split-apply-combine operations. 
#group_by(): Group data for operations by category




