#Task 1
data("mtcars")

head(mtcars)

str(mtcars)

class(mtcars)
typeof



# Task 2
print(head(mtcars))

summary(mtcars)

plot(mtcars$wt, mtcars$mpg,
     main = "Car Weight vs. Miles Per Gallon",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles Per Gallon",
     col = "lightblue",
     pch = 19)

class(mtcars)


# Task 3: Create an S3 object
s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)

# Assign a class
class(s3_obj) <- "student_s3"

# Check the class
class(s3_obj)

# Create a print method
print.student_s3 <- function(x, ...) {
  cat("Student Name:", x$name, "\n")
  cat("Age:", x$age, "\n")
  cat("GPA:", x$GPA, "\n")
}

# Test the print method
print(s3_obj)

# Check if it is an S4 object
isS4(s3_obj)



# Task 4: Create an S4 object
setClass("student_s4",
         slots = c(name = "character",
                   age = "numeric",
                   GPA = "numeric"))

# Create an S4 object
s4_obj <- new("student_s4",
              name = "Myself",
              age = 29,
              GPA = 3.5)

# Check the class
class(s4_obj)

# Create a show method
setMethod("show", "student_s4",
          function(object) {
            cat("Student Name:", object@name, "\n")
            cat("Age:", object@age, "\n")
            cat("GPA:", object@GPA, "\n")
          })

# Test the method
show(s4_obj)

# Check if it is an S4 object
isS4(s4_obj)

