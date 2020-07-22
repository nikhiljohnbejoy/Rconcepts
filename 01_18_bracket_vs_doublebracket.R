# Description: Example file for [] vs [[]]

# Main idea: [] returns object. [[]] returns contents

# another example
lotsaletters <- list(CAPS=LETTERS[1:10], lc=letters[1:10])
typeof(lotsaletters) # list of 2 objects
lotsaletters #just to take a look

# contents of each
lotsaletters[1][3] # NULL because [1] returns an object - not the contents of an object

str(lotsaletters[1][3])
str(lotsaletters)

lotsaletters["CAPS"] 
lotsaletters[["CAPS"]][3] # "C" because [[]] returns contents
