# Load dataset
data(mtcars)

# Simple Linear Regression: mpg ~ wt
model_simple <- lm(mpg ~ wt, data = mtcars)

# Summary of the model
summary(model_simple)

# Plot the data with regression line
plot(mtcars$wt, mtcars$mpg, main = "MPG vs Weight",
     xlab = "Weight", ylab = "Miles Per Gallon", pch = 19)
abline(model_simple, col = "blue", lwd = 2)
