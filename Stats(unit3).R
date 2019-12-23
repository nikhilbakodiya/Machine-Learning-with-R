#Mean
mean(c(1,2,3,4,5))

salesrevenue=c(56,67,345,23,45,456,76,76,90,45)
mean(salesrevenue)

mean(salesrevenue,trim=0.3) #trim will arrange the vector in the ascernding order and than trim it between the first three% and the last three%

#sorting (long way of trim and taking out mean)
sort(salesrevenue)
mean(c(56,67,76))

#Determine mean after dropping NA values.
Expenses=c(23,27,NA,45,NA,234,45)
mean(Expenses)

mean(Expenses,na.rm=TRUE)

#Geometyric mena
#Syntax: prod(x)^(1/length(x))
#where, prod(x) calculates the multiplication of all the values
x=c(12,20,30,40)
prod(x)^(1/length(x))

#harmonic mean
1/mean(1/x)

#Median 
median(x)

##Measure of variability
#Variance
var(x)

var(c(1,2,3,4))

sqrt(var(x))
OR
sd(x)

#
str(cars)
mean(cars$speed)
median(cars$speed)
sd(cars$speed)

#range
range(cars$speed) #minimum or max speed
max(cars$speed)
min(cars$speed) 

#Interquar4tile range
IQR(cars$speed)/2
IQR(cars$speed)

#Summary function
cost=c(123,12,34,345,45,34,34)
summary(cost)

#quantile
quantile(cost)

quantile(cost,prob = 0.35)

quantile(cost,prob = c(0.35,0.5))

quantile(cost,prob =seq(0.25:1,by=0.25))

# rank
marks=c(23,43,23,43,45,46,67,56,34,12)
rank(marks)
rank(marks,ties.method = "random")
rank(marks,ties.method = "max")
rank(marks,ties.method = "min")
rank(marks,ties.method = "first")
rank(marks,ties.method = "last")

#Moments package
install.packages("moments")
library(moments)
skewness(marks)
kurtosis(marks)

#
income=matrix(c(22,43,12,45,56,34),ncol=3,byrow=TRUE)
#assigning column and row names to the matrix
colnames(income)=c("High","Medium","Low")
rownames(income)=c("Male","Female")

#Creation of table using matrix
demographics=as.table(income)
demographics

#Using tablename to get he total number of observations.
margin.table(demographics)

#
margin.table(demographics,1)
margin.table(demographics,2)

#Combining above commands to get proportions
margin.table(demographics,1)/margin.table(demographics)
margin.table(demographics,2)/margin.table(demographics)

#Proportion for all values in table
prop.table(demographics)  #sabhka sum 1 ayega
prop.table(demographics,1) # sirf row ka sum 1 ayega
prop.table(demographics,2) # sirf column ka sum 1 ayega

#Correlation
x=c(12,34,54,34,65,12)
y=c(23,34,12,54,76,34)
cor(x,y)

#
cor(cars$speed,cars$dist)
cor.test(x=cars$speed,y=cars$dist,method = "pearson")
#Null hypothesis: Jabh kisi 2 groups me difference nhi he(i.e. no significant difference), i.e. there is a correlation between speed and distance
#if pvalue<0.05 that means null hypothesis is rejected, if p>0.05, null hypothesis is failed to be reject(i.e. it is accepted), i.e. there is no correlation between speed and distance
cor.test(x=cars$speed,y=cars$dist,method = "spearman")

#Chi square test for correlationship
install.packages("MASS")
library('MASS')
str(survey)
tbl=table(survey$Smoke,survey$Clap)
ch1=chisq.test(tbl)
ch1


ch1$statistic

tbl1=table(survey$Wr.Hnd,survey$NW.Hnd)
ch2=chisq.test(tbl1)
ch2

cor(survey$Wr.Hnd,survey$NW.Hnd)
cor.test(survey$Wr.Hnd,survey$NW.Hnd,method = "pearson")
