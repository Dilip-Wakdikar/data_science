#save data set in var
car_dataset <- read.csv("C:\\Users\\Megha\\Desktop\\Toyoto_Corrola.csv")
tc <- car_dataset[-81,3:11]
pairs(car_dataset[-81,3:11])
cor(car_dataset[,3:11])
model.car <- lm(Price~Age_08_04+KM+HP+cc+Doors+Gears+Weight,data = car_dataset)
summary(model.car)
plot(model.car)
residualPlots(model.car)
avPlots(model.car)
id1 <- boxplot.stats(model.car)
qqPlot(model.car)
influenceIndexPlot(model.car)
vif(model.car)
