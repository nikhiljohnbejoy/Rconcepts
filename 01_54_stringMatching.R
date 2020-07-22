# Description: string matching

haystack <- c("red", "blue", "green", "blue", "green forest")

needle <- c("green", "blue", "cyan", "g")

match(needle, haystack) # first position, missing value = NA

needle %in% haystack # boolean

startsWith(haystack, "green")

endsWith(haystack, "green")

