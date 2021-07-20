# Murchana Nath
# GRIP, July 2021

# Prediction using Supervised ML 
# Task 1 - Simple Linear Regression

#importing data and data interpretation

df = read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")
df

plot(df$Hours, df$Scores,xlab="Hours studies per day",
     ylab ="Percentage Score", main = "Hours vs Scores")
cor(df$Hours, df$Scores)
abline(lm(df$Scores ~ df$Hours), col = "red")

#splitting data into training and testing data set

library(caTools)
set.seed(2)
split <- sample.split(df, SplitRatio = 0.75)
split
train <- subset(df,split="TRUE") 
test <- subset(df, split ="FALSE")
train
test

#setting up the model and prediction

model= lm(df$Scores~df$Hours,data=train)
pred<- predict(model,test)
pred
summary(model)

scores_predict <- (9.7758 * 9.25 + 2.4837) 
scores_predict

#score is predicted using the formula y = mx+c ; m=9.7758 , c=2.4837 , x=9.25