ny = read.csv('new_york_city.csv',na.strings=c("","NA"))
wash = read.csv('washington.csv',na.strings=c("","NA"))
chi = read.csv('chicago.csv',na.strings=c("","NA"))

library(ggplot2)
library(scales)

head(ny)

head(wash)

head(chi,100)

user.Count <- function(d)
{
  ggplot(aes(x=User.Type), data=subset(d, User.Type != ""))+
    geom_bar(stat = "count") +
    labs(x = "User type", y="Count of user type")+
    ggtitle("Bar chart of City User types")
}
user.Count(ny)
user.Count(wash)
user.Count(chi)

table(ny$User.Type)
table(wash$User.Type)
table(chi$User.Type)