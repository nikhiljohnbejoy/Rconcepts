# Description: Example file for fun R packages

# main idea: Why so serious?


# Fortunes ----------------------------------------------------------------
install.packages("fortunes")
library(fortunes)
fortune()
allFortunes <- read.fortunes()

# praise ------------------------------------------------------------------
install.packages("praise")
library(praise)
praise("${Exclamation}! You are ${adjective}")
?praise_parts #lists the template words