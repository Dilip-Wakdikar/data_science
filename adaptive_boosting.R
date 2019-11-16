#adaptive boosting
inTrainingLocal<-createDataPartition(iris$Species,p=.85,list=F)
traininglocal<-iris[inTrainingLocal,]
testinglocal<-iris[-inTrainingLocal,]
model_boosting<-C5.0(traininglocal$Species~.,data=traininglocal,trials=10)
summary(model_boosting)
pred<-predict.C5.0(model_boosting,testinglocal[,-5])
a<-table(testinglocal$Species,pred)
sum(diag(a))/sum(a)
summary(model_boosting)
plot(model_boosting)
