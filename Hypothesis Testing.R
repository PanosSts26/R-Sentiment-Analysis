library(dplyr)
library(magrittr)
library(readxl)
exdata<- read_excel("Data.xlsx")
Reviews_df<-data.frame(exdata)

#range
range(Reviews_df$Length)
range(Reviews_df$Ratings)
range(Reviews_df$Positive)
range(Reviews_df$Negative)
range(Reviews_df$Difference)

#mean
mean(Reviews_df$Length)
mean(Reviews_df$Ratings)
mean(Reviews_df$Positive)
mean(Reviews_df$Negative)
mean(Reviews_df$Difference)

#standard deviation.
sd(Reviews_df$Length)
sd(Reviews_df$Ratings)
sd(Reviews_df$Positive)
sd(Reviews_df$Negative)
sd(Reviews_df$Difference)


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


