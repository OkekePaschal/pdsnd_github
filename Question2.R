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

chi.sum = summary(chi$Start.Station)
ny.sum = summary(ny$Start.Station)
wash.sum = summary(wash$Start.Station)

head(chi.sum, )
head(ny.sum,3)
head(wash.sum,3)

barplot(head(chi.sum, 2), xlab="Start Station",ylab="Count of trips",col="blue", main="Bar chart for Most Common Start Stations in Chicago",border="red",cex.main=1.25, cex.lab=0.75, cex.axis=0.75)
barplot(head(ny.sum,3), xlab="Start Station",ylab="Count of trips",col="blue", main="Bar chart for Most Common Start Stations in New York",border="red")
barplot(head(wash.sum,2), xlab="Start Station",ylab="Count of trips",col="blue", main="Bar chart for Most Common Start Stations in Washington",border="red")

getMode <-function(x)
{
  uniq <-unique(x)
  uniq[which.max(tabulate(match(x,uniq)))]
}
getMode(chi$Start.Station)
getMode(ny$Start.Station)
getMode(wash$Start.Station)