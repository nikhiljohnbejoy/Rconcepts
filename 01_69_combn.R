# Description: find all possible combinations

# look at Code Clinic: R problem titled 8 queens.

# set up a collection of letters that combined, might spell CAT
rawcats <- c("a", "c", "t")
rep(rawcats, 3) 

# use combn to find all possible combinations
isCat <- combn(rep(rawcats,3), 3)

# There's a cat at column 48
isCat[ ,48]

# how many combinations are possible?
choose(length(rep(rawcats,3)), 3)

# also: look at expand.grid and permn for other approaches to this
