# Description: Histograms

# simple example
hist(ChickWeight$weight)

# changing the pattern of the histogram bars
hist(ChickWeight$weight, density = 30)

# Control where the histogram breaks occur
hist(ChickWeight$weight, density = 30, breaks = c(0,100,200,max(ChickWeight$weight)))

# Another example of controlling the breaks
hist(ChickWeight$weight, breaks = fivenum(ChickWeight$weight))