# Description: editing data in place

# There are four ways to edit R objects
# edit
# fix
# dataentry
# data.entry


# edit() ----general purpose. Good for editing existing object-------------

Chickens <- edit(ChickWeight) #X11 library is missing: install XQuartz from xquartz.macosforge.org

listOfChickens <- edit(as.list(ChickWeight))


# fix() -----edits an object in place--------------------------------------

fix(listOfChickens) 

# dataentry() -----Create a new list from scratch-----------------------

editedChick <- dataentry(data = list(ChickWeight$weight, ChickWeight$Time), 
                         modes = list("numeric", "numeric"))

# data.entry() ----Create from scratch with more control-------------------

data.entry(Chickens$weight, Chickens$Time,
           Names = c("theWeight", "theTime")) # change Chickens$weight.

# error. Must be numeric or character vectors
data.entry(Chickens) 

# data.entry doesn't like factors
data.entry(Chickens$weight, Chickens$Time, Chickens$Chick)
# instead...
data.entry(Chickens$weight, Chickens$Time, levels(Chickens$Chick))
