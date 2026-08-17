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

#17/8
Nations$outlook <- as.factor(Nations$outlook)
barplot(table(Nations$outlook), main="Bar Plot")
#horizontal graph with color
barplot(table(Nations$outlook), main="Bar Plot", horiz = T, col = rainbow(3),ylab = "Y-axis", xlab = "X-axis")

#legend:- 
legend("topright", c("Negative", "Positive", "Stable"), fill = rainbow(3), cex = 0.5)

#cex command :- legend ploted ratio can be decreased or increased

#visualizing frequency and non-frequency distributions :-

summary(softdrinks)
class(softdrinks)
dim(softdrinks)
