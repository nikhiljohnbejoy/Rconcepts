# Description: by instead of tapply

# by is like...
# tapply
# split, but with function applied to groups


chickweightbytime <- by(data = ChickWeight$weight, 
   INDICES = ChickWeight$Time, 
   FUN = max)

# split and tapply example -----------------------------------------------------------

# duplicating the above "by" example with split
splitgroups <- split(ChickWeight$weight, ChickWeight$Time)
lapply(splitgroups, max) # then use lapply against the elements of the list

# duplicating the above "by" example with tapply
tapply(ChickWeight$weight, ChickWeight$Time, max)
