euroDistances <- as.matrix(datasets::eurodist)

euroDistances
# The row names indicate the starting city
# The column names indicate the ending city

# Now I can see if any distances between two cities equals 460 km
which(euroDistances == 460) 

# What cities could I start in?
row(euroDistances) # as index
row(euroDistances, as.factor = TRUE) # named

# ...But which starting cities have a possibility of 460 miles
row(euroDistances, as.factor = TRUE)[which(euroDistances == 460)]
# ...And which ending cities are 460 miles from another city?
col(euroDistances, as.factor = TRUE)[which(euroDistances == 460)]

data.frame(START_HERE = row(euroDistances, as.factor = TRUE)[which(euroDistances == 460)],
           END_HERE = col(euroDistances, as.factor = TRUE)[which(euroDistances == 460)])

