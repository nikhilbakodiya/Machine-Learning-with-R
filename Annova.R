#Applying Anova
install.packages("MASS")
library(MASS)
str(survey)
install.packages("moments")
library("moments")

newsurvey =na.omit(survey)
str(survey)
bartlett.test(survey$Wr.Hnd~survey$Clap)#homo var fulfilled

#Annova
annovaresult=aov(survey$Wr.Hnd~survey$Clap)
annovaresult
anova(annovaresult)

#Tukey , individual tests 
TukeyHSD(annovaresult)

#If homo var is not fulfilled, than annova 
bartlett.test(survey$Wr.Hnd~survey$Exer)
oneway.test(survey$Wr.Hnd~survey$Exer)
