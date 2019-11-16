acc <- c()
for(i in 1:500){
  inTraininglocal<-createDataPartition(iris$Species,p=.85,list=F)
  training1<-iris[inTraininglocal,]
  testing1<-iris[-inTraininglocal,]
  fitfree<-C5.0(training1$Species~.,data=training1)
  pred<-predict.C5.0(fitfree,testing1[,-5])
  a<-table(testing1$Species,pred)
  acc<-c(acc,sum(diag(a))/sum(a))
}
summary(acc)
