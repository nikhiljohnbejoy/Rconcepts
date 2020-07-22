# Description: Example file for Dataframes: cbind

# Main Idea: how to add columns to data.frames (or matrices)

# Need some data to play with
source("makeChickWeight.R") # builds a data.frame with ranked names

cbind_chicks_names <- cbind(ChickWeight[1:50,],chicknames)
cbind_chicks_names <- cbind(ChickWeight, chicknames) # oops. # of Rows must be equal

# data.frames: cbind --------------------------------------------------------
# column bind. Combine dataframes (or matrices or vectors) by columns
# cbind, unlike merge, does not attempt to match values between columns 
