# Description: Say something funny

# cowsay ------------------------------------------------------------------
install.packages("cowsay")
library(cowsay)

# simple example
say("Why so serious?", by="cow")

# what animals are available?
names(animals)

# Special cases
say("futurama",by=sample(names(animals),1))
say("dexter",by=sample(names(animals),1))
# other wildcards: "arresteddevelopment", "doctorwho", "dexter", "futurama", "holygrail", "simpsons", "starwars", "loremipsum"

# discover other special cases by examining the source code
say