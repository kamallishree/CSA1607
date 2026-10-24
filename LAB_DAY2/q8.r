library(MASS)
data(water)

# Scatterplot
plot(water$hardness, water$mortality,
     main = "Mortality vs Hardness",
     xlab = "Hardness",
     ylab = "Mortality",
     pch = 19)

# Linear regression
model <- lm(mortality ~ hardness, data = water)
abline(model, col = "red")

# Display model
summary(model)

# Predict mortality for hardness = 88
predict(model, data.frame(hardness = 88))
