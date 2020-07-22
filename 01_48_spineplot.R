
# main idea: creating spineplots
# width of bars = frequency of X
# height of bars = frequency of y

# Y must be a factor and is the dependent variable
spineplot(ChickWeight$weight, ChickWeight$Diet) # spineplot(x,y)

# interesting observations
# Height of bars indicates obs per diet. Diet 1 has more obs
# Width of bars indicates obs per weight. More chicks are weighed between 50 and 100

# or...

spineplot(Diet ~ weight, data = ChickWeight) # spineplot(y ~ x)

# bells and whistles

spineplot(Diet ~ weight, 
          data = ChickWeight,
          breaks = fivenum(ChickWeight$weight),
          col = c(5:8),
          xlab = "Chicken Weight",
          ylab = "Chicken Diet")

