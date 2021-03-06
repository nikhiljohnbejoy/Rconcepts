# logical operators - common to a lot of languages, but worth reviewing

# ! is "not"
!TRUE # equals false
!"apple" # oops ... must be a logical value
!2 # abs(numbers) > 0 are TRUE
!0

# & is "and"
TRUE & TRUE # equals true
TRUE & FALSE # equals false

firstVectorFalse <- c(FALSE, TRUE)
firstVectorTrue <- c(TRUE, FALSE)

firstVectorFalse & firstVectorFalse
firstVectorFalse & firstVectorTrue

# | is "or"
TRUE | TRUE # equals true
TRUE | FALSE # equals true

firstVectorFalse | firstVectorTrue

# xor is "exclusive or" - EITHER this OR this
xor(TRUE, FALSE ) # true 
xor(FALSE, TRUE ) # true
xor(TRUE, TRUE ) # false
xor(FALSE, FALSE ) # false

# && is "and", but evaluates left to right. use for flow control
# || is "or", but evaluates left to right. use for flow control
someFunction <- function() {
  print("this function ran")
  return(TRUE)
}


# what happens depends on each value tested
if(FALSE && someFunction() ) { print("I printed") }
if(TRUE && someFunction() ) { print("I printed") }

