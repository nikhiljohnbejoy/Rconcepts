# Description: Example file for mean, colMean, & rowMean

# main idea: specialty functions vs apply - speed and clarity of code

myMatrix <- matrix(1:30,nrow = 6) # need some data

# calculating mean with apply -------------------------------------------------------
apply(myMatrix,1,mean) # equivalent of rowMeans(I.am.a.matrix)
apply(myMatrix,2,mean) # equivalent of colMeans(I.am.a.matrix)

# calculating mean with rowMeans ------------------------------------------
rowMeans(myMatrix) # means of all rows
colMeans(myMatrix) # means of all columns



