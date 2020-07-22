
# main idea: Using the R debugger

# a simple function
thisisafunction <- function(someNumber) {
  print(someNumber)
}

# set debug on this function
debug(thisisafunction)
undebug(thisisafunction)

# which gets called again...and again...and again
for(index in 1:10) {
  thisisafunction(index)
}

# The solution is debugonce -------------------------------------
# set debugonce on this function
debugonce(thisisafunction)

