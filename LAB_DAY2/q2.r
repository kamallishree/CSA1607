x <- c(18,18,18,20,20,20,20,20,20,20,21,21,
       21,21,25,25,25,25,25,28,28,30,30,30)

# Equal-frequency partitioning into 3 bins
bins <- split(sort(x), rep(1:3, each = 8))
print(bins)

# Smoothing by bin means
means <- lapply(bins, function(b) rep(mean(b), length(b)))
print(means)

# Smoothing by bin boundaries
smooth <- function(b) {
  sapply(b, function(v) {
    boundaries <- range(b)
    if (abs(v - boundaries[1]) <= abs(v - boundaries[2]))
      boundaries[1]
    else
      boundaries[2]
  })
}

boundary <- lapply(bins, smooth)
print(boundary)

# Histogram
hist(x, main = "Histogram of Data",
     xlab = "Values", col = "lightblue")
