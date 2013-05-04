names = c("Joe", "Jay", "Jen", "Jane", "John", "Jone", "Jake", "Jule", "Jack")
height = c(1.62, 1.63, 1.71, 1.66, 1.79, 1.58, 1.55, 1.62, 1.72)  #actually error in example, 1.63)
data = data.frame(names, height)
p8 <- rPlot(x = "bin(height,0.05)", y = "count(names)", data = data, type = "bar")
p8$guides(x = list(title = "Height in Meters"), y = list(title = "Density"))
p8$set(title = "Histogram of Heights")
p8 
