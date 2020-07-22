
# colors() returns a vector of color names.
colors()
colors()[1:10]

# easiest way to get colors ... colorRampPalette
mycolorpal <- colorRampPalette(c(colors()[1:10]))

mycolorpal(10)

hist(ChickWeight$weight, col = mycolorpal(10))
