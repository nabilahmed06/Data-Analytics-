CleanedForum <- read.csv("C:/Users/NABIL AHMED/Desktop/Assignment 1/cleaned/CleanedForum.csv")
View(CleanedForum)
library(lattice)
xyplot(posemo~Time)
#xyplot(negemo~Time)
# xyplot(anx~Time)
# xyplot(affect~Time)
# xyplot(posemo~Date)
# xyplot(negemo~Date)
# xyplot(anx~Date)
# xyplot(affect~Date)
aggregate(CleanedForum)


