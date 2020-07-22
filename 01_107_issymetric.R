# Is a matrix symmetrical?

testMatrix <- matrix(1:4, nrow = 2)
testMatrix
isSymmetric(testMatrix) # false

testMatrix <- matrix(c(0,1,1,0), nrow = 2)
testMatrix
isSymmetric(testMatrix) # true

# A more sophisticated example
testMatrix <- matrix(c(1, 3, 5, 7, 9,
                       3,20,12,13,14,
                       5,12,21,15,16,
                       7,13,15,22,17,
                       9,14,16,17,23
                       ),
                     nrow = 5)
isSymmetric(testMatrix) # true

# Does isSymmetric check for row and column names?
testMatrix <- matrix(c(0,1,1,0), nrow = 2, dimnames = list(c("orange", "apple"), c("fig", "banana")))
isSymmetric(testMatrix) # false because row/column names don't match
testMatrix <- matrix(c(0,1,1,0), nrow = 2, dimnames = list(c("orange", "apple"), c("orange", "apple")))
isSymmetric(testMatrix) 



