#List
north=list("Delhi","Himachal")
south=list("Kerala",'banglore')
east=list("Orissa")
west=list("Rajasthan")

area=list(north,south,east,west)
area

#
newlist=list("red","white",c(12,34,56), FALSE, 3.4,11)
print(newlist)
#
area$north
area[[1]]
area[["north"]]

area[[1]][1]
#
matrix1=matrix(nrow=2,ncol=2,data=11:14, byrow=TRUE)
matrix2=matrix(nrow=2,ncol=2,data=12:15, byrow=TRUE)
matrix1
matrix2
matrixlist=list(matrix1,matrix2)
matrixlist

matrixlist[[2]][4]
# 
list1=list(1,2,3)
list2=list("sun","mon")

mergelist=c(list1,list2)

print(mergelist)

#
data=c("dulki","nikku","vennu","dulki","nikku","vennu")
data

print(is.factor(data))
print(is.vector(data))

fator_data=factor(data)
fator_data
