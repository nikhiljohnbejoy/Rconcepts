
# create two vectors to demonstrate
vectA <- c(1:10)
vectB <- c(10:15)

# is vectA == vectB ?
setequal(vectA, vectB) 

# what parts of vectA are in vectB?
is.element(vectA, vectB) 

# what parts of vectB are in vectA?
is.element(vectB, vectA)

# alternative notation for is.element(vectA, vectB)
vectA %in% vectB
