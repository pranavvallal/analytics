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
(rollno = 1:30)

(sname=paste('student',1:30,sep=''))
(gender = sample(c('M','F'), size=30, replace = T, prob = c(.7,.3)))
(marks= floor(runif(30,50,100)))
dfl= data.frame(rollno, sname, gender, marks)
head(dfl)
tail(dfl)
str(dfl)
class(dfl)
summary(dfl)

(rollno= 1:30)
dfl
dfl$gender
dfl[1:10,]
dfl[,c(2,4)]
dfl[marks>63,]
dfl[marks>63 | gender=='F',]
names(dfl) #names of columns
dim(dfl) #Dimensions
aggregate(dfl$marks, by=list(dfl$gender), FUN=mean)
df2 = aggregate(marks~ gender,data=dfl,FUN=max)
pie(x=df2$marks)
barplot(df2$marks, col = 1:2)
#using dplyr pa

#Factors-----, 
(grades = sample(c('A','B','C','D'), size=30, replace=T, prob=c(.3,.2,.4,.1)))
table(grades)
class(grades)
gradesF = factor(grades)
grades
gradesF
(gradesF1 = factor(grades, ordered=T))
(gradesF2 = factor(grades, ordered=T,levels = c('D','C','B','A')))


rollno= 1:3
sname= c('S1','S2','S3')
(sname=c(paste('S',1:3,sep='')))
df= data.frame(rollno,sname)
df
#str,dim,class,summary

str(df)
#filter
df$rollno
df$sname

rollno= 1:30
rollno
sname=c('Student1-xyz','Student2-xyz','Student3-xyz')
(sname=c(paste('Student-xyz',1:30,sep = '')))

(gender = sample(c('M','F'), size=30, replace = T, prob = c(.4,.6)))
?sample
?paste0
(age=floor(runif(30,21,45)))
(course = sample(c('Btech','Mtech','Phd'), size=30, replace=T, prob= c(.5,.3,.2)))
table(course)

(married=sample(c(TRUE,FALSE), replace = T, size = 30, prob = c(.1,.9)))
table(married)
df= data.frame(rollno,sname,age,course,gender,married)
df


#export to csv
write.csv(df, './data/pumba.csv', row.names = F)
