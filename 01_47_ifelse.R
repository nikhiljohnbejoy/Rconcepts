# for example
if (TRUE) {
  print("Leghorn")
} else {
  print("Orpington")
}

ifelse(TRUE, "Leghorn", "Orpington")

if (TRUE) "Leghorn" else "Orpington"

# if length(condition) > 1 ...
MNRChickenRanch <- c(1, 0, 0, 0, 1, 0, 0, 1, NA, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0)

ifelse(MNRChickenRanch, "Leghorn", "Orpington")

# The following fails because length(condition) > 1
if (MNRChickenRanch) "Leghorn" else "Orpington"
