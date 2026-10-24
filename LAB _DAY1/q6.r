# Given values
age <- 35
min_age <- 18
max_age <- 60
mean_age <- 35.6
sd_age <- 12.94

# 1. Min-Max Normalization
minmax <- (age - min_age) / (max_age - min_age)
print(minmax)

# 2. Z-Score Normalization
zscore <- (age - mean_age) / sd_age
print(zscore)

# 3. Decimal Scaling Normalization
decimal <- age / 100
print(decimal)
