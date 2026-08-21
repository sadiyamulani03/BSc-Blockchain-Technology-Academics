#12/8
#Data Visualization:-
Gasoline_prices <- read.csv()
head(Gasoline_prices)

weekly_gasoline_prices=Gasoline_prices
str(weekly_gasoline_prices)

#type conversion to date
weekly_gasoline_prices$Data = as.Date(weekly_gasoline_prices$Data, format = "%m-%d-%Y")

plot(weekly_gasoline_prices, type = "l", main = "time-serie weekly", )

Library(zoo)
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

#17/8
Nations$outlook <- as.factor(Nations$outlook)
barplot(table(Nations$outlook), main="Bar Plot")
#horizontal graph with color
barplot(table(Nations$outlook), main="Bar Plot", horiz = T, col = rainbow(3),ylab = "Y-axis", xlab = "X-axis")

#legend:- 
legend("topright", c("Negative", "Positive", "Stable"), fill = rainbow(3), cex = 0.5)

#cex command :- legend ploted ratio can be decreased or increased

#visualizing frequency and non-frequency distributions :-

#18/8
library("readxl")
softdrinks

summary(softdrinks)
class(softdrinks)
dim(softdrinks)
str(softdrinks)

softdrinks$drinknames = as.factor(softdrinks$drinknames)

table(softdrinks)
#column bind
softdrink1 = cbind.data.frame(table.softdrinks)

head(softdrink1)
#relative frequency
softdrink1$relativefreq = softdrink1$Freq/sum(softdrink1$Freq)

#barplot
barplot(softdrink1$relativefreq, names.arg = softdrink1$drinknames, col= rainbow(8))

levels(softdrink1$drinknames)
par(cex=0.5)
legend("topright", legend = c("Cke","fnt","for","md","pep","rb","spr","thu"), fill = rainbow(8))

#pie chart
paste0(softdrink1$drinknames, " " ,round(100*softdrink1$reletivefreq, 2),"%")
pie(softdrink1$relativefreq,
    labels = paste0(softdrink1$drinknames, " " ,round(100*softdrink1$reletivefreq, 2),"%"),
    main = "soft drinks frequency dust",
    col = rainbow(8))
legend("topright", legend = c("Cke","fnt","for","md","pep","rb","spr","thu"), fill = rainbow(8))

#pie 3D
library("plotrix")
pie3D(softdrink1$relativefreq, 
      labels = paste0(softdrink1$drinknames, " " ,round(100*softdrink1$reletivefreq, 2),"%"),
      main = "soft drinks frequency dust",
      col = rainbow(8))
legend("topright", legend = c("Cke","fnt","for","md","pep","rb","spr","thu"), fill = rainbow(8))

#histogram :- 
var = sample(50:100, 1000, replace = T)
summary(var)
str

par(mfrow=c(1,3))
hist(var, xlab="freq", ylab="varaible", col=rainbow(20), breaks = 1)
hist(var, xlab="freq", ylab="varaible", col=rainbow(20), breaks = 10)
hist(var, xlab="freq", ylab="varaible", col=rainbow(20), breaks = 100)

hist(var, xlab = "frequency", ylab="variable", col=rainbow(20),breaks = 100, 
     main = "Histogram", cex.main=2, font.main=4, cex.axis =3, col.lab=("green"), 
     col.main="red",col.axis="black",cex.lab =1)

#19/8
m = hist(var, xlab="freq", ylab="varaible", col=rainbow(20), breaks = 10, main = "Histogram")

text(m$mids, m$counts, labels = m$counts, adj = c(0.5, -0.5))

par(mar = c(5,4,4,6+0.1)) #BLTR margin

par(new = T)
plot(density(var), lwd = 4, col="black", xlab = "", ylab = "0", axes = F, main = "")

axis(4, col = "black", color.axis = "black")
mtext("Cell density",side=4,col="black", line=4)

##side by side or grouped or stacked bar plot
library(readxl)
Meal <- read_excel("D:/Uni/SY/Sem-3/R-Programming/employee/Meal.xlsx")
View(Meal)
head(Meal)

Meal[c(1:3),c(2,6)]
as.matrix(Meal[c(1:3),c(2,6)])
barplot(as.matrix(Meal[c(1:3),c(2,6)]), col = rainbow(3), border = "white", xlab = "Price", ylab = "Number of Rest", beside = T)
par(cex = 0.5)
legend("topright", Meal$`Quality rating` [1:3], cex=1, fill=rainbow(3))

#20/8


















