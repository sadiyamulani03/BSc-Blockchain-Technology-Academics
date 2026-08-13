#A data frame in R is a fundamental, two-dimensional data structure designed to store tabular data where columns can contain different data types
data = read.csv("D:/Uni/SY/Sem-3/R-Programming/employee/acbb2271e66c10a5b73aacf82ca82784-e38afe62e088394d61ed30884dd50a6826eee0a8/employees.csv")
#24
newemp1 = data[2,2]

#coping dataset in another var 
data_1 = data

#dimensions of dataset
dim(data_1)

#summary of dataset
summary(data_1)

#for summarizing a specific column 
summary(data_1$SALARY)
head(data_1 ,3)
str(data_1)
colnames(data_1)

#21/7
#Subset of dataset is a filtered dataset.
subset(data_1,EMPLOYEE_ID>25)

# replace values in dataset use 
data_1[3,5]="new_value"
data_1[3,8]=NA
data_1[3,2]
data_1[4,8]=NA
data_1[5,8]=NA
#sum of an element in dataset
sum(is.na(data_1))


#Practice Questions
!is.na(NA)

x = c(0,NA,2,3,-0.5,0.2)
x>2 
x > 2 & !is.na(x)
!is.na(x)
(x==0 | X==2) & !is.na(x)

#22/7

#values from 1 to 100
g=c(1:100)

#sinipped(replace value for all element having Na)
data_1[is.na(data_1)] = 0
sum(is.na(data_1))
sum(is.0(data_1))
summary(data_1$SALARY)
mean(data_1$SALARY)

#dataset creation 
DF = data.frame(
  a=c(NA,1,2),
  b=c("One",NA,"Three")
)
DF

#filter values
subset(DF, !is.na(a))
subset(DF, !is.na(b))
#omit(removes columns according to condition)
na.omit(DF)

#practice on existing libraries dataset
library(car)
head(Freedman)
freedman <- Freedman
colnames(freedman)
dim(freedman)
str(freedman)
max(freedman$density)

summary(freedman$density)
summary(freedman$population)

#to remove Na 
max(freedman$population, na.rm=T)
Freedman.good = na.omit(Freedman)
summary(Freedman.good)

#Filter Na (complete cases)
Freedman_notav = Freedman[!complete.cases(Freedman),]


#23/7
#dynamic selection of columns
DF_1 = data.frame(
  empTD = c(data_1$EMPLOYEE_ID),
  name = c(data_1$FIRST_NAME),
  sal = c(data_1$SALARY)
)

# a data point that significantly deviates from other observations in a dataset, 
#often due to variability, measurement errors, or rare events
#exclude a Outlier
library(UsingR)
x = babies$dwt
head(x)
#range of dataset 
x[4:8]
summary(x)
#replace 999 Outlier
x[x==999]=NA
range(x, na.rm=T)
dim(x)

#24/7
newemp1 = data[2,2]
newemp1
exmpdata = data
exmpdata[is.na(exmpdata)] = 0
exmpdata
summary(exmpdata)

#existing dataset
library(UsingR)
babies
summary(babies)
head(babies)
colnames(babies)
dim(babies)
str(babies)
x = babies$dwt
x[4:8]

#30/7
#import observation from one dataset from another dataset (rbind)
library(car)
head(Freedman)
freedman_1 = rbind.data.frame(freedman, freedman[1:50, ])# this space after 50 an comma will not effect other columns 
dim(freedman_1)

#for unique values only
freedman_2 = unique(freedman_1)
dim(freedman_2)

#selecting columns and rows in bunch
dim(iris)
head(iris)

#one column
iris[,3]
head(iris[,3])

#two subsiquent columns (use range)
iris[,3:5]
head(iris[,3:5])

#two non-subsiquent columns (use vector)
iris[,c(3,5)]
head(iris[,c(3,5)])

#viewing end data 
tail(iris)

#3/8/26
#subsiquent rows
iris[20:50, 3:5]
colnames(iris)
#many
iris[,c("Species","Sepal.Length")]
#one
iris[,"Species"]
#creating new variable
iris$Petal.Ratio = iris$Petal.Length/iris$Petal.Width
#ratio of lenght and width
iris$Sepal.Ratio = iris$Sepal.Length/iris$Sepal.Width

#extraction of observations using row and column and condition 
iris$Petal.Width
range(iris$Petal.Width)
iris[iris$Petal.Width>0.3 & iris$Species=="setosa",]
iris[iris$Petal.Width>2.3 & iris$Species=="virginica",]

#extraction of observations using subset
subset(iris, Petal.Width>0.5 & Species=="setosa")

#creation 
library(Davis)
dim(Davis)


#5/8
#Factors are specialised data structure used to handle categorycle data which represents data with fixed and predefined set of unique values they are highly efficient because r stores them as a integer array map to a second array of text lables known as levels
#Working with factor variables

library(UsingR)
summary(Cars93)
head(Cars93)
dim(Cars93)
str(Cars93)
colnames(Cars93)
range(Cars93$Passengers)

d=Cars93[1:3, 1:4]
d
str(d)

d[3,2] = "A3"
d[3,4] = 40
class(d$Model)
levels(d$Model)

#droplevel is used to remove the levels, it will flush out the levels which are in the dataset
d$Model = droplevels(d$Model)
levels(d$Model)=c(levels(d$Model) , c("A3","A4","A5"))
d[3, c(2,4)] = list("A3", 40)
d[4,] = list("Audi","A4","Small",35)
#add observation through rbind()
rbind.data.frame(d.list("Audi","A4","Midsize",35))
#new column
d$modprice = d$Min.Price*1.3
#replacing column name
head(d$modprice)

#10/8
head(iris)
str(iris)

i = iris
tail(iris)
tail(i)
#add species:-
levels(i$Species) = c(levels(i$Species), c("Conflower"))
levels(i$species) = droplevels(i$Species)
rbind.data.frame(d.list(""))
i[151, ] = list(6.7, 3.0, 5.2, 1.8, "Conflower")
#further:- Data Visualization:- line, bar Plot...

#12/8
#Data Visualization:-

Gasoline_price <- read.csv()
head(Gasoline_price)

weekly_gasoline_prices=Gasoline_price
str(weekly_gasoline_prices)

#type conversion to date
weekly_gasoline_prices$Data = as.Date(weekly_gasoline_prices$Data, format = "%m-%d-%Y")

plot(weekly_gasoline_prices, type = "l", main = "time-serie weekly", )

Library(Zoo)
wpg=zoo(weekly_gasoline_prices..Dollars.per.Gallon)

#13/8
barplot(wpg1,
        ylab = "quartly prices", 
        xlab = "dates",
        col = "Blue",
        main = "quartly prices of gasoline",
        border = "red")

head(wpg1)

Nations = read.csv("nations_dataset.csv")
head(Nations)
str(Nations)