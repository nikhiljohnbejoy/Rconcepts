# Description: %<-% tuples via zeallot

install.packages("zeallot")
library(zeallot)

# similar to python's ability to : x,y = 1,2. x = 1. y = 2

c(firstVar, secondVar) %<-% c(1,2)

c(firstVar, secondVar) %<-% c("a string",2) # both values are assigned as strings

# break data frames into vectors
c(NewWeight, newTime, newChick, newDiet) %<-% ChickWeight

# return multiple values from a function
myFunction <- function() { return(c(2,3))}
c(firstVar, secondVar) %<-% myFunction()

# unlist a list
mylist <- list(bob = "red", bill = "blue", june = list("orange", "maroon"))
c(ThingOne, ThingTwo, ThingThree) %<-% mylist

# plus much more. Reference ?`zeallot-package`
