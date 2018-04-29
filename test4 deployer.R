sales2= read.csv(file.choose())
str(sales2)
df= read.csv('./data/denco.csv')
df
sales= df
head(sales) #top six rows
str(sales)  #structure
class(sales)
dim(sales)
summary(sales)
names(sales)
tail(sales)
unique(sales$custname)
length(unique(sales$custname))
length(unique(sales$region))
 #dplyr------


names(sales)

library(dplyr)

df3 = sales %>% group_by(custname) %>% summarise(Revenue= sum(revenue)) %>% arrange(desc(Revenue))
df3
t1= table(sales$custname)
t1

sales %>% count(custname, sort = TRUE) %>% head(n=10)

sales %>% group_by(custname) %>%> summarise(n=n()) %>% arrange(desc(n)) %>% head(n= 10)

sales %>% group_by(partnum) %>% summarize(TotalMargin= sum(margin)) %>%
  arrange(desc(TotalMargin)) %>% head()

df4=sales %>% group_by(region) %>% summarise(Revenue= sum(revenue)) %>% arrange(desc(Revenue)) %>%head()
pie(x=df4$Revenue)
barplot(df4$Revenue, col = 1:3)

sales %>% filter(region=='01-East') %>% head()
sales %>% filter(revenue>= 7771000) %>% select(custname,revenue)
?select

sales[,1:2]

sales %>% sample_frac(.01)











sales %>% sample_n(10)

sales %>% filter(region=='01-East') %>% sample_frac(.003)
