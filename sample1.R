someText <- c("Lalkal kululu","kaa kaaaa")

regexpr("k\\w+",someText)

regmatches(someText,regexpr("k\\w+",someText))

regmatches(someText,gregexpr("k\\w+",someText))

regmatches(someText,gregexpr("k\\w+",someText)) <-"boo"

someText

regmatches(someText,gregexpr("k\\w+",someText),invert=TRUE) <-"-boo-"