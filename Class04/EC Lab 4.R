source("http://thegrantlab.org/misc/cdc.R")
View(cdc)
head(cdc$height)
tail(cdc$weight, 20) #To find the last 20 data for the Weight column.
plot(cdc$height, cdc$weight, xlab = "Height (inches)", ylab = "Weight (pounds)")
cor(cdc$height, cdc$weight)

#making Histograms 
hist(cdc$weight)
hist(cdc$height, xlab = "Height (inches)", main = "Histogram for Height")

#weight in Kilograms; height in Meters
weight_kg <- cdc$weight * 0.454
height_m <- cdc$height * 0.0254
BMI <- (weight_kg/height_m^2)
plot(cdc$height, BMI, xlab = "Height (inches)", ylab = "BMI")
cor(cdc$height, BMI)

#Finding OBESE data using BMI>30
obese <- BMI>=30
sum(obese)
#How much proportion (%) of obese people?
(sum(obese)/ length(BMI))*100
round((sum(obese)/ length(BMI))*100, 1)

#A subset of only the first 100:
height100 <- head(cdc$height, 100)
weight100 <- head(cdc$weight, 100)
plot(height100, weight100, xlab = "Height (inches)", ylab = "Weight (pounds)")

height100S <- cdc[1:100, ]$height
weight100S <- cdc[1:100, ]$weight
plot(height100S, weight100S, xlab = "Height (inches)", ylab = "Weight (pounds)")

#How many obese indv are male?
m <- cdc$gender=="m"
males <- cdc[cdc$gender=="m", ]
males
malesBMI <- ((males$weight * 0.454)/(males$height*0.0254)^2)
sum(malesBMI>=30)
