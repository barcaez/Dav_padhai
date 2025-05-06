# Install and load ggplot2
install.packages("ggplot2")
library(ggplot2)

# Load dataset
data(mtcars)

# Convert relevant columns to factor for categorical plots
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$gear <- as.factor(mtcars$gear)

# 1. Bar Plot: Count of cars by number of cylinders
ggplot(mtcars, aes(x = cyl)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Bar Plot of Cylinder Counts", x = "Cylinders", y = "Count")

# 2. Scatter Plot: mpg vs hp
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "tomato", size = 3) +
  labs(title = "Scatter Plot of MPG vs Horsepower", x = "Horsepower", y = "MPG")

# 3. Histogram: Distribution of mpg
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 2, fill = "skyblue", color = "black") +
  labs(title = "Histogram of MPG", x = "MPG", y = "Frequency")

# 4. Box Plot: MPG across cylinder groups
ggplot(mtcars, aes(x = cyl, y = mpg)) +
  geom_boxplot(fill = "orange") +
  labs(title = "Box Plot of MPG by Cylinder", x = "Cylinders", y = "MPG")

# 5. Violin Plot: MPG across gear groups
ggplot(mtcars, aes(x = gear, y = mpg)) +
  geom_violin(fill = "purple") +
  labs(title = "Violin Plot of MPG by Gears", x = "Gears", y = "MPG")
