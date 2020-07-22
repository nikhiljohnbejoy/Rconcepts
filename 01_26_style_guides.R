
# main idea: Writing readable R code

# google's stye guide: https://google.github.io/styleguide/Rguide.xml
# Hadley Wickham's style guide: http://adv-r.had.co.nz/Style.html
#   used by RStudio Code > Show Diagnostics
# Tidyverse style guide: http://style.tidyverse.org/
# Aroma coding style: http://aroma-project.org/developers/
# Paul Johnson: https://cran.r-project.org/web/packages/rockchalk/vignettes/Rstyle.pdf


# lintr -------------------------------------------------------------------

install.packages("lintr")
library(lintr)
# Detailed instructions at https://github.com/jimhester/lintr

lint("./01_06_lists.R")


# formatR -----------------------------------------------------------------

install.packages("formatR")
library(formatR)

newTidyCode <- tidy_source(source = "../CodeClinicR/2018_1_summarizeTheWeather/CodeClinic_1_weather.R")
newTidyCode$text.tidy

tidy_app()
