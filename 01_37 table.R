# Description: Tabulation

# Show count of each factor
table(ChickWeight$Diet)

# use dnn to title the table. One dnn label per factor
table(ChickWeight$Diet,  dnn = "Observations per diet")

# "with" is a way to use data for the following command

with(ChickWeight, table(weight, Diet,
                        dnn = c("cweight", "cDiet"))
)