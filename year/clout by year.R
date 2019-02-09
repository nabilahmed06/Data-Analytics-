Clout.by.year <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/cleaned/arham/Clout-by-year.csv")
View(Clout.by.year)
clout1=ts(Clout.by.year$Clout,frequency=1,start=c(2002,1))
clout1
plot(clout1)


