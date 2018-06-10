#1
add2<-function(x,y){
   x+y
 }
add2(4,8)
#2
above <-function(x,n=10){
     print(x[x>n])
 }
above(c(5,9,7,1,17))
above(c(5,9,7,17),6)
#3
my_ifelse<-function(x,exp,n){
     if (exp=="<") y<-x[x<n]
     else if (exp==">") y<-x[x>n]
     else if (exp=="<=") y<-x[x<=n]
     else if (exp==">=") y<-x[x>=n]
     else if (exp=="==") y<-x[x==n]
     else y<-x
     y
 }
my_ifelse(c(2,5,6,3,4,9,11,6,2,3,4), "<",6)
my_ifelse(c(2,5,6,3,4,9,11,6,2,3,4), ">",6)
my_ifelse(c(2,5,6,3,4,9,11,6,2,3,4), "<=",6)
my_ifelse(c(2,5,6,3,4,9,11,6,2,3,4), ">=",6)
my_ifelse(c(2,5,6,3,4,9,11,6,2,3,4), "==",6)
#4
columnmean<-function(x,removeNA=TRUE){
     for(i in seq_len(ncol(x))){
         print(mean(x[,i],trim=0,na.rm=removeNA))
     }
 }
mat_na=matrix(c(1,3,NA,7),2,2)
mat_na
columnmean(mat_na,FALSE)

