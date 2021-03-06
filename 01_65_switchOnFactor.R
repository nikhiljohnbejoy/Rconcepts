# switching against factors is a bit odd
# EXPR is factor POSITION, not name
bucketOfFruit <- factor(c("apple", "banana", "mango", "banana"))

unclass(bucketOfFruit) # switch against numeric values - not names

fruitColor <- function(x) {
  theColor <- switch (x,
          "red",
          "yellow",
          "green"
  )
  paste(x," is ", theColor)
}

fruitColor(bucketOfFruit[1])
fruitColor(bucketOfFruit[2])
fruitColor(bucketOfFruit[3])
fruitColor(bucketOfFruit[4])

# factorsToTest[4] == "banana" which is level 2 of factor. Confusing, no?
