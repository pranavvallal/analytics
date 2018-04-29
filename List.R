?list
v1 = 1:30
m1 = matrix(1:24,nrow = 6)
m1
(a1 = array(1:24, dim=c(4,3,2)))
df1= data.frame(rollno= c(1:5), sname= c(paste('S',1:5, sep = '-')))
df1                
class(v1); class(m1); class(a1); class(df1)                 
L1 =list(v1, m1, a1, df1)  #List  
L1
L1[1];L1[2]; L1[3]; L1[4]
(v2 = c('a','b'))
L2 = list(v2,L1)
L2
