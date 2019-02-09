Authentic.by.year <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/cleaned/arham/Authentic-by-year.csv")
View(Authentic.by.year)
authentic1=ts(Authentic.by.year$Authentic,frequency=1,start=c(2002,1))
authentic1
plot(authentic1)


