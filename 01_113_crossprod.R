# Calculate the cross product of two matrices with %*%

# Two simple matrices
MatrixOne <- matrix(1:4, nrow = 2)
MatrixTwo <- matrix(c(2,1,0,2), nrow = 2)

MatrixOne
MatrixTwo

# four ways to multiply matrices
MatrixOne * MatrixTwo # multiply values in vectors
MatrixOne %*% MatrixTwo # matrix multiplication
crossprod(MatrixOne, MatrixTwo) # equivalent to t(MatrixOne) %*% MatrixTwo
tcrossprod(MatrixOne, MatrixTwo) # equivalent to MatrixOne %*% t(MatrixTwo)

MatrixOne %*% MatrixTwo
# What is happening?
MatrixOne[ 1, 1 ] * MatrixTwo[ 1, 1 ] + MatrixOne[ 1, 2 ] * MatrixTwo[ 2, 1 ] # = 5
MatrixOne[ 1, 1 ] * MatrixTwo[ 1, 2 ] + MatrixOne[ 1, 2 ] * MatrixTwo[ 2, 2 ] # = 6
MatrixOne[ 2, 1 ] * MatrixTwo[ 1, 1 ] + MatrixOne[ 2, 2 ] * MatrixTwo[ 2, 1 ] # = 8
MatrixOne[ 2, 1 ] * MatrixTwo[ 1, 2 ] + MatrixOne[ 2, 2 ] * MatrixTwo[ 2, 2 ] # = 8

# Matrix multiplication with t(x) (transpose) built-in
crossprod(MatrixOne, MatrixTwo)

# What is crossprod actually doing?
# 1) Translate X matrix
t_matrixOne <- t(MatrixOne)
# 2) Multiply matrix
t_matrixOne[ 1, 1 ] * MatrixTwo[ 1, 1 ] + t_matrixOne[ 1, 2 ] * MatrixTwo[ 2, 1 ] # = 4
t_matrixOne[ 1, 1 ] * MatrixTwo[ 1, 2 ] + t_matrixOne[ 1, 2 ] * MatrixTwo[ 2, 2 ] # = 4
t_matrixOne[ 2, 1 ] * MatrixTwo[ 1, 1 ] + t_matrixOne[ 2, 2 ] * MatrixTwo[ 2, 1 ] # = 10
t_matrixOne[ 2, 1 ] * MatrixTwo[ 1, 2 ] + t_matrixOne[ 2, 2 ] * MatrixTwo[ 2, 2 ] # = 8

# tcrossprod translates the Y matrix
tcrossprod(MatrixOne, MatrixTwo)

