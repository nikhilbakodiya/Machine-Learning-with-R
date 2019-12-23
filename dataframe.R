#dataframe basic
name=c("Nikhil","Buki","Ojha","jha")
age=c(25,24,24,21)
roll=c(1,2,3,4)
weight=c(65,80,63,50)

details=data.frame(name,age,roll,weight)
print(details)
#
details$city=c("Indore","chandrapur","raipur","bengal me kahi")
print(details)
#
new=cbind(name,age)
new
#
newdetails=data.frame(name=c("joshi","ji","d","s"),age=c(24,23,24,23),roll=c(5,6,7,8),weight=c(67,68,57,65))
newr=rbind(details,newdetails)
newr
#
print(details[c(1,3),c(1,2)])
#
str(details)
#
rownames(details)
colnames(details)
#
print(summary(details))
#
subset(details, age>=24)
subset(details, age>=24 & roll<=2)
subset(details, age>=24 | roll<=2)
#
subset(details, age>=24,select=c(-2,-6))
subset(details, age>=24,select=c(1,2))
#
head(details)
head(details,n=2)
tail(details)
tail(details,n=2)
#
str(mtcars)
mtcars$gear
attach(mtcars)
gear
detach(mtcars)
gear
getwd()
#
city=c("Indore","lucknow","Delhi","Bhopal")
newrr=cbind(details,city)
newrr
#
getwd()
q=read.csv("aa.csv")
q$Name
