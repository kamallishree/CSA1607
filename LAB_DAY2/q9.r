data(mtcars)

boxplot(mpg ~ factor(cyl), data = mtcars,
        main = "MPG vs Number of Cylinders",
        xlab = "Cylinders",
        ylab = "Miles per Gallon",
        col = "lightblue")
