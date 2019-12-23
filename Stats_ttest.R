str(mtcars)
install.packages("moments")
library("moments")
mtcars$mpg
#
skewness(mtcars$mpg)
kurtosis(mtcars$mpg)
skewness(mtcars$hp)
kurtosis(mtcars$hp)

#There are three basis assumptions that needs to be fulfilled before applying two way annova
#1.One sample t test 2.Homogenityof variance  3.Independent
#1.One sample t test: for this only the normality assumption needs to be checked
#because the rest of the two assumptions (Homogenity of variances and independent
#samples) are applicable onlyto 2 or more than 2 samples.

#Q-Qplot, if theline dots are plotted mostly near theline tahn it is normal

qqnorm(mtcars$mpg,col="green")
qqline(mtcars$mpg,col="brown")

# histogram
hist(mtcars$mpg,prob=TRUE,breaks=10)

curve(dnorm(x,mean(mtcars$mpg,na.rm=TRUE),sd(mtcars$mpg,na.rm=TRUE)),add=TRUE,
      col="darkblue", lwd=2)

#Syntax for one sample t test: t.test(sample,mu=mu0,alternative=,conf.level=)
attach(mtcars)
mean(mpg)
t.test(mpg,mu=23)
#null hypothesis:there will be no significance differnce between mean of mpg and 23 
#as p <0.05,this means that null hypothesis is rejected that means there is a differnce in mpg and 23

t.test(mpg,mu=20.1)#null hypothesis is failed to reject as p>0.05

#
t.test(mpg,mu=23,alternative="less")

t.test(mpg,mu=23,alternative="greater") #p >0.05,which shows its not greater

#if a variable has got only 2 samples than independent test else annova
#vs and am will haveindependent test
#
install.packages("car")
library("car")

#Applying Levene test for checking homogeneity of variance 

leveneTest(mtcars$mpg~mtcars$vs)
bartlett.test(mpg~am)
bartlett.test(mpg~vs)
#if the p value in the bartletor levene test is >0.05 this means that
#homogeneity of variance is fulfilled,now we can apply the t test

group1=subset(mtcars,am=0)
group2=subset(mtcars,am=1)

t.test(group1$mpg,group2$mpg)
#null hypothesis: there is no significant difference between groups automatic and manual transmission with repect to miles per gallon

#To check normality on survey continous variables(Wr.Hnd)
install.packages("MASS")
library(MASS)
str(survey)
install.packages("moments")
library("moments")
skewness(survey$Wr.Hnd)

newsurvey =na.omit(survey)
skewness(newsurvey$Wr.Hnd)

kurtosis(newsurvey$Wr.Hnd)

#Homogeniety f Variance

bartlett.test(newsurvey$Wr.Hnd~newsurvey$W.Hnd)
install.packages("car")
library("car")
leveneTest(newsurvey$Wr.Hnd~newsurvey$W.Hnd)

#T-test
attach(survey)
male=subset(survey,Sex=='Male')
female=subset(survey,Sex=='Female')
t.test(male$Wr.Hnd,female$Wr.Hnd,var.equal = FALSE)
#p value<0.05 i.e. H0 rejected there is a significant difference between the male
#and female's wr.hnd




