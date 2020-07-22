# Description: Conditional Plots

# use conditional plots to graph relationships across conditionals

# Simple example
# ~ is "against"
# | is "break by (conditional)"
coplot(ChickWeight$weight ~ ChickWeight$Time | ChickWeight$Diet)

# alternative notation using data
coplot(weight ~ Time | Diet, data = ChickWeight)

# controlling the layout
coplot(weight ~ Time | Diet, data = ChickWeight, columns = 4)

# using panel to control what is graphed in each panel
coplot(weight ~ Time | Diet, data = ChickWeight, 
       panel = function(x,y,...) { abline(lm(y ~ x)) })

# further explanations:
# http://geog.uoregon.edu/GeogR/topics/coplots.html