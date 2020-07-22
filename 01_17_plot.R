# Description: Example file for plot

# main idea: a quick overview of plotting in R

data("ChickWeight")

# adding another line to a plot
plot(ChickWeight$Time,ChickWeight$weight,
     type = "l",
     main = "plotting weight")
lines(c(1,20),c(350,50),
      col="red") # lines(c(x1-value,x2-value),c(y1-value,y2-value))

