# Description: sunflower plot

xpos <- c(1,2,3,3,1,2,3,1,2,3,4,5,6) # 13 xy points
ypos <- c(1,1,1,1,1,1,1,1,1,1,1,1,1)

# but only 6 points are plotted
plot(xpos, ypos)

# sunflowerplot will show duplicates and the extent they are duplicated
# use xyTable to calculate overlapping points
xyTbl <- xyTable(xpos, ypos)
# then use sunflowerplot to show the overlap at each point
sunflowerplot(xyTbl)
