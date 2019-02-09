Toothbrush=read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1 (last part)/Practice/Toothbrush.csv")
##View(Toothbrush)
attach(Toothbrush)
plot(Price,	Function)
fit	=	lm(Function	~	Price)
##fit
##plot(Price,	Function)
abline(fit)
##
attributes(fit)

