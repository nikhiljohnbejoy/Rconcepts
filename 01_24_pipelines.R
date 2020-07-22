# Description: Example file for pipelines

# main idea: piping data and results from one function to another


install.packages("magrittr")
library(magrittr)
?magrittr


# %>% forward pipe ---------------------------------------------------------------------
1:23 %>% fivenum %>% plot(1:5)
# notice the missing () in fivenum. If a function only has one argument, %>% allows for omission of ()

# %T>% --------------------------------------------------------------------
# tee 
1:23 %>% fivenum() %T>% plot(1:5)


# %<>% --------------------------------------------------------------------
# compound assignment. updates the left-hand variable with results from right hand function
myvar <- 1:23
myvar %<>% fivenum()


# dot ------------------------------------------------------------------
# a dot can be used to direct pipe data to a specific argument
1:23 %>% fivenum %>% LETTERS[]
# ... instead, do this ...
1:26 %>% fivenum %>% LETTERS[.]
