# Here's how to sort a dataframe on two columns
# Here's a dataframe
myWeights <- data.frame(ChickWeight)

# Sort by one column
order_myweights <- myWeights[order(myWeights$weight), ]

# How to sort by two columns?
order_myweights <- myWeights[order(myWeights$weight, myWeights$Time), ]

# And...sort by three columns...
order_myweights <- myWeights[order(
  myWeights$weight, 
  myWeights$Time,
  myWeights$Chick), ]

# To reverse the order of a column use "-"
order_myweights <- myWeights[order(-myWeights$weight, myWeights$Time), ]
# notice that weight is descending, time is ascending

# This can also be done by column index
order_myweights <- myWeights[order(-myWeights[ , 1], myWeights[ , 2]), ]
