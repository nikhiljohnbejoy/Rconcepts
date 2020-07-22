# Description: using any and all

allFALSE <- c(FALSE, is.na("notNA"), 3 == 4)
allTRUE <- c(TRUE, is.na(NA), 3 == 3)
someTRUE <- c(TRUE, FALSE, FALSE)

  
# any ----
# are any of these true?
any(allFALSE) # FALSE
any(allTRUE) # TRUE
any(someTRUE) # TRUE

anyDuplicated(someTRUE) # 3. Returns position of first duplicated value
anyDuplicated(allTRUE) #2
anyNA(someTRUE) # FALSE
anyNA(c(someTRUE, NA)) # TRUE

# all ----
all(allFALSE) # FALSE
all(allTRUE) # TRUE
all(someTRUE) # FALSE

all.equal(3, 2+1, as.integer(pi)) # TRUE

