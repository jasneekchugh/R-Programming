install.packages("ISwR")
yes
library("ISwR")

#1.1
#1
1 +2*(3+4)
#2
4^3 + 3^(2+1)

#3
sqrt((4+3)*(2+1))
#4
((1+2)/(3+4))^2

#1.2
#1 
(2+3)-4
#2
2+ (3*4)
#3
(2/3)/4
#4
2^(3^4)

#1.3
(1+ (2* (3^4)))/ ((5/6)-7)

#1.4
(0.25-0.2)/ (sqrt(0.2*(1-0.2)/100))

#1.5
a<-2
b<-3
c<-4
d<-5
abcd<-a*b*c*d
abcd


#1.6
rivers
length(rivers)
rivers[141]

#1.7
install.packages("UsingR")
YES
library("UsingR")
exec.pay
max(exec.pay)

#1.8
min(exec.pay)
mean(exec.pay)
max(exec.pay)

#1.9 
#When trim parameter is supplied,the values in the vector get sorted 
#and then the required numbers of observations are dropped from calculating the mean.
exec.pay
mean(exec.pay)
mean(exec.pay, trim=0.10) #trim=0.10, means 10 values from each end will be dropped from calculating the mean.

#1.10
data(Orange)
Orange
names(Orange)

#1.11
Orange
mean(Orange$age)

#1.12
max(Orange$circumference)

#1.18
x<- c(1,3,5,7,9)
y<-c(2,3,5,7,11,13)

x+1

y*2

length(x)
length(y)

x+y

sum(x>5) #it will sum the number of elements >5
sum(x[x>5]) #it will sum the value of elements >5

y[3]
y[-3]

y[x]

y[y>=7]

#1.19
"11"<"8"
11<8

"ABCDE"=="ABCDE"

"ABCDE"<"abcde"




