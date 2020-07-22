# Check if a file exists. If it exists, can I read/write?

# Note regarding this exercise file: setwd() to a directory that contains an ".RData"

# Does this file exist?
file.access(".RData") 
# NOTE: 0 if true, -1 if false
# Which is not what you might expect. Normally 1 is success or true. 0 if false or fail.

# How to use...
if(file.access(".RData") == 0) {
  print("I've found .RData!!")
} else {
  print("Ouch. Something isn't working")
}


# mode
# 0 = test for existence
# 1 = test for execute permission
# 2 = test for write permission
# 4 = test for read permission (Hey - why not 3?)

file.access(".RData", mode = 4) # = 0. Yep. We can read this
file.access(".RData", mode = 1) # = -1. Nope. can't execute this

# Do you want to test for read AND write permission?
# Remember bitwXor from the session on bitwise?
file.access(".RData", mode = bitwXor(2,4))

# One final note: be careful with this on multi-tasking, multi-user systems.
# File status can change between running file.access and actual file use

