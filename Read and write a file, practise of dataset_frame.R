str(mtcars)
print(summary(mtcars))

x=subset(mtcars,cyl==6,select=c(hp,disp))
print(x)

pie(x$hp,labels=cars,main="rainbow")

barplot(x$hp,xlab='Month',ylab="revenue",main='Revenue chart',border="red")

hist(mtcars$hp,xlab="horsepower",col='red',border='green')

#Read a file
data1=read.xlsx("file=book1.xlsx",sheetIndex=1)
data2=read.xlsx("file=book1.xlsx",header=FALSE)
data3=read.xlsx("file=book1.xlsx",header=TRUE)
#Write a file
write.csv(newdata,"output.csv")
 
write.csv(x,"hp.csv")

str(state.x77)
