#Assignment3
#jc2433

#Loading Required Packages
library(UsingR)
library(ggplot2)
#A

transactionData <- read.csv(file="/Users/jasneekchugh/Desktop/DS_NJIT/CS636-\ DA\ with\ R/Assignment/Assignment3/transactions.csv")
#1
 #Numerical data: Data that takes nurmerical values and for which arithmetic operations make sense
  #In transaction data, nurmerical variables are: payment_plan_days, plan_list_price, actual_amount_paid.
 #Categorical data: Qualitative data that is limited to number of distinct categories.
  #In transaction data, Categorical variables are: payment_method_id , is_auto_renew(0,1), is_cancel(0,1)

#2
 hist(transactionData$payment_plan_days)
 hist(transactionData$plan_list_price)
 hist(transactionData$actual_amount_paid)

 #3
 table(transactionData$payment_method_id)
 table(transactionData$is_auto_renew)
 table(transactionData$is_cancel)
 
#B
#2.4
head(central.park)
weather1<- table(central.park$WX)
weather1
weather2<- table(central.park$WX, exclude = FALSE)
weather2
  # Table 2 (weather2) is better because it shows the number of NAs as well present in the "WX" column.
  # So it gives more clearity of the data. 

#2.8

attach(npdb)
head(npdb)
state<- sort(table(npdb$state))
state[which.max(state)]
detach(npdb)
  #CA has the maximum malpractice awards i.e. 1566

#2.9
table(ID)
sort(table(ID))
  #the command table(ID) returns the frequency of each element in column ID. It's is interesting
  # because we can quickly see if there are any duplictes values in the column ID. Since there 
  # should be only one ID for each doctor. 

#2.10
data(MLBattend)
attach(MLBattend)
win =  wins[franchise == "NYA"]
names(win) = c(1969:2000)
detach(MLBattend)
barplot(win,xlab = "YEAR", ylab = "Wons", col="red")
?dotchart 

dotchart(win)

#2.16
 #1) It's a proportion so we divide it by the total number of elements in rivers dataset
length(rivers[rivers < 500])/length(rivers)
 #2)
length(rivers[rivers < mean(rivers)])/length(rivers)
 #3) We find quartile using the summary function. 0.75 is the third quartile
rivers_summary<-summary(rivers)
rivers_summary[5]

#2.23
summary(npdb)
mean(npdb$amount)
median(npdb$amount)
quantile(npdb$amount)
 # So from output of quantile(npdb$amount) we can say that percentile of mean lies between 50th and 75th percentile approx 74.85 percentile.
 #It might be because the data is right skewed and Mean is greater than Median.

#2.30
hist(bumpers,xlab = "Bumpers",col = "green",border = "red")
mean(bumpers)
median(bumpers)
sd(bumpers)
hist(firstchi,xlab = "firstchi",col = "green",border = "red")
mean(firstchi)
median(firstchi)
sd(firstchi)
hist(math,xlab = "math",col = "green",border = "red")
mean(math)
median(math)
sd(math)

#2.32
hist(pi2000, prob=TRUE, col = "green",border = "red")
#The above distribution looks flat as all digits are equal So we subtract 0.1. So that the bins for 0 and 1 do not gets combined, by using the argument breaks=0:10-.5. 
hist(pi2000,breaks=c(0:10,.5), prob=TRUE, col = "green",border = "red")



#2.34
DDT
hist(DDT, col = "grey",border = "red")
boxplot(DDT, col = "grey",border = "red") #the small circle point highlights the outlier in the data
sd(DDT)

#2.35
names(state.area) <-state.abb
length(state.area)
length(state.area[state.area < state.area['NJ']])/50*100 #percentage of states with area less than NJ
length(state.area[state.area < state.area['NY']])/50*100 #percentaage of states with area less than NY

hist(state.area)
state.area[state.area > 5e5]#outlier


#2.36
hist(nym.2002$time,xlab="Time",col = "grey",border = "red")
mean(nym.2002$time)
median(nym.2002$time)
#Mean is greater than median therefore, the data is right skewed and the tail of the histogram
#is towards right.

#2.39
#Histograms are very useful to understand the pattern of variability in the data.
hist(hall.fame$HR,xlab="HR", main="Historam of HR",col = "red") #Shape: Right Skewed
mean(hall.fame$HR)
median(hall.fame$HR)

hist(hall.fame$BA,xlab="BA", main="Historam of BA",col = "red")#Shape: Symmetric (Mean and Median are almost equal), Smooth curve
mean(hall.fame$BA)
median(hall.fame$BA)

hist(hall.fame$OBP,xlab="OBP", main="Historam of OBP",col = "red") #Shape: Symmetric (Mean and Median are almost equal), Smooth curve
mean(hall.fame$OBP)
median(hall.fame$OBP)
#2.41
x=rnorm(1000)
boxplot(x,range=1.5,main="Box plot with Range 1.5")
boxplot(x,range=0.5,main="Box plot with Range 0.5")
boxplot(x,range=1,main="Box plot with Range 1")
boxplot(x,range=2,main="Box plot with Range 2")
 #Boxplots whiskers are chosen with factor of 1.5 because, the width of the notches is proportional
 #to the IQR and inversely proportion to squareroot of the size of the sample.  The box plot has
 #equal whisker length of 1.5IQR for both whiskers.
 #Upper whisker- Above third quartile: Q3+1.5*IQR
 #Lower whisker- Below first quartile: Q1-1.5*IQR

#2.42
head(cfb)
par(mfrow=c(1,1))
Mode <- function(x) {
  uq <- unique(x)
  uq[which.max(tabulate(match(x, uq)))]
}
  #Age
hist(cfb$AGE,xlab="Age", col="blue")

Mode(cfb$AGE)#We can also see from the histogram that the bar of the histogram is at the peak.
mean(cfb$AGE)
median(cfb$AGE)
  #For Age, Mean is greater than the Median. Thefore, the data is skewed to the right. Tail
  #is also towards the right of the histogram.

 #EDUC
hist(cfb$EDUC,xlab="Educ",col="blue")
Mode(cfb$EDUC)
mean(cfb$EDUC)
median(cfb$EDUC)
 #For EdDUC, Mean and Median are almost the same. However, as per the histogram the data is skewed left
 #Tail of the histogram is on the left side.

 #NETWORTH
as.numeric(cfb$NETWORTH)
hist(cfb$NETWORTH,xlab="NetWorth",col="blue")
mean(cfb$NETWORTH)
median(cfb$NETWORTH)
Mode(cfb$NETWORTH)
   #we can see that the data is so much skewed to the right. So we can transform the NETWORTH
   #using the logarithmic function to improve the skewness.

 #SAVINGS
as.numeric(cfb$SAVING)
hist(cfb$SAVING,col="blue")
SAV<-log(cfb$SAVING+1)
hist(SAV,col="blue")
mean(SAV)
median(SAV)
Mode(SAV)#most of the people have savings of Zero and that is why mode is zero.
  #For SAVINGS, median is greater than mean, therefore data is skewed to left. 
  #Tail of the histogram is also towards left.


#2.43
summary(brightness)#it returns the useful summary like Min, Max, Median, of each column.
hist(brightness,col = "red")
mean(brightness)
median(brightness)
max(brightness)-min(brightness) #Range
#since median is greater than mean, therefore the histogram is skewed left. Although it almost looks
#symmetric and there is just slight difference between the mean and median
#Shape: Left skewed, single peak

#2.44
par(mfrow=c(1,2))
hist(lawsuits,main="Histogram of Lawsuits")
hist(log(lawsuits),main="Histogram of log(Lawsuits)")
boxplot(lawsuits,ylab="Lawsuits",main="Boxplot of Lawsuits")
boxplot(log(lawsuits),ylab="log(lawsuits)",main="Boxplot of log(Lawsuits)")


#2.45

hist(exec.pay,col = "red")#the data is very much skewed to the right side 
mean(exec.pay)
median(exec.pay)
transformed<-log(1+ exec.pay,10)
hist(transformed,col = "red")
mean(transformed)
median(transformed)
#after the transformation the data looks symmetric and the mean and the median of 
#the transformed data are also almost equal.
#Histogram of tranformed data is better because it looks symetric and distributed normally. 
#With tranformed histogram we get to see more clear bars for each.
#The mean and Median of tranformed data are almost equal.


