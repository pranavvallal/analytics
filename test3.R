#data structures

#vectors----
v1 = c(1,2,3,4,5)
class(v1)
?class
v2= c('A','B','C','D')
v3 =c(TRUE,FALSE,T, F)
class(v3)
v2[3]
v3[4]
v4=c(1,2,'A')
v4
v5= c('A',3,'B')
v5
v6=c('B','H',5)
v1[v1==4]=9
v1
set.seed(100)
v7= rnorm(100, mean = 60, sd=15)
v7
mean(v7)
sd(v7)
?rnorm
hist(v7)
hist(v7, breaks = 10, col =  1:1)
hist(v7,freq = F, col= 'blue', main = '',xlab='Marks',ylab = 'Density of Counts')
lines(density(v7),col='red',lty=5,lwd=3)
title(main = 'PUMBA',sub='MBA')

#Matrix-------
length(100:125)
m1 =matrix(100:125, nrow =2,byrow = T)
m1
m2=matrix(c(100:123), ncol = 4, byrow = T)
m2[1,]
m2[,3]
m2[c(1,2),c(3,4)] #2 & 6th row, 1st & 4rth col
colSums(m2)
colMeans(m2)
rowSums(m2)
rowMeans(m2)

#Array-----
length(100:123)
(a1 = array(100:123, dim=c(4,3,2)))
4*3*2
a1
(loc= paste('loc',1:4,sep='-'))
(product=paste('p',1:3,sep='@')) 
(coy=paste('coy',1:2,sep='%'))
dimnames(a1)=list(loc,product,coy)
a1  
sum(a1)
apply(a1,1,sum)
apply(a1,2,sum)
?array

#Data frame----

