# Description: askYesNo

# This is new in 5.0, so check your version
R.Version()

# simple example. Note return of TRUE, FALSE and NA
askYesNo("Do you like brussels sprouts?")

# Changing the prompts - but not the return values
askYesNo("Do you like brussels sprouts?", prompts = "Y/N/C")

# Change the default response
askYesNo("Do you like brussels sprouts?", prompts = "Y/N/C", default = FALSE)

# tricky use of AskYesNo for 3 values - but watch the return value
askYesNo("Which is your favorite?", prompts = "Carrots/Brussels Sprouts/Onions")


# In Situ -----------------------------------------------------------------

ifelse(askYesNo("Do you like brussels sprouts?", prompts = "Y/N/C"),
       "positive result",
       "negative result"
)