# 1. Choose or Download Data
data("mtcars")
head(mtcars)
str(mtcars)

# 2. Test Generic Functions
print(mtcars)
summary(mtcars)
plot(mtcars$mpg)

# 3. Explore S3 vs S4
s3_obj <- list(name = "Alyssa", age = 24, GPA = 2.32)
class(s3_obj) <- "student_s3"
print(s3_obj)
summary(s3_obj)
head(s3_obj)
str(s3_obj)
print.student_s3 <- function(x, ...) {
  cat("S3 Student Object\n")
  cat("Name:", x$name, "\n")
  cat("Age:", x$age, "\n")
  cat("GPA:", x$GPA, "\n")
}
print(s3_obj)

setClass("student_s4", slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Alyssa", age = 29, GPA = 2.32)
print(s4_obj)
summary(s4_obj)
str(s4_obj)
head(s4_obj)
setMethod(
  "show",
  "student_s4",
  function(object) {
    cat("S4 Student Object\n")
    cat("Name:", object@name, "\n")
    cat("Age:", object@age, "\n")
    cat("GPA:", object@GPA, "\n")
  }
)

show(s4_obj)
