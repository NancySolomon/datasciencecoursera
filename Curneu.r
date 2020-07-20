install.packages(pacman)
install.packages("pastecs")
pacman::p_load(pacman,rio)
pacman::p_load(pacman, psych)

te_data<-import("P:/R/Pima.te.csv")
tr_data<-import("P:/R/Pima.tr.csv")
View(tr_data)
summary(tr_data)
hist(tr_data$bp,main="Distribution of bp",xlab="bloodpressure")
hist(tr_data$skin,main="Distribution of skin thickness",xlab="skinthickness")
hist(tr_data$bmi,main="Distribution of BMI",xlab="BMI",),
plot(tr_data$glu,tr_data$ped,main="Insulin Vs Diabetes Pedigree",xlab="insulin",ylab="Diabetes pedigree function")
plot(tr_data$age,tr_data$glu,main="Age Vs Glucose",xlab="Age",ylab="Glucose")
plot(tr_data$npreg,tr_data$age,main="Pregnancies Vs Age",xlab="Pregnancies",ylab="Age")
var1=tr_data[c(3,4,6,7,8)]
y1=var1[,c("glu","bp","bmi","ped","age")]
pre=glm(formula=age~glu+bp+bmi+ped,data=y1)

x1=var1(c(1:4))
x2=var1[,5]
y1=glm.fit(x1,x2)
predict(pre,te_data)
