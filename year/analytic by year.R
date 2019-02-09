Analytic.by.year <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/cleaned/arham/Analytic-by-year.csv")
View(Analytic.by.year)
analytic1=ts(Analytic.by.year$Analytic,frequency=1,start=c(2002,1))
analytic1
plot(analytic1)

