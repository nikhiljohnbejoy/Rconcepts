# best to do this from R - NOT RStudio

# for windows
install.packages("installr") 
library(installr)
updateR()

# for macintosh
install.packages('devtools') #assuming it is not already installed
library(devtools)
install_github('andreacirilloac/updateR')
library(updateR)
updateR(admin_password = 'Admin user password')