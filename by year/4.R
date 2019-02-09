bymonthyear <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/unclean/bymonthyear.csv")
View(bymonthyear)
Months_by_Year=ts(bymonthyear$Freq,frequency=12,start=c(2002,1))
Months_by_Year
plot(Months_by_Year)
Months_by_Year_1=decompose(Months_by_Year)
plot(Months_by_Year_1)



