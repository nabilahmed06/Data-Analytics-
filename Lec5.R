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
fit$residuals
fit$coefficients[1]
fit$coefficients[2]
##won't work as we only have coefficient 'a' and 'b'
fit$coefficients[3]
fit$coefficients[4]
##
fit$residuals[1]
fit$residuals[2]
fit$residuals[3]
fit$residuals[4]
fit$terms[0]
### No need
hist(fit$residuals)
hist(fit$coefficients)
hist(fit$effects)
hist(fit$rank)
hist(fit$fitted.values)
hist(fit$assign)
###
qqnorm(fit$residuals)	
qqline(fit$residuals)	
plot(Price,	fit$residuals)
par(mfrow	=c(2,2))
plot(fit)
summary(fit)
predict.lm(fit,	newdata	=	data.frame(Price=c(6,7,8)),int="conf")
###Model 2: Predictors
Concrete<-read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1 (last part)/Practice/Concrete.csv")	
View(Concrete)
attach(Concrete)
fit<-lm(Strength~	Cement+	Water)
fit
##pg 45
summary(fit)
##3D plotting
install.packages("scatterplot3d")	
library(scatterplot3d)
sur<-scatterplot3d(Water,Cement,	Strength,	pch=16)
fit=lm(Strength~Water+Cement)
sur$plane3d(fit)
fit	<-	lm(Strength	~	.	,	data	=	Concrete)
fit
##Pg-52
library(ggplot2)
set.seed(25364170)
View(diamonds)
dsmall<-diamonds[sample(nrow(diamonds),	1000),]	
qplot(carat,price,data=dsmall,color=color,size=clarity,alpha=cut)	
##using log base e/ ln
qplot(log(carat),log(price),data=dsmall,color=color,size=clarity,alpha=cut)	
##using log of Base 10....it is used for much smaller scale
qplot(log10(carat),log10(price),data=dsmall,color=color,size=clarity,alpha=cut)
##Concentrating only on size and clarity
qplot(log10(carat),log10(price),data=dsmall,size=clarity)
qplot(log(carat),log(price),data=dsmall,size=clarity)

qplot(log(carat),log(price),data=dsmall,color=color,size=clarity)

attach(dsmall)
contrasts(clarity)	=	contr.treatment(8)
d.fit	<-	lm(log(price)	~	log(carat)	+	clarity)
d.fit
contrasts(clarity)
qplot(log(carat),	log(price),	data	=	dsmall,	size	=	clarity)+geom_abline(intercept	=	7.8,slope	=	1.8)	




