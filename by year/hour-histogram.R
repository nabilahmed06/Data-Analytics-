byhour <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/unclean/byhour.csv", header=FALSE)
View(byhour)
byhour1=byhour[-c(1),]
byhour1
attach(byhour1)
#qplot(V1,data=byhour1,geom = "histogram")
#hist(byhour1)
#hist(byhour)



