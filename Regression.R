#Regression (Linear)
height=c(121,134,145,146,132,189,178,174)
weight=c(56,78,57,69,59,64,65,66)
relation=lm(weight~height)
relation #y=a+bx, i.e. weight=57.71+0.042*height

newheight=data.frame(height=192)#here height=192 in the above equation
weight=predict(relation,newheight) # x=57.71+0.042*192
weight

#Multiple variables, y=a+bx1+cx2+dx3
model=lm(mpg~disp+hp+wt,data = mtcars)#mpg=37.10-0.0009*disp-0.0311*hp-3.80*wt
model

newmodel=data.frame(disp=10,hp=8,wt=20)
mpg=predict(relation,newmodel)
mpg

#Regression (Logistics)
install.packages("caret")
library(caret)
install.packages("mlbench")
library(mlbench)
pid=read.csv("C:/Users/nikhil.1820548/Desktop/diabetes.csv")
set.seed(2000)
pid
partition=createDataPartition(y=pid$Outcome,p=0.70, list=FALSE)
partition=createDataPartition(y=pid$Outcome,p=0.70,list=FALSE)
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
confusionMatrix(validate$Outcom,convert)

