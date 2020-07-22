# Are you trying to find the diagonal of a matrix? 
# Use diag()

# Let's build a matrix
testMatrix <- matrix(c(1, 3, 5, 7, 9,
                       3,20,12,13,14,
                       5,12,21,15,16,
                       7,13,15,22,17,
                       9,14,16,17,23),
                     nrow = 5)
# Now...how to get the diagonal values?
diag(testMatrix)

# Other uses of diag

diag(nrow = 5) # Return an identity matrix nrow x nrow. Or ncol.

diag(TRUE, 3) # Identity matrix with diagonal of first value
diag(c(TRUE, FALSE, TRUE, FALSE)) # Creates a matrix with the vector as the diagonal
diag(1:5) # Creates a matrix with 1-5 through the diagonal


     