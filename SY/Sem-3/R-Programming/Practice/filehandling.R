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

#21
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

#22

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

#Filter Na 
Freedman_notav = Freedman[!complete.cases(Freedman),]


#23
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

#24
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
