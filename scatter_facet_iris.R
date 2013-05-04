data(iris)
colnames(iris) <- sapply(colnames(iris), FUN = gsub, pattern = "\\.", replacement = "")
p18 <- rPlot(width = 720, height = 300, x = "SepalLength", y = "SepalWidth", color = "Species", data = iris, 
    type = "point")
p18$facet(type = "wrap", var = "Species")
p18$set(title = "Iris Flowers")
p18 
