
# simple example of a pie chart
pie(table(ChickWeight$Diet))

# same pie chart with labeled segments
pie(table(ChickWeight$Diet), 
    labels = c("horsebean", "linseed", "soybean", "sunflower"))


# same pie chart, labeled, and with gradients instead of colors
pie(table(ChickWeight$Diet), 
    labels = c("horsebean", "linseed", "soybean", "sunflower"),
    density = 10*1:4,
    angle = 100*1:4)
