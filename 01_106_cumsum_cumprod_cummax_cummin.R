# Cumulative operations: sum, product, minimum, and maximum

# Simple sum
sum(1:3)

# Cumulative summation
cumsum(1:3) # 1 + 2 + 3 = 6

cumsum(1,2,3) # Nope. has to be one argument

cumsum(c(1,2,3,NA,4)) # NA interrupts the sum


# Cumprod just like cumsum
cumprod(3:5) # 3 * 1 = 3. Then 3 * 4 = 12. Then 3 * 4 * 5 = 60

# Cummin and Cummax behave as expected
cummin(1:3) # min(1,1). min(1,2). min(1,2,3)
cummax(1:3) # max(1,1). max(1,2). max(1,2,3)

cummax(c(1:3,2)) # max(1,1). max(1,2). max(1,2,3). max(1,2,3,2)
cummax(c(1:3,NA,2)) # NA prohibits further evaluation

# A plot to see the relationship
myVector <- 1:20
myVectorcumSum <- cumsum(myVector)
randomMyVector <- sample(myVector,length(myVector) )

plot(myVectorcumSum, type = "l")
lines(cummax(randomMyVector))
points(myVector)
text(x = length(myVector), y = c(max(myVector),max(myVectorcumSum)), 
     labels = c("cummax", "cumsum"), 
     adj = c(1,0))
