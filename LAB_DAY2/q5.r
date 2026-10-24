x <- c(200, 300, 400, 600, 1000)

normalized <- (x - min(x)) / (max(x) - min(x))
print(normalized)
