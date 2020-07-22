# Description: chartr

haystack <- c("red", "blue", "green", "blue", "green forest")

# chartr stands for _CHAR_acter _TR_anslate
chartr("ans","&_*",haystack)
chartr("san","&_*",haystack)

# how is chartr different than sub and gsub?
# let's review sub and gsub
sub("e", "+", haystack) # replaces pattern with replacement (once)
gsub("e", "+", haystack) # replaces pattern with replacement (global)
chartr("e", "+", haystack) # behaves just like gsub

# chartr (not gsub) can translate more than one character without regex
gsub("ans","&_*",haystack) # no replacements
chartr("ans","&_*",haystack) # replacements
