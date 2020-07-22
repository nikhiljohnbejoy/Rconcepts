# Description: split vs cut to set intervals

# cut is for numeric vectors
# split is for data frames

# create some data
data("ChickWeight")

# split chickweight into buckets by chick
byChick <- split(ChickWeight, ChickWeight$Chick)

# split chickweight into buckets by diet
byDiet <- split(ChickWeight, ChickWeight$Diet)

# create a vector with chickweights
Weights <- ChickWeight$weight
# then split weights into 4 buckets
split(Weights, 1:4)


# compare cut to split ----------------------------------------------------

numericVector <- runif(100, min = 1, max = 256 )
cut(numericVector, 4)
split(numericVector, 1:4)