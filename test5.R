Default
head(Default)
logr1 = glm(default  ~ student + balance + income, data=default, family='binomial')
summary(logr1)
logr1 = glm(default  ~ student + balance, data=default, family='binomial')
summary(logr1)
logr2 = glm(default ~ student + ,data=Default,family= 'Binomial')
logr2
ndata3 = Default[seq(1,nrow(Default),1000)]
ndata3
