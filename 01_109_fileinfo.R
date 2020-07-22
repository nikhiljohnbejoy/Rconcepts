# file.info is similar to file.access - but provides information about a file

file.access(".RData") # this should return 0 if this file is available. Otherwise setwd()

# Fill a dataframe with all file information
file.info.dataframe <- file.info(".RData")

# Just the first six columns
file.info(".RData", extra_cols = FALSE)

# Some shortcuts
file.info(".RData")[ , "mode"]
# ...Which is equivalent to...
file.mode(".RData")
# ...Other equivalents...
file.mtime(".RData") # file.info(".RData")[ , "mtime"]
file.size(".RData") # file.info(".RData")[ , "size"]

# Get information about all files in current directory
file.info.dataframe <- file.info(dir())

# What happens if you try file.info on a missing file?
file.info("notAFile") # returns lots of NA
