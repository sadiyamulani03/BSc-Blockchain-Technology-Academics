#20/8
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

#arrange(): Reorders the rows of a data frame in ascending or descending order.

#ascending
arrange(iris, Sepal.Length)

#descending
arrange(iris , desc(Sepal.Length))
iris |>
  arrange(desc(Sepal.Length)) |>
  filter(Species == "virginica"| Species == "versicolor")
#21/8
#mutate(): Creates new variables or modifies existing ones based on functions of other columns.
#new column using mutate
iris_1 = 
  iris |>
  mutate(
    petal.ratio = Petal.Length/Petal.Width
  )

head(iris_1)

#conditional operations(creating columns)
iris_2 = 
  iris |>
  mutate(
    Petal.size = ifelse(Petal.Length > 4, "Large", "Small")
  )

#summarise(): Collapses multiple values down to a single summary statistic, often used in conjunction with group_by() to perform split-apply-combine operations.
iris_2 |>
  summarise(
    mean_sepal = mean(Sepal.Length),
    sd_sepal = sd(Sepal.Length),
    min_sepal = min(Sepal.Length),
    max_sepal = max(Sepal.Length)
  )

#group_by(): Group data for operations by category
iris_2 |>
  group_by(Species) |>
  summarise(
    mean_sepal = mean(Sepal.Length),
    sd_sepal = sd(Sepal.Length),
    min_sepal = min(Sepal.Length),
    max_sepal = max(Sepal.Length)
  )

iris |>
  group_by(Species)|>
  summarise(
    average_petal = mean(Petal.Length))|>
      filter(average_petal>4)

DF = data.frame(
  name = c("A","B","C","D"),
  salary = c(50000, NA, 60000, NA),
  age = c(25, 30, NA, 35)
)
is.na(DF)

#25/8
#In R, the modern and most efficient way to reshape data betweeen wide and long format is using the pivot_longer() and pivot_wider() functions from the tidyr package(part of the tidyverse)
library("tidyr")
#remove observations from salary having NA
DF |>
  drop_na(salary)

#replace NA using pipeline
DF %>%
  replace_na(
    list(
    salary=0,
    age=0
  ))

marks <-
  data.frame(
    Student = c("A","B","C"),
    Maths = c(80,70,90),
    Science = c(75,85,88),
    English = c(90,80,85)
  )

#wide to Long (pivot_longer):- Use pivot_longer() when you have variables spread across multiple columns (wide format) and you want to collapse them into a single columns with their values stacked into another (lonf format).
#long datset
long_marks = marks |>
  pivot_longer(
    cols = Maths:English,
    names_to = "Subject",
    values_to = "Marks"
  )
#Long to Wide (pivot_wider):-When you want to take data repeating down rows and spread it out into multiple columns.This is ideal for creating human-readable summary tables.
#wider dataset
wide_marks = long_marks |>
  pivot_wider(
    names_from = Subject,
    values_from = Marks
  )

#combining datasets








