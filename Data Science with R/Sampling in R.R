
-------------------------------------------------------------------------------------------- 
                              #SAMPLING IN R

library(openintro)
library(dplyr)

data("county")
head(county)

typeof(county)
table(county$state)
#remove DC

county_noDC<- county %>%
  filter(state !="District of Columbia") %>%
  droplevels()

table(county_noDC$state)

#to collect data only of 150 counties from over 300 counties in USA

#Simple random sample
county_srs<-county_noDC %>%
  sample_n(size=150)

glimpse(county_srs)
 ?sample_n

#state distribution of SRS counties
county_srs %>%
  group_by(state) %>%
  count()

# If we want to take sample of equal count of states in our sample, we use "Stratisfies Sampling"
# Eg, 3 sample per group
county_str<- county_noDC %>%
  group_by(state) %>%
sample_n(size=3)

glimpse(county_str)

county_str %>%
  group_by(state) %>%
  count()

####
us_regions
library(dplyr)
# Simple random sample: states_srs
states_srs <- us_regions%>%
  sample_n(size=8)

# Count states by region
states_srs %>%
  group_by(region)%>%
  count()

# Stratified sample
states_str <- us_regions %>%
  group_by(region) %>%
  sample_n(size=2)

# Count states by region
states_str %>%
  group_by(region)%>%
  count()

---------------------------------------------------------------------------------------------
                  #CASE STUDY
# Inspect evals
evals
glimpse(evals)

# Recode cls_students as cls_type
evals_fortified <- evals %>%
  mutate(
    cls_type = case_when(
      cls_students <= 18                      ~ "small",
      cls_students >= 19 & cls_students <= 59 ~ "midsize",
      cls_students >= 60                      ~ "large"
    )
  )

# Scatterplot of score vs. bty_avg
ggplot(evals, aes(y=score,x=bty_avg)) + geom_point()


  
  
  
  
  
  
  