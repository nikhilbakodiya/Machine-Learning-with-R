#NA
x=c(11,12,NA,19,NA)
is.na(x)

#NaN
y=c(11,12,NaN,19,NaN,NA)
is.nan(y)

#airquality
str(airquality)
complete.cases(airquality)
table(complete.cases(airquality))
#
install.packages("VIM")
library("VIM")
#
library("MASS")
str(biopsy)
aggr(biopsy,numbers=FALSE,prop=FALSE)
aggr(biopsy,numbers=FALSE,prop=TRUE)
aggr(biopsy,numbers=TRUE,prop=FALSE)
aggr(biopsy,numbers=TRUE,prop=TRUE)

#Matrixplot
matrixplot(airquality)
attach(airquality)

mean(Solar.R)   #NA, as some of the fields are missing
cor(Wind,Temp)

#mean even after being with NA
x=c(1,NA,2)
mean(x,na.rm=TRUE)

mean(airquality$Ozone)
averageozone=mean(airquality$Ozone,na.rm = TRUE)
averageozone

newairquality=na.omit(airquality)
str(newairquality)

#
table(complete.cases(airquality$Ozone))
position=which(is.na(airquality$Ozone))
position

#
airquality[position,1]=averageozone    #NA of ozone's 1'st 
table(complete.cases(airquality$Ozone))

# Data frame conversion
state=as.data.frame(state.x77,stringsAsFactors = FALSE)
x1=state$Population
x2=state$Income
x3=state$Illiteracy
x1
x2
x3

# Apply function
x=cbind(x1,x2,x3)
x

apply(x,2,mean)    #mean of all the columns,2=columns
apply(x,1,mean)   #mean of all the rows, 1=rows

#
head(iris)
str(iris)

#
install.packages("dplyr")
library("dplyr")
names(iris)[1:3]

subset1=select(iris,Sepal.Length:Petal.Length)
head(subset1)

subset2=select(iris,-(Sepal.Length:Petal.Length))
head(subset2)

subset3=select(iris,ends_with("Length"))
head(subset3)

subset4=select(iris,starts_with("sepal"))
head(subset4)

ans1=filter(iris,Sepal.Length>7.5)
ans1

ans2=filter(iris,Sepal.Length>7.5 & Petal.Length<6.5)
ans2

ans3=filter(iris,Sepal.Length>7.5 | Petal.Length>7.5)
ans3

newiris=arrange(iris,Sepal.Length)
head(newiris)

newiris1=arrange(iris,desc(Sepal.Length))
newiris1

#Sample
sample1=sample_n(iris,size=3)
sample1

sample2=sample_frac(iris,size=0.03)
sample2

#count
count(iris,Species)

#filter
filterdata=filter(iris,Species!='setosa')
filterdata
#group
groupdata=group_by(filterdata,Species)
groupdata
#summarise
summarise(groupdata,mean(Sepal.Length))

#Pipe Operator (%>%) (Joining commandss togather)
iris%>%
  filter(Species!='setosa')%>%
  group_by(Species)%>%
  summarise(mean(Sepal.Length))
  

  