# Find the upper or lower triangle of a matrix

# Let's build a matrix
testMatrix <- matrix(c(1, 3, 5, 7, 9,
                       3,20,12,13,14,
                       5,12,21,15,16,
                       7,13,15,22,17,
                       9,14,16,17,23),
                     nrow = 5)

testMatrix

# upper.tri and lower.tri returns which positions are in the upper or lower triangle
upper.tri(testMatrix)
lower.tri(testMatrix)

# How to use it
testMatrix[upper.tri(testMatrix)] <- 0
testMatrix

# Include the diag values
upper.tri(testMatrix, diag = FALSE) # default
upper.tri(testMatrix, diag = TRUE) # include diagonal
