Tone.by.month <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/cleaned/arham by month/Tone-by-month.csv")
View(Tone.by.month)
tone2=ts(Tone.by.month$Tone,frequency=12,start=c(2002,1))
tone2
plot(tone2)
tone3=decompose(tone2)
plot(tone3)




