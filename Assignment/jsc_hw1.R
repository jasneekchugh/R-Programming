#CS636- Data Analytics with R
#Homework- 1
#Jasneek Singh Chugh (jc2433)
-------------------------------------------------------------------------------
#1.20
islands
sort(islands, decreasing=TRUE)[1:7]

-------------------------------------------------------------------------------
        
#1.21

primes
length(primes) #To check how many prime numbers are there.
primes[primes<=100]
length(primes[primes<=100]) # prime numbers in range of 0 to 100.
length(primes[primes>100 & primes<=1000]) # prime numbers in range of 100 to 1000.

-------------------------------------------------------------------------------
#1.22
 #1
primes
length(primes) #length of orignal data set is 304.
primes[-1]# It returns all the elements expect the 1st element, in Prime dataset.
length(primes[-1]) #length becomes 303, as 1st element is removed from the Prime dataset.

 #2
n<-length(primes)# we are assigning the last element of primes dataset to variable 'n'.
primes[-n] #last element from the dataset i.e 304 is removed from the dataset
length(primes[-n]) #303 gets returned, as last element at position 304 is removed from the primes dataset

 #3
#Twin Prime number is a prime number with a difference of two (n, n+2)
primes[-1]-primes[-n] # it returns the difference between the n,(n-1)th element
twin_prime<-primes[-1]-primes[-n]==2 #To check which values have difference of 2. (twin pair prime pair have difference of 2)
sum(twin_prime) #return the count of twin prime pair out of 304 elements in prime dataset

-------------------------------------------------------------------------------

#1.23
treering
 #1.
length(treering) #number of observations

 #2
min(treering)#smallest observation

 #3
max(treering)#maximum obseervation

 #4
sum(treering>1.50)#number of observations greater than 1.5

-------------------------------------------------------------------------------

#1.24
#1        
mandms 
?which()
which(mandms==0, arr.ind = TRUE)

#2
subset(mandms,mandms[,1]==mandms[,2] & mandms[,2]==mandms[,3] & mandms[,3]==mandms[,4]
       & mandms[,4]==mandms[,5] & mandms[,5]==mandms[,6])
#comparing the value of each element

#3
mandms
a1<-colSums(mandms)
a1
a1max<-max(a1)
a1==a1max
which(a1==a1max)

-------------------------------------------------------------------------------

#1.25
#data(nym.2002, package="UsingR")
nym.2002
 #1.
length(nym.2002$time)#count of times stored under time col in nym.2002 dataset

 #2.
typeof(nym.2002$time)
time_min<-min(nym.2002$time)
round(time_min) #in minutes
time_min<-paste(time_min %/% 60 , round(time_min %% 60) , sep = ":") #in hours

 #3.
time_max<- max(nym.2002$time)
round(time_max) #in minutes
time_max<-paste(time_max %/% 60 , round(time_max %% 60) , sep = ":") #max time in hours

-------------------------------------------------------------------------------
 
#1.26
rivers
max(rivers) #longest river
min(rivers)#smallest river

-------------------------------------------------------------------------------
        
#1.27
#data ("uspop")
uspop
 #1
names(uspop)
seq(uspop)
? seq()
year_names<-seq(from= 1790,to= 1970,by= (1970-1790)/(length(uspop)-1)) #got the Year names and assigned to var 'year_names'
names(uspop)<-year_names
uspop#returns the dataset having year_names for each value in the dataset.

 #2
? diff()
uspop
diff(uspop)

max(diff(uspop)) #max inter decade difference
which.max(diff(uspop))#gives the position at which the diferrence is highest
uspop[c(which.max(diff(uspop)),which.max(diff(uspop))+1 )]# retunr the two decades whose inter diff is max.

 #3
uspop
#It can be seen from the output returned from the above line that the
#difference was increasing constantly from 1790 until 1970. The reason can be 
#there might be a lot of immigrants that have moved to that country because of increasing country development or economy.





