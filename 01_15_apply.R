# Description: Example file for apply

# main idea: don't use FOR loops if you can APPLY

data("WorldPhones") # The number of telephones in various regions of the world (in thousands).

# example for loop
for(aCountry in 1:ncol(WorldPhones)) {
  print(mean(WorldPhones[aCountry, ]))
}


# instead of "for" loops, use "apply"

apply(WorldPhones,1,mean)
apply(WorldPhones,2,mean)


# there are many more apply-type functions
apropos(".apply")

# lapply: returns a list resulting from applying 
# a function to each element of original list
# lapply works best on lists
# asks: for each value in WorldPhones, Is this value greater than 10,000?
world.phone.list <- list(WorldPhones)
lapply(world.phone.list,function(x) {x>10000})
