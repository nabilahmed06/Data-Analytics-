byhour <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/unclean/byhour.csv", header=FALSE)
View(byhour)
byhour1=byhour[-c(1),]
byhour1
attach(byhour1)
users1=ts(byhour1$V2,frequency=1,start=c(00,2))
users1
plot(users1)

