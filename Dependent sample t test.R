#dependent sample test
library("MASS")
summary(anorexia)
#Filtering Records to whom Cont tratment was given
treat1=subset(anorexia,Treat=="Cont")
treat1
#Null hypothesis: There is no significance difference due to the test
result1=t.test(treat1$Prewt,treat1$Postwt,paired = TRUE)
result1


