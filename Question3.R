#Read data from each CSV into variables
ny = read.csv('new_york_city.csv',na.strings=c("","NA"))
wash = read.csv('washington.csv',na.strings=c("","NA"))
chi = read.csv('chicago.csv',na.strings=c("","NA"))

#Import ggplot2 and scales libraries
library(ggplot2)
library(scales)

head(ny)

head(wash)

head(chi,100)

gender.count <- function(d)
{
  ggplot(aes(x=Gender), data=subset(d, Gender != ""))+
    geom_bar(stat = "count") +
    labs(x = "Gender", y="Count of Gender")+
    ggtitle("Bar chart of  User type Gender")
}
gender.count(ny)
gender.count(chi)

table(ny$Gender)
table(chi$Gender)

