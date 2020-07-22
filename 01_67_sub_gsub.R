# Description: sub and gsub

someText <- c("Twas brillig and the slithey toves", "did gyre and gimble in the wabes")
sub("a", "-", someText) # replaces only the first occurance in each element
gsub("a", "-", someText) # replaces all (global)

sub("and", "AND", someText) # works for any pattern

gsub("i.", "-", someText, perl = TRUE) # perl compatible regex

gsub("i(.)", "-\\1-", someText, perl = TRUE) # use backreferences


