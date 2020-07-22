# Use "Andand" or "Oror" for efficient flow control.

# && is "and", but evaluates left to right. use for flow control
someFunction <- function() {
  print("someFunction was executed")
  return(TRUE)
}

# What happens depends on each value tested
if(FALSE && someFunction() ) { print("The if...then statement evaluated as TRUE") }
if(TRUE && someFunction() ) { print("The if...then statement evaluated as TRUE") }

# || is a bit trickier to understand
someFunction <- function() {
  print("someFunction was executed")
  return(FALSE) # returns FALSE
}

# Test a boolean value "oror" against a function that returns FALSE
if(FALSE || someFunction()) {print("The if...then statement evaluated as TRUE")}
if(TRUE || someFunction()) {print("The if...then statement evaluated as TRUE")}

