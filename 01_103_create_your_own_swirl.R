# Swirl is a tool for learning R
# You can create custom lessons for your students
install.packages("swirl")
library(swirl)

swirl()

install.packages("swirlify")
library(swirlify)

# Directories are important - be careful about changing working directory!

# Create a new lesson
# Lesson name: Use R with Excel
# Course name: High Variety Data 

swirlify("Use R with Excel", "High Variety Data")

# Which creates a directory and necessary files or ... opens existing lesson

# Swirl has a LOT of options. Look to http://swirlstats.com/swirlify for documentation

