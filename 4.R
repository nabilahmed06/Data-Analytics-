install.packages("ggplot2")
library("ggplot2")
data("diamonds")
View(diamonds)
ggplot(diamonds, aes(x=carat, y=price)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=clarity)) + geom_point()

ggplot(diamonds, aes(x=carat, y=price)) + geom_point() + geom_smooth(se=FALSE)

ggplot(diamonds, aes(x=price)) + geom_histogram()
ggplot(diamonds, aes(x=price)) + geom_histogram(binwidth=2000)
ggplot(diamonds, aes(x=price)) + geom_histogram(binwidth=200)
ggplot(diamonds, aes(x=price)) + geom_histogram(binwidth=200) + facet_wrap(~ clarity)
ggplot(diamonds, aes(x=price, fill=clarity)) + geom_histogram()
