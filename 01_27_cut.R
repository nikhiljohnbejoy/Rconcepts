# Description: use cut to set intervals

# create a numeric vector with 100 random uniform values between 1 and 256
numericVector <- runif(100, min = 1, max = 256 )

# cut the vector into 3 buckets
cut(numericVector, 3)

# cut the vector into 3 buckets labeled low, med, and high
cut(numericVector, 3, labels = c("low","med","high"))

# cut the vector into 3 buckets labeled 1, 2, and 3
cut(numericVector, 3, labels = FALSE)

# cut the vector into buckets with these breakpoints
cut(numericVector,breaks = c(1,100,200,256))