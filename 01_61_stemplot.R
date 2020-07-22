# Description: stem plots

sample1 <- rnorm(100, mean = 10, sd = 3) # creates a normal distribution (bell curve)

sample1 # difficult to parse this data

plot(sample1) # doesn't clearly indicate anything

stem(sample1) # demonstrates a normal curve

stem(sample1, scale = 2)
stem(sample1, atom = 1e-08)
