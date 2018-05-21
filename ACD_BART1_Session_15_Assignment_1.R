#1. Use the below given data set
#DataSet
#a. Predict the no of comments in next H hrs
#b. Use regression technique
#c. Report the training accuracy and test accuracy


#Answers
#a) & b)
#reading the dataset and viewing
slr <- read.csv("D:/acadgild/slr.csv")
slr1<- slr
View(slr1)

#features
dim(slr1)
str(slr1)

library(psych)
describe(slr1)
summary(slr1)

#visualization
hist(slr1$Advt ,xlab = "advt", ylab = "Frequency",main="Histogram of advt",col="red")
hist(slr1$Sales ,xlab = "sales", ylab = "Frequency",main="Histogram of sales",col="blue")

plot(slr1$Advt,slr1$Sales)

#***NOTE***
#using linear regression model technique
#using slr1 dataset
#linear regression model
model<- lm(slr1$Advt~slr1$Sales)
model

#Important features

#multiple r squared value
#p value of slope test
#F stats

#predicting 
Pred<- predict(lm(slr1$Sales~slr1$Advt))
Pred

pred<- predict(model,newdata= slr1Test,type = "response")
table(slr1$Advt,pred>= 0.5)

conf<- table(slr1$Advt,pred)
conf
