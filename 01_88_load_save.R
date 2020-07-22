
# Description: save and load a data structure

# scenario: 
# Sue runs a network of weather stations
# every day she generates a report showing the last two weeks of temperature
# the data is collected when she runs the report
# Only today's data is available from the weather station
# how does she save the previous two weeks?

# answer: save and load

# setup
todaysTemperature <- function() runif(1,0,1) * 100 # temperature simulator
dailyTemperature <- todaysTemperature()

# add a temperature to list
dailyTemperature <- append(dailyTemperature, todaysTemperature())

# save the list of temperatures
# rda is accepted for "r data" but isn't necessary
save(dailyTemperature, file = "dailyTemperatures.rda")

# delete the file (clear environment)
# rebuild the function
# load the data file
load(file = "dailyTemperatures.rda", verbose = TRUE)

# can also save the function
save(list = c("dailyTemperature", "todaysTemperature"), file = "dailyTemperatures.rda")

