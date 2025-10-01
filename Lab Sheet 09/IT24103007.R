getwd()
setwd("C://Users//HP//Desktop//IT24103007Lab_9")
x<-c(3,7,11,0,7,0,4,5,6,2)
t.test(x,mu=3)

weight <-c(17.6,20.6,22.2,15.3,20.9,21.0,18.9,18.9,18.2)
t.test(weight,mu=25,alternative="less")

res<-t.test(weight,mu=25,alternative="less")
res$statistic
res$p.value
res$conf.int




#exercise
y<-rnorm(25,mean=45,sd=2)
print(y)
t_test_result<-t.test(y,mu=46,alternative="less")
print(t_test_result)
