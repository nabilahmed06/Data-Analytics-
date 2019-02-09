Tone.by.year <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/cleaned/arham/Tone-by-year.csv")
View(Tone.by.year)
tone1=ts(Tone.by.year$Tone,frequency=1,start=c(2002,1))
tone1
plot(tone1)


