# Description: matplot - plot columns of matrices

# first create some sample matrix
matrix1 <- matrix(c(1:8,1:8), nrow = 8, ncol = 2 )
matrix2 <- matrix(sample(1:16, 16), nrow = 8, ncol = 2)

devAskNewPage(ask = FALSE) # turns off interactive

# then plot. Plots 1st column of 1st matrix against 1st column of 2nd matrix
matplot(matrix1, matrix2)
matplot(matrix1, matrix2, type = "l")
matplot(matrix1, matrix2, type = "ls") # other types: p, o, b, h, s
matplot(matrix1, matrix2, type = "ls", 
        lty = c(5,6), lwd = c(3,10), lend = c(.1,.3))

#adding a second line
matplot(matrix1, matrix2)
matlines(matrix(c(1:16), nrow = 8, ncol = 2),
         matrix(c(15:0), nrow = 8, ncol = 2))

