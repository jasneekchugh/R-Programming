#R function to find Outliers
findOutlier <- function(X) { 
  qt <- quantile(X) #Quantile function returns the 5 number summary. 
  IQR = qt[[4]]-qt[[2]] #it takes the 4th element (Q3) and 2nd element (Q2) returned from quantile function
  left_endpoint <- qt[[2]]-1.5*IQR
  right_endpoint <- qt[[4]]+1.5*IQR
  outliers<-c() # created an empty vector name "outlier", which will hold the outlier in the data set
  n <- 1
  for (i in 1:length(X)){
     if (X[i] > right_endpoint) {
      outliers[n]<-X[i]
      n <- n+1
       }
    if (X[i] < left_endpoint) {
       outliers[n]<-X[i]
       n <- n+1
       }
  }
 if (is.null(X)){
  result<- "No Outliers Found"
 }else {
  result<-outliers
 }
return(result)
  
  }

#Example
X<-c( 1,3,3,4,5,5,6,10,20)
findOutlier(X)

