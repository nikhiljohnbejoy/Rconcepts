
# Description: duplicated and unique

# refer back to the session on any_all for anyDuplicated()

bunchOLetters <- c(letters, "a", "d", "m")

duplicated(bunchOLetters) # shows which elements of a vector are duplicated.
duplicated(bunchOLetters, incomparables = "a") 
duplicated(bunchOLetters, fromLast = TRUE)

bunchOLetters[duplicated(bunchOLetters)]

# or conversely, unique
unique(bunchOLetters) # shows which elements of a vector are duplicated.
unique(bunchOLetters, incomparables = "a") 
unique(bunchOLetters, fromLast = TRUE)

