points <- c(12, 15, 18, 20, 22, 24, 25, 27, 30, 85)

boxplot(points,
        main = "Tennis Players' Scores",
        ylab = "Points",
        col = "lightgreen")

# Identify outliers
boxplot.stats(points)$out
