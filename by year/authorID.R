byauthorID <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/unclean/byauthorID.csv", header=FALSE)
View(byauthorID)
#aggregate(byauthorID[2],max)
which.max(byauthorID[,2])
byauthorID[which.max(byauthorID[,2])]

