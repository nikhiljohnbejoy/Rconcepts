# you've seen package::function. What is it for? 

# setup
library(tidyverse)

# notice that tidyverse & dplyr installs a second version of filter

? filter # now returns help for two different versions

getAnywhere(filter) # finds all versions and lists packages and namespaces

# What happened? dplyr/tidyverse installed a command called filter and masked the stats version

# "::" is used to specify which version you want. For example..

dplyr::filter()
stats::filter()

# to show more
detach("package:dplyr")

getAnywhere(filter) # note that package:dplyr is now gone

?filter # lists help for filter from all packages
?dplyr::filter # lists help from specified (but unloaded) package

# so "::" is similar to "library" and it can be used that way
# but...results in unneccesarily verbose code
