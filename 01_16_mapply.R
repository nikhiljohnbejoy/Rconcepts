# Description: Example file for mapply

# mapply is similar to apply except it handles multiple arguments in functions
# also-note function and object are reversed in argument order from apply

rep("hello", 3, each = 2)

mapply(rep, "hello", 1:4, each = 2)
