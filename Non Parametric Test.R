#Non Parametric Test
#Kolmogorov-Smirnov test
ks.test(mtcars$disp,200)
mean(mtcars$disp)
ks.test(mtcars$disp,800)

#Applying K-s in two sample (it is non parametric equivalent for independent sample)
ks.test(mtcars$disp,mtcars$am)

#Mann Whitney Wilcoxan test for indepenent samples
wilcox.test(mpg~am,data=mtcars)

#Mann Whitney Wilcoxan test for dependent samples
library("MASS")
summary(anorexia)
#Filtering Records to whom Cont tratment was given
treat1=subset(anorexia,Treat=="Cont")
treat1

wilcox.test(treat1$Prewt,treat1$Postwt,paired = TRUE)

#Kruskal-Wallis Rank Sum test(two or more samples/groups) equivalent to Annova
kruskal.test(mtcars$mpg~mtcars$gear)
