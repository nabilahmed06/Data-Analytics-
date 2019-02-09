n1=read.csv("C:/Users/NABIL AHMED/Desktop/3152 (PRESENTATION)/Sentiment-by-thread.csv")
attach(n1)
install.packages("ggplot2")	
library(ggplot2)
str(n1)
g1=qplot(ThreadID,affect)
g1+geom_point(aes(colour=posemo))

g1=qplot(ThreadID,affect)	
g1=g1+geom_point(aes(colour=posemo))
g1