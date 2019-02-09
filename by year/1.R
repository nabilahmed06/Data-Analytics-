x1=byyear <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/cleaned/byyear.csv")
View(byyear)
hist(x1$Year)
head(x1)
attach(x1)
g=qplot(Year,Freq)
g
g=g+ylim(0,5000)
g
g=g+geom_point(aes(colour=Documentary))
g
