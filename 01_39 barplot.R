# Description: base::barplot

fiveValues <- fivenum(ChickWeight$weight) # just to see what we're working with

barplot(fiveValues) # the simplest of bar plots

barplot(height = fiveValues,
        names.arg = fivenum(ChickWeight$weight),
        horiz = TRUE,
        col = fiveValues,
        main = "Range for Chick Weights"
)
