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
library(broom)
possum
mod_possum<-lm(totalL~tailL, data=possum)
mod_possum %>%
  augment() %>%
  summarize(SSE=sum(.resid^2), SSE_also= (n()-1)*var(.resid))

summary(mod_possum) # it also shows the residual standard error

# View summary of model
summary(mod)

# Compute the mean of the residuals
mean(residuals(mod))

# Compute RMSE
sqrt(sum(residuals(mod)^2) / df.residual(mod))

#The bdims_tidy data frame is the result of augment()-ing 
#the bdims data frame with the mod for wgt as a function of hgt.

# View model summary
summary(mod)

# Compute R-squared
bdims_tidy %>%
  summarize(var_y = var(wgt), var_e = var(.resid)) %>%
  mutate(R_squared = 1 - var_e / var_y)

# Compute SSE for null model
mod_null %>%
  summarize(SSE = sum(.resid^2))

# Compute SSE for regression model
mod_hgt %>%
  summarize(SSE = sum(.resid^2))

# INFLUENCE AND LEVERAGE
#The leverage of an observation in a regression model is defined entirely in terms of the distance of that 
#observation from the mean of the explanatory variable. That is, observations close to the mean of the explanatory 
#variable have low leverage, while observations far from the mean of the explanatory variable have high leverage.

# Rank points of high leverage
mod %>%
  augment() %>%
  arrange(desc(.hat)) %>%
  head()

#Influential points are likely to have high leverage and deviate from the general relationship between the two variables. We measure 
#influence using Cook's distance which incorporates both the leverage and residual of each observation.
# Rank influential points
mod %>%
  augment() %>%
  arrange(desc(.cooksd)) %>%
  head()
# Create nontrivial_players
nontrivial_players <- mlbBat10 %>%
  filter(AB >= 10, OBP < 0.5)

# Fit model to new data
mod_cleaner <- lm(SLG ~ OBP, data = nontrivial_players)

# View model summary
summary(mod_cleaner)

# Visualize new model
ggplot(data = nontrivial_players, aes(x = OBP, y = SLG)) +
  geom_point() + 
  geom_smooth(method = "lm")

# Rank high leverage points

mod %>%
  augment() %>%
  arrange(desc(.hat),.cooksd) %>%
  head()



























