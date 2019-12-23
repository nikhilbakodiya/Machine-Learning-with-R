ceiling(12.5)
floor(12.5)
Sys.time()
sys.time()
Sys.time()
startdate=as.Date("2016-03-01")
Sys.Date()-startdate
seq(15)
seq(5:15)
seq(from=-5,to=5)
seq(as.Date("2018-14-01"),by="days",length=5)
seq(as.Date("2018-01-14"),by="days",length=5)
rep(2.3,times=6)
paste("Helo","and","welcome",sep='*')
#
string1<-"Hello"
string2<-"Welcome"
paste(string1,string2,sep='=')
paste(string1,string2,collapse='=')
#
ans<-"Hello world"
substring(ans,6,9)
#Naming(/assigning)
fruit=c(4,3,1,4)
names(fruit)=c("apple","orange", "as","we")
print(fruit)

print(names)
#sample
r1<-c(sample(500:899,5,replace=T))
r1
r2<-c(sample(1:7,5,replace=T))
r2
#Paste
office<-paste(c("India","USA"),11:16,sep="-")
print(office)

#Letter command
w=letters[1:4]
w

a=letters[c(2,4,5)]
a
b=LETTERS[c(2,4,5)]
b
x=letters[]
x
x[2:4]
x[-(2:25)]
#sort
num=c(3,6,1,35,532,-12)
sort=sort(num)
sort
sort=sort(num,decreasing=TRUE)
sort

char=c("ass","sfv","aar")
sortc=sort(char)
sortc

rank(num)

sqrt(num)

min(num)
max(num)
num^2
pow(num)
#
x=1:8
x[x%%2==0]

a=3
print(a%in%x)
#to save image
save.image("C:\\Users\\exam\\Desktop\\R\\class 2")
