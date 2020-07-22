# Repeat is one of many flow control commands. (i.e. while, for..., if...then)

# Unlike other flow control commands, repeat DEFAULTS to an endless loop
bobsYourUncle <- 1 # ...So create a counter

repeat {
  print(bobsYourUncle)
  bobsYourUncle <- bobsYourUncle + 1
  if(bobsYourUncle > 10) {break} # Do this, or be here forever
}

# This is considered better programming since the intent of the loop is obvious
bobsYourUncle <- 1
while (bobsYourUncle < 11) {
  print(bobsYourUncle)
  bobsYourUncle <- bobsYourUncle + 1
}

# So when to use repeat?
# Perhaps you're testing multiple vectors where "or" or "and" will be confusing...
repeat {
  if (rnorm(1) > 3.8) break # ... if random number greater than 3.8
  if (as.POSIXlt(Sys.time())$hour > 15) break # ... if later than 3pm
  # or test for hardware value (useful for IoT)
}
