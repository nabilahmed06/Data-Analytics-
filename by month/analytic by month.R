Analytic.by.month <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/cleaned/arham by month/Analytic-by-month.csv")
View(Analytic.by.month)
analytic2=ts(Analytic.by.month$Analytic,frequency=12,start=c(2002,1))
analytic2
plot(analytic2)
analytic3=decompose(analytic2)
plot(analytic3)


