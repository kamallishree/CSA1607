# Read dataset
data <- read.csv("diabetes.csv")

# Scatterplot
plot(data$Age, data$BloodPressure,
     main = "Blood Pressure vs Age",
     xlab = "Age",
     ylab = "Blood Pressure",
     col = "blue",
     pch = 19)

# Create age groups
data$AgeGroup <- cut(data$Age,
                     breaks = c(0, 30, 40, 50, 60, Inf),
                     labels = c("Under 30", "31-40",
                                "41-50", "51-60", "Above 60"))

# Calculate average blood pressure
avg <- aggregate(BloodPressure ~ AgeGroup,
                 data = data, mean, na.rm = TRUE)

# Bar chart
barplot(avg$BloodPressure,
        names.arg = avg$AgeGroup,
        main = "Average Blood Pressure by Age Group",
        xlab = "Age Group",
        ylab = "Average Blood Pressure",
        col = "lightblue")
