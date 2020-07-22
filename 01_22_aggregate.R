# Description: Example file for aggregate

# main idea: aggregate is R for SQL "group by"

# grab some data to work with
data("ChickWeight")

# let's say I want the median weight of each chick
# basic format
aggregate(ChickWeight$weight,  
          by=list(chkID = ChickWeight$Chick), 
          FUN=median)

# notice it isn't sorted

# use ~ notation
# ~ is for modeling. Left of ~ is "y". Right is model. so y ~ model
# in other words, left of ~ is the result. right of ~ are selectors
aggregate(weight ~ Chick, data=ChickWeight, median)

# list() behaves differently than "~". median needs numeric data
aggregate(weight ~ Chick + Diet, data=ChickWeight, median) # this works

