# Description: base graphics: boxplot

#simple example
boxplot(mtcars$mpg)

# Comparing one value to another with alternative notation
boxplot(mpg ~ cyl, data = mtcars, col = "lightgray", varwidth = TRUE, 
        main = "mpg vs cylinders",
        ylab = "mpg",xlab = "cylinders")

# the numbers used to create the boxplot
fivenum(mtcars$mpg) 