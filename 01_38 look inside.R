# Description: Look inside the code

# let's play with cowsay
install.packages("cowsay")
library(cowsay)

say("Why so serious?", by="cow")

# looking inside of the function
say # reveals code of function

ls("package:cowsay") # reveals objects inside of package

?cowsay::animals # help file for that object

str(animals) # STRucture of an object

