
# create two vectors for demonstration
# notice that "10" is in both vectors
vectA <- c(1:10)
vectB <- c(10:15)

# union - combine the vectors, remove duplicates
union(vectA,vectB)

# intersect - find the overlap
intersect(vectA,vectB)

# what is unique about vectA?
setdiff(vectA, vectB)

# what is unique about vectB?
setdiff(vectB,vectA)

