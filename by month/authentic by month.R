Authentic.by.month <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/cleaned/arham by month/Authentic-by-month.csv")
View(Authentic.by.month)
authentic2=ts(Authentic.by.month$Authentic,frequency=12,start=c(2002,1))
authentic2
plot(authentic2)
authentic3=decompose(authentic2)
plot(authentic3)


