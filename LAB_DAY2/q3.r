price <- c(1,1,5,5,5,5,5,8,8,
           10,10,10,10,12,14,14,14,
           15,15,15,15,15,15,
           18,18,18,18,18)

# Sort data
price <- sort(price)

# Divide into 3 equal-frequency bins
bins <- split(price, cut(seq_along(price),
                         breaks = 3, labels = FALSE))

print(bins)

# Smoothing by bin means
print(lapply(bins, function(b) rep(mean(b), length(b))))

# Histogram
hist(price, main = "Electronics Prices",
     xlab = "Price", col = "lightgreen")
