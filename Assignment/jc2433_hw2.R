#CS636- Homework 2
#Jasneek Singh Chugh
#jc2433

setwd("/Users/jasneekchugh/Desktop/Data\ Science\ NJIT/CS636-\ DA\ with\ R/Week4/")

#1-------------------------------------------------------------------------------------------
my_func<- function(x){
  if(x<1){
    fn<-(5/(x-1)^2)
    print(fn)
  }
  else if(x>1){
    fn<-(5/(x-1)^3)
    print(fn)
  }
  else if(x==1){
    fn<-2
    print(fn)
  }
  else {
    print("Nothing Matched")
  }

}
 #testing command
my_func(1)
my_func(10)
my_func(0.3)

#2-------------------------------------------------------------------------------------------
fib<-function(n){
  t1=0
  t2=1
  c=2
  if(n<=0){
    print("Enter a Positive Number")
  }
  else if( n==1){
    paste("nth value of Fibonacci Series is:", print(t2))
  }
  else if( n==2){
    paste("nth value of Fibonacci Series is:", print(t2))
  }
  else{
    while(c<=n){
    num=t1+t2
    t1=t2
    t2=num
    c=c+1
    } 
    paste("nth value of Fibonacci Series is:", print(num))
  }
}
 #testing command
fib(1)
fib(2)
fib(100)


#3-------------------------------------------------------------------------------------------
Merge<- function(S1,S2)
{
  seq=c(S1,S2)
  return(SORT(seq))
}
SORT<- function(x){
  for(i in 1:(length(x)-1)){
    for(j in (i+1):length(x)){
      if(x[i] > x[j]){ 
        x[c(i,j)] = x[c(j,i)] #if the value of i is greater than j, then we put i after j. sorting in increasing order
        
      }
    }
  }
  return(x)
}

S1=c(1,3,5,7,9)
S2=c(2,4,6,8,10)
Merge(S1,S2)

 #Testing command
Merge(seq(1,50,by=3),seq(2,30,by=2)) 

#4-------------------------------------------------------------------------------------------
Partition<- function(Pivot,Vect)
{
  list1=0
  list2=0
  j1=1
  j2=1
  for(i in 1:length(Vect))
  {
    if(Vect[i]<Pivot){
      list1[j2]=Vect[i]
      j2=j2+1
    }
    else if(Vect[i]>Pivot){
      list2[j1]=Vect[i]
      j1=j1+1
    }
  }
  list1<-c(list1,Pivot)
  list3<-list(list1,list2)
  return(list3)  
}

Pivot=6;
Vect = c(1, 5, 3, 7, 9, 6, 4, 2, 10, 8);
List=Partition(Pivot, Vect)
List

#testing command
Partition(50,sample(1:100,100,replace=FALSE))
          

