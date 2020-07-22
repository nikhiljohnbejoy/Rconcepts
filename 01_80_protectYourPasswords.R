
# Description: don't include your password in R

# Store unencrypted password
file.edit(file.path("~", ".Renviron"))

# in .Renviron, put key="value"...
# R_myPassword="something Secret"
# restart R

Sys.getenv("R_myPassword") # retrieve it

# or ... keyring
# askForSecret - keychain on MacOS, credential store on windows
# linux requires libsecret library

install.packages("keyring")
library(keyring)

key_set("SecretRecipie")
key_get("SecretRecipie")

# or...if you're using RStudio 1.2 preview
library(rstudioapi)

askForSecret("mySecretValue") # click on keyring checkbox
# subsequent askForSecret will autofill the answer
# unclick the keyring checkbox to remove it


# or...Store your passwords on an encrypted disk or removable drive
# create a file on external drive
# or on cloud storage such as onedrive, google drive or dropbox
# the file contains password definitions. 
# such as ... mySecretPassword <- "Waldorf salad"
# Warning: this will show up in a list of environmental variables
source("mysecrets.r")

# more sophisticated: secrets package at https://github.com/gaborcsardi/secret

