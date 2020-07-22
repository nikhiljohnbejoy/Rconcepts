# Description: capturing plots to an image file

# other file formats include JPG, PNG, WMF, PDF

# three steps...create the output path, create the output, close
pdf('~/Documents/plots/rplot.pdf')
hist(ChickWeight$weight)
dev.off()

# note that the title of the pdf appears in document properties
# but not as part of the plot
pdf('~/Documents/plots/rplot.pdf', 
    title = "Chick Weights",
    paper = "letter")
hist(ChickWeight$weight, main = "Chick Weights")
dev.off()
