Clout.by.month <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/cleaned/arham by month/Clout-by-month.csv")
View(Clout.by.month)
clout2=ts(Clout.by.month$Clout,frequency=12,start=c(2002,1))
clout2
plot(clout2)
clout3=decompose(clout2)
plot(clout3)





