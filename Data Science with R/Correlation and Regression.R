library(openintro)
library(ggplot2)

                  # Interpretation of Regression Models
data("textbooks")
textbooks
 #comparison of price of book at amazon and ucla
ggplot(textbooks, aes(x=amazNew, y= uclaNew))+geom_point()
ggplot(textbooks, aes(x=amazNew, y= uclaNew))+geom_point()+geom_smooth(method="lm", se=FALSE)
     #STRONG, POSTV RELTN
  # now to get the fitteed coef #slope and Intercept
 lm( uclaNew~amazNew, data= textbooks)
 
 #FITTING LINER MODEL
 # Linear model for weight as a function of height
 lm(wgt ~ hgt, data = bdims)
 
 # Linear model for SLG as a function of OBP
 lm(SLG ~ OBP, data = mlbBat10)
 
 # Log-linear model for body weight as a function of brain weight
 lm(log(BodyWt) ~ log(BrainWt), data = mammals)
 
 #Linear model object
 mod<-  lm( uclaNew~amazNew, data= textbooks)
class(mod)

mod

coef(mod)

summary(mod)

fitted.values(mod)

residuals(mod)

install.packages("broom")
library(broom)
augment(mod)

predict(mod) # predict() also return the fitted values for the existing data()

                        #Model Fit
























