# Description: conditional density plot

# create some data to work with
data("ChickWeight")

# given a certain amount of time, how much should a chick weigh?

# create ThreeWeights because conditional density plots require a factor
ThreeWeights <- cut(ChickWeight$weight, 3, labels = c(34, 148, 260))

# create the plot
cdplot(ChickWeight$Time, ThreeWeights)

# add meaning to the plot
cdplot(ChickWeight$Time, ThreeWeights,
       main = "How much should a chick weigh?",
       ylab = "Probable Weight",
       xlab = "Days"
)

# alternative notation
cdplot(factor(weight) ~ Time, data = ChickWeight)

# add meaning to the alternative notation
cdplot(factor(cut(weight, 6, labels = 1:6 * 62)) ~ Time, 
       data = ChickWeight,
       main = "How much should a chick weigh?",
       ylab = "Weight",
       xlab = "Days"
)