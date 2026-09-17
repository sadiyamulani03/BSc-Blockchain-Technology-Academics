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
#2/9
#joins 

students <- data.frame(
  ID=c(1,2,3,4),
  Names=c("A","B","c","D")
)

marks <- data.frame(
  ID = c(1,2,3,5),
  Marks = c(80,75,90,60)
) 
#inner join (merge ony complete data if any column is missing it won't be combined.)
#Def:- 1) left-join:-keeps all rows from x, and adds matching columns from y. Fill non-matches with NA.
#2) right_join:- keeps all rows from y, and adds matching columns from x.Fill non-matches with NA.

###The four main types of mutating joins are:
  
#1)inner_join(): Returns only rows where there is a match in both data frames, discarding unmatched rows from either side. 
inner_join(students, marks, by = "ID")

#2)left_join(): Returns all rows from the first data frame (x) and matching rows from the second (y), filling in NA for non-matches in y. 
left_join(students, marks, by = "ID")

#3)right_join(): Returns all rows from the second data frame (y) and matching rows from the first (x), filling in NA for non-matches in x. 
right_join(students, marks, by = "ID")

#4)full_join(): Returns all rows from both data frames, matching where possible and using NA for missing values on either side.
full_join(students, marks, by = "ID")

#31/8
#data visualization
library(ggplot2)
data(iris)
head(iris)

#geom_points
ggplot(iris,
       aes(#asthetic
         x = Sepal.Length,
         y = Sepal.Width, 
         size = Petal.Length,
       color = Species)
       ) + geom_point()#geometric point

#geom_line
ggplot(iris,
       aes(
         x = Sepal.Width,
         y = Petal.Length
       )
       ) + geom_line()

#Bar Plot
ggplot(iris,
       aes(x= Species,
           fill = Species)
       ) + geom_bar()

#histogram
ggplot(iris,
       aes(x = Sepal.Length))+ 
       geom_histogram(bins =10,
       fill = "skyblue",
       colour = "black")

#density plot
ggplot(
  iris,
  aes(
    x = Sepal.Length,
    fill = Species
  )
) + geom_density(alpha = 0.4) ##alpha is unit of transparency 

#box plot


#8/9
# linear regression model :- Linear regression in R is a statistical method used to model the linear relationship between a dependent variable (response) and one or more independent variables (predictors).  It aims to find the best-fitting straight line that minimizes the difference between observed and predicted values, enabling both understanding of variable relationships and prediction of future outcomes. 
model1 = lm(
  mpg ~ wt,
  data = mtcars
)

model1 #Intercept=37.285  and wt=-5.344. means when wt is 0 then mpg is 37.285 
##mpg :- Miles per gallon, It represents the fuel efficiency of the car,
#Wt :- Weight of the car,It is measured in approximately 1000 pounds in this dataset
#hp :- Horsepower
#disp :- Engine displacement
#Independent variables :- we use to make the prediction.
#wt 
#Call it:
  #Predictor / Independent varaible / Explanatory variable

#Dependent variable :- we want to predict 
#mpg 
#Call it :
  #Response / Dependent var / Outcome var 

#coefficient of wt (Slope):- for every increase of 1 unit in wt,the predicted mpg decreases by approximately 5.344 units. If wt increases then mpg decreases.

#10/9
#intercept :- when wt/y-axis is 0, the predicted mpgx-axis is 37.285

summary(model1)

#fitted():- gives the values predicted by the model for the observations that were used to build the model.
fitted(model1)

#residuals:- A residual is the difference between what actually happened and what our model predicted.

#1)Positive residential -> Actual>Predicted  2)Negative -> Actual<Predicted 3)Zero -> Actual=Predicted

head(mtcars)

residuals(model1)
#or
model1$residuals

coef(model1)

#multiple R squared :-R-squared tells us how much of the variation in the dependent variable is explained by our model.
0.7528 * 100 #approximately 75.3% of the variation in mpg is explained by wt in this linear model.

#Adjusted R-squared is a modified version of R-squared that takes the number of predictors in the model into account.

#15/9

newdata <- data.frame(
  wt = c(2,3,4)
)

#predict():- To calculate the prediction for newdata
predict(model1 , newdata )#w=from wich model to which plot

#confidence interval:-A confidence interval gives us a range of near to be true values for a population parameter
confint(model1)

#prediction interval
predict(model1, newdata, interval="prediction")

#fit means predicted values
#lwr means lower limit
#upr means upper limit

#16/9
#confidence interval shows uncertainity about the mean response and prediction interval shows uncertainity about an individual usual observations 
#prediction intervals are usually wider

plot(mtcars$wt,
     mtcars$mpg,
     main = "Linear regression",
     xlab = "weight",
     ylab = "Miles per gallon",
     )

#Draw the regression line represented by model1.
abline(model1,
       col = "red",
       lwd = 2)

plot(fitted(model1),
     residuals(model1),
     xlab = "Fitted values",
     ylab = "Residuals",
     main = "residual plot")

#17/9
abline(h = -1.25, #h is horizontal
       col = "red",
       lwd = 2)

abline(v = 20, #v is verticle
       col = "red",
       lwd = 2)

#multiple regression
model1
model2 <- lm(
  mpg ~ wt + hp + disp,
  data = mtcars
)

summary(model2)
par(mfrow = c(2,2))
par(mar = c(4,4,2,1))
plot(model1)
plot(model2)

# k means:- 

iris

head(iris_data) = iris[, 1:4]

#scaling :- scaling the data scaled function is used to standardize numerical data
iris_scaled = scale(iris_data)

head(iris_scaled) = scale(iris_data)

salary = c(1000,2000,3000,4000)
scaled_sal = scale(salary)


