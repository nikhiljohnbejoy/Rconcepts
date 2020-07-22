# combn produces a matrix of all combinations
photos.combn <- combn(c("Bride", "Groom", 
                      "Bride's Parents", 
                      "Groom's Parents",
                      "Bride's Siblings",
                      "Groom's Siblings"), 3)

photos.combn <- t(photos.combn)

# expand.grid produces a dataframe of vector A against vector B
photos.expand.grid <- expand.grid(c("Bride", "Bride's Parents", "Bride's Siblings"),
                                c("Groom", "Groom's Parents", "Groom's Siblings"))

photos.expand.grid <- expand.grid(c("Bride", "Groom"),
                                  c("Bride's Parents", "Groom's Parents"),
                                  c("Bride's Siblings", "Groom's Siblings"))


