z1=read.csv("C:/Users/NABIL AHMED/Desktop/3152 (PRESENTATION)/Thread-sentiments.csv")
attach(z1)
hist(affect,nclass=10)
hist(df[ ,c(2)])
###


z2=read.csv("C:/Users/NABIL AHMED/Desktop/3152 (PRESENTATION)/Affect-by-thread.csv")
z2
attach(z2)
plot(ThreadID,affect)


###
z3=read.csv("C:/Users/NABIL AHMED/Desktop/3152 (PRESENTATION)/Sentiment-by-thread.csv")
attach(z3)

library(ggplot2)	
install.packages("ggplot2movies")	#	new	package	
library(ggplot2movies)	

str(z3)	#	this	shows	the	structure	of	data	set	
#	sample	of	5000	rows	
#	this	just	makes	plot	sparser	&	plo?ng	faster		
z11	<-	z3[sample(nrow(movies),	),	]	
attach(z11)	
g1	=	qplot(negemo,affect)	
g1	
### g1	=	g1	+	ylim(0,1000)	
	
g1	=	g1	+	geom_point(aes(colour	=	posemo))
g1

ggsave("~/Desktop/msmall.jpg",	g,	width	=	20,	height=	12,	units	=	"cm")	


