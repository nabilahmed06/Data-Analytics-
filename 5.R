SentimentOutliers <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 2 last part/SentimentOutliers.csv")
View(SentimentOutliers)

data<-read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 2 last part/SentimentOutliers.csv")
# names<-(attributes(data)$names)
names<-names(data)
classes<-sapply(data,class)

for(name in names[classes == 'numeric'])
{
  dev.new()
  hist(data[,name]) # subset with [] not $
}



library(ggplot2)
library(reshape2)
ggplot(melt(SentimentOutliers),aes(x=SentimentOutliers$ThreadID)) + geom_histogram() + facet_wrap(~variable)


library(ggplot2)
library(plyr)
library(reshape2)
SentimentOutliers.barplot <- qplot(x=SentimentOutliers$ThreadID,data=SentimentOutliers, geom="bar")
x=SentimentOutliers.barplot
x
