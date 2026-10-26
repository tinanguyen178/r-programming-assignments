data("iris", package = "datasets")

head(iris)


# Base R Scatter Plot
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal Length vs. Petal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Petal Length (cm)",
     col = "lightpink",
     pch = 19)

# Base R Histogram
hist(iris$Sepal.Length,
     main = "Distribution of Sepal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Number of Flowers",
     col = "lightblue",
     border = "white")


library(lattice)

# Lattice conditional scatter plot
xyplot(Petal.Length ~ Sepal.Length | Species,
       data = iris,
       main = "Sepal vs. Petal Length by Species",
       xlab = "Sepal Length (cm)",
       ylab = "Petal Length (cm)",
       col = "green",
       pch = 19)


install.packages("ggplot2")
library(ggplot2)


# ggplot2 scatter plot with trend lines
ggplot(iris, aes(x = Sepal.Length,
                 y = Petal.Length,
                 color = Species)) +
  geom_point(size = 2) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Relationship Between Sepal and Petal Length",
       x = "Sepal Length (cm)",
       y = "Petal Length (cm)",
       color = "Flower Species") +
  theme_minimal()

