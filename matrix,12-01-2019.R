M2=matrix(c('a','a','b','c','b','a'), nrow=2,ncol=3,byrow=TRUE)
M3=matrix(17:24,nrow=2,ncol=4)
m4=matrix(c('a','a','b','c','b','a'), nrow=2,ncol=3)

#
productnames=c('pro1','pro2','pro3','pro4')
salesname=c('sale1','sale2','sale3')
z=matrix(c(1:12),nrow=4,byrow=TRUE,dimnames=list(productnames,salesname))
print(z)

#
a=1:6
b=2:7
x=cbind(a,b)
print(x)
y=rbind(a,b)
print(y)
#
print(z[2,3])
print(z[4,])
print(z[2:3,])
#
a%*%b
a*b
#Transpose
t(x)
#Crossprod(below two are equivalent)
crossprod(x)
t(x)%*%x
#solve, eigen
solve(x)
eigen(x)
#
newarray=array(c('India','USA'),dim=c(3,3,2))
print(newarray)

vec1=c(1,2,3)
vec2=c(0,9,8,7,6,5)
newarray2=array(c(vec1,vec2), dim=c(3,3,2))
print(newarray2)
#
cname=c('c1','c2','c3')
rname=c('r1','r2','r3')
mname=c('Matrix1','Matrix2')

new3=array(c(vec1,vec2),dim=c(3,3,2),dimnames=list(rname,cname,mname))
new3
#
print(newarray2[1,,2])
print(newarray2[,1,1])
#
result=apply(newarray2,c(1),sum)
print(result)

result2=apply(newarray2,c(2),sum)
print(result2)

result3=apply(newarray2,c(3),sum)
print(result3)

result4=apply(newarray2,c(1),mean)
print(result4)
