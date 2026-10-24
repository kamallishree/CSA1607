data(mtcars)

x <- scale(mtcars[, c("mpg", "qsec")])

matplot(x, type = "l", lty = 1,
        col = c("blue", "red"),
        main = "MPG and QSEC",
        xlab = "Car Index",
        ylab = "Standardized Values")

legend("topright",
       legend = c("MPG", "QSEC"),
       col = c("blue", "red"), lty = 1)
