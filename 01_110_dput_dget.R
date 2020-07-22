chickweightobject <- ChickWeight

# dput() writes an R language version of an object to disk
dput(chickweightobject, file = "chickweight_dput.R")
# Includes meta data and function definitions

# Compare dput() to save()
save(chickweightobject, file = "chickweight_save.RDS")
load(file = "chickweight_save.RDS")
# save() creates a binary version of the file

# Compare dput() to file.write (which creates a csv)
write.csv(chickweightobject, file = "chickweight_writecsv.csv")
# Does not include meta data or ability to build the file programmatically 

# dput can save functions
myFunc <- function(thisThing, thatThing) {
  print(thisThing)
  min(thisThing, thatThing)
}
dput(myFunc, file = "myFuncFunction.R")

# compare dput to dump
dump("myFunc", file = "myFuncFunctionDump.r")

# Use dget() to retrieve a dput() file.
# Either run the code in the dput file
# ... or ...
newChickWeight <- dget(file = "chickweight_dput.R")
