#Q.1 #MM1820548
#1
subjects=c(50,60,70,80)
names(subjects)=c("Accounts","Python","Stats","R")
print(subjects)
print(names)
#2
subject=paste(c("Accounts","Python","Stats","R"),1:4,sep="-")
print(subject)
#3
rank(subjects)
#4
sqrt(subjects)

#Q.2 #MM1820548
my.age <- as.integer(readline(prompt="Please Enter your Age: "))

if (my.age < 18) {
  print("You are Not a Major.") 
  print("You are Not Eligible to Work")
} else {
  if (my.age >= 18 && my.age <= 60 )  {
    print("You are Eligible to Work")
    print("Please fill the Application Form and Email to us")
  } else {
    print("As per the Government Rules, You are too Old to Work")
    print("Please Collect your pension!")
  }  
}
print("This Message is from Outside the Nested IF Else Statement")

#Q.3 #MM1820548
 #1
addition=function(x){
    y=x+1
    return(y)
  }
addition(4)
#2
mult=function(x){
  y=x*3
  return(y)
}
mult(4)
#3
square=function(x){
  y=x^2
  return(y)
}
square(4)
#4
division=function(x){
  y=x/2
  return(y)
}
division(4)
#Q.4, MM1820548
#t test on one sample (i.e. to check only the normality of the sample)
library(MASS)
str(survey)
newsurvey=na.omit(survey)
attach(newsurvey)
str(newsurvey)
#Q-Qplot, if theline dots are plotted mostly near theline tahn it is normal
qqnorm(Wr.Hnd,col="green")
qqline(Wr.Hnd,col="brown")
#histogram
hist(Wr.Hnd,prob=TRUE,breaks=10)
curve(dnorm(x,mean(Wr.Hnd,na.rm=TRUE),sd(Wr.Hnd,na.rm=TRUE)),add=TRUE,
      col="darkblue", lwd=2)
#apllying ttest (as the sample i.e. wr.Hnd is normal)
mean(Wr.Hnd)
t.test(Wr.Hnd,mu=18.8)
#H0(null hypothesis) accepted i.e , there is no significance difference between wr.hnd and Mu value

#Annova
bartlett.test(NW.Hnd~Fold)#homo var fulfilled

annovaresult=aov(NW.Hnd~Fold)
annovaresult
anova(annovaresult)
#as P>0.05 so there is no significance difference b/w Nw.hnd and Fold

#Q.5, MM1820548
#Non parametric tests:
#1 sample ttest:
mean(Wr.Hnd)
ks.test(Wr.Hnd,20)#H0 fail to be rejected, no significant difference
ks.test(Wr.Hnd,40)#H0 reject, there is a significance difference
#independent sample ttest
wilcox.test(Wr.Hnd~W.Hnd) #H0 reject, there is a significance differnce between Wr.hnd and W.hnd
#Kruskal test equivalent to annova
kruskal.test(NW.Hnd~Fold)#as P>0.05 so there is no significance difference b/w Nw.hnd and Fold
ks.test(Wr.Hnd,W.Hnd)
