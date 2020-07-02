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

#function to count users in dataset
user.Count <- function(d)
{
  ggplot(aes(x=User.Type), data=subset(d, User.Type != ""))+
    geom_bar(stat = "count") +
    labs(x = "User type", y="Count of user type")+
    ggtitle("Bar chart of City User types")
}

#Count users for each city's dataset
user.Count(ny)
user.Count(wash)
user.Count(chi)

#Generate table view with usertypes
table(ny$User.Type)
table(wash$User.Type)
table(chi$User.Type)