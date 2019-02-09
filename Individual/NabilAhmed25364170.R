#ID- 25364170
##Setting up the R working
#directory to 'desktop', clearing the workspace, setting the number of significant digits 
#and using 'GCD' as the default data frame for the whole data set


rm(list = ls())
options(digits = 4)
GCD = read.csv("C:/Users/NABIL AHMED/Desktop/german_credit_data.csv")
View(GCD)
attach(GCD)

#Figuring out the numerical variables
str(GCD)

#Summary of numerical variable 
summary(Duration)
sd(Duration)
summary(Credit.amount)
sd(Credit.amount)
summary(Installment.rate)
sd(Installment.rate)
summary(Residence.since)
sd(Residence.since)
summary(Age)
sd(Age)
summary(Existing.credits)
sd(Existing.credits)
summary(People.liable)
sd(People.liable)
summary(Class.label)
sd(Class.label)

#Good Credit Risk to Bad Credit Risk 
Credit_Risk=GCD["Class.label"]
Credit_Risk = table(Credit_Risk)
Credit_Risk


#Visualization of good credit risk to bad credit risk
#1 being good and 2 being bad
plot(Credit_Risk)       

#Shows the number of foreign Workers
Foreign_Workers=table(GCD["Foreign.worker"])  
Foreign_Workers
plot(Foreign_Workers)
#A201 : Is Foreign Worker
#A202 : Is Not Foreign Worker

#Training and Testing Set
set.seed(25364170) #Seed=student ID
train.row = sample(1:nrow(GCD), 0.7 * nrow(GCD))
GCD.train = GCD[train.row,]
GCD.test = GCD[-train.row,]


#Installation of packages for further analysis
install.packages("tree")
install.packages("e1071")
install.packages("rpart")
install.packages("randomForest")
install.packages("ROCR")
install.packages("adabag")



library(rpart)
library(ROCR)
library(tree)
library(e1071)
library(adabag)
library(randomForest)

###############################

#decision tree
GCD.tree = tree(as.factor(Class.label)~. ,data = GCD.train)
GCD.predtree = predict(GCD.tree, GCD.test, type = "class")
t1=table(Predicted_Class=GCD.predtree, Actual_Class=GCD.test$Class.label)
cat("\n#Decision Tree Confusion\n")
t1
GCD.pred.tree = predict(GCD.tree, GCD.test, type = "vector")
GCDpred = prediction(GCD.pred.tree[,2], GCD.test$Class.label)
GCDperf = performance(GCDpred, "tpr", "fpr")
plot(GCDperf, col = "orange")


#########################################################################

#naive bayes
GCD.bayes = naiveBayes(as.factor(Class.label)~. , data = GCD.train)
GCD.predbayes = predict(GCD.bayes, GCD.test, type = "class")
t2=table(Predicted_Class=GCD.predbayes, Actual_Class=GCD.test$Class.label)
cat("\n#NaiveBayes Confusion\n")
t2
# outputs as confidence levels
GCD.pred.bayes = predict(GCD.bayes, GCD.test, type = "raw")
GCDBpred  = prediction(GCD.pred.bayes[,2], GCD.test$Class.label)
GCDBperf = performance(GCDBpred, "tpr", "fpr")
plot(GCDBperf,add = TRUE, col = "blueviolet" )



#########################################################################

# Bagging
GCD.train$Class.label = factor(GCD.train$Class.label)
GCD.bag = bagging (Class.label~. ,data = GCD.train, mfinal = 5)
GCDpred.bag = predict.bagging(GCD.bag, GCD.test)
t3=table(Actual_Class = GCD.test$Class.label, Predicted_Class = GCDpred.bag$class)
cat("\n#Bagging Confusion\n")
t3
GCDpred.bag = predict.bagging(GCD.bag, GCD.test)
GCDBagpred = prediction(GCDpred.bag$prob[,2], GCD.test$Class.label)
GCDBagperf = performance(GCDBagpred , "tpr", "fpr")
plot(GCDBagperf, col = "blue", add = TRUE)


#########################################################################
#Boosting
GCD.boost = boosting(Class.label~. ,data = GCD.train, mfinal = 10)
GCDpred.boost = predict.boosting(GCD.boost, GCD.test)
t4=table(Actual_Class = GCD.test$Class.label, Predicted_Class = GCDpred.boost$class)
cat("\n#Boosting Confusion\n")
t4
GCDpred.boost = predict.boosting(GCD.boost, GCD.test)
GCDBoostpred = prediction(GCDpred.boost$prob[,2], GCD.test$Class.label)
GCDBoostperf = performance(GCDBoostpred,"tpr", "fpr" )
plot(GCDBoostperf, add = TRUE , col = "green")


#########################################################################

# Random Forest
GCD.rf = randomForest(Class.label~., data = GCD.train)
GCDpredrf = predict(GCD.rf, GCD.test)
t5=table (Actual_Class = GCD.test$Class.label, Predicted_Class = GCDpredrf)
cat("\n#Random Forest Confusion\n")
t5
GCDpredrf = predict(GCD.rf, GCD.test, type = "prob")
GCDFpred = prediction(GCDpredrf[,2], GCD.test$Class.label)
GCDFperf = performance(GCDFpred, "tpr", "fpr")
plot(GCDFperf, add = TRUE , col = "red")


#Attribute importance
cat("\n#Decision Tree Attribute Importance\n")
print(summary(GCD.tree))
cat("\n#Baging Attribute Importance\n")
print(GCD.bag$importance)
cat("\n#Boosting Attribute Importance\n")
print(GCD.boost$importance)
cat("\n#Random Forest Attribute Importance\n")
print(GCD.rf$importance)