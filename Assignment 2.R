#Q.1, mm1820548
#corrgram
install.packages("corrgram")
library(corrgram)
library(MASS)
str(survey  )
corrgram(survey, order=TRUE, lower.panel = panel.shade,upper.panel = panel.pie,text.panel = panel.txt, main="Correlation")
#Result=blue color shows a positive correlation and the red color shows the negative correlation
#example , Nw.Hnd and Wr.Hnd are the most positively correlated as they are the darkest blue

#Q.2, mm1820548
install.packages("treemap")
library(treemap)
treemap(survey,index=c("Clap"),vSize="Wr.Hnd")
#Result= Right came the most occurence in Wr.Hnd and than Neither and than Left

#Q.3, mm1820548
#missing values can be handled by using na.omitExample:-
n=c(1,2,3,NA,NA,3,4)
mean(n)
newn=na.omit(n)
mean(newn)

#Q.4, mm1820548
#Multiple variables, y=a+bx1+cx2+dx3
model=lm(Wr.Hnd~NW.Hnd+Pulse+Age,data = survey)
model

newmodel=data.frame(NW.Hnd=10,Pulse=8,Age=20)
WrHnd=predict(model,newmodel)
WrHnd
#here y=a+bx1+cx2+dx3;
#y=Wr.Hnd, a=intercept=1.64, b=0.909619, c=0.003728, d=-0.006641, so the value of y can 
#be found out with different samples and different values of x1,x2,x3

#Q.5, mm1820548
#Logistic regression
install.packages("mlbench")
library(mlbench)
pid=read.csv("D:/Analytics (sem2)/R/diabetes.csv")
set.seed(2000)
pid
partition=createDataPartition(y=pid$Outcome,p=0.70, list=FALSE)
analysis=pid[partition,]
validate=pid[-partition,]

#Creating a logistic model
pidmodel=glm(formula=Outcome~.,data=analysis,family=binomial())
summary(pidmodel)

#Use of predict function
anspredict=predict(pidmodel,newdata=validate, type='response')
anspredict
summary(anspredict)
#Converting the values
convert=ifelse(anspredict<0.5,"0","1")

table(convert)
convert
#
confusionMatrix(pidmodel$Outcome, convert)
