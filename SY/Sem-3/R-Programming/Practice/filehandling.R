data = read.csv("D:/Uni/SY/Sem-3/R-Programming/employee/acbb2271e66c10a5b73aacf82ca82784-e38afe62e088394d61ed30884dd50a6826eee0a8/employees.csv")

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

#Subset of dataset 
subset(data_1,EMPLOYEE_ID>25)

# replace values in dataset use 
data_1[3,5]="new_value"

#Practice Questions
!is.na(NA)

x = c(0,NA,2,3,-0.5,0.2)
x>2 
x>2 && !is.na(x)
!is.na(x)
