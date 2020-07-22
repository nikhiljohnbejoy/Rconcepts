# stopifnot is good for testing multiple expressions for true or false

trueExpression <- TRUE
falseExpression <- FALSE
enoughBaskets <- function(fruits, baskets) {
  return(fruits <= baskets)
}

# stopifnot signals which was false
stopifnot(trueExpression, enoughBaskets(3,5), enoughBaskets(5,3))

# use to check validity of parameters in an expression
# throws an error condition. 
enoughBaskets <- function(fruits, baskets) {
  stopifnot(fruits <= baskets)
  # we can proceed with confidence that fruit will fit in baskets
}
enoughBaskets(3,5)
enoughBaskets(5,3)

# hint: try "options(error = recover)" to go to debugger