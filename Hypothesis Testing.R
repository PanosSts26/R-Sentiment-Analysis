library(dplyr)
library(magrittr)
library(readxl)
exdata<- read_excel("Data.xlsx")
Reviews_df<-data.frame(exdata)
#mean
mean(Reviews_df$Length)
mean(Reviews_df$Ratings)
mean(Reviews_df$Positive)
mean(Reviews_df$Negative)
#variance.
var(GLC_df$GLC_partIV)
#standard deviation.
sd(GLC_df$GLC_partIV)

# ANOVA
res.aov <- aov(GLC_df$GLC_partII ~ GLC_df$GLC_L1,  data=GLC_df)

# "Opening" the ANOVA model object.
summary(res.aov)

# coefficients
coef(PosReg)  
coef(NegReg)

#regression
PosReg<-lm(Ratings ~ Positive, data=Reviews_df)
summary(PosReg)
NegReg<-lm(Ratings ~ Negative, data=Reviews_df)
summary(NegReg)
LengReg<-lm(Ratings~ Length, data = Reviews_df)
#plots
plot(Ratings ~ Positive, data = Reviews_df)
abline(PosReg) 
plot(Ratings~Negative, data=Reviews_df)
abline(NegReg)


