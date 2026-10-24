A <- c(76,35,47,64,95,66,89,36,84)
B <- c(51,56,84,60,59,70,63,66,50)

# Mean
mean(A)
mean(B)

# Median
median(A)
median(B)

# Range
diff(range(A))
diff(range(B))

# Boxplot
boxplot(A, B, names = c("Class A", "Class B"),
        main = "Class Performance",
        ylab = "Marks", col = c("lightblue", "lightgreen"))
