data(iris)
colnames(iris) <- sapply(colnames(iris), FUN = gsub, pattern = "\\.", replacement = "")
p16 <- rPlot(height = 400, width = 720, x = "bin(SepalLength, 1)", y = "bin(SepalWidth, 0.5)", color = "mean(PetalWidth)", 
    data = iris, type = "tile")
p16$guides(color = list(scale = list(type = "gradient", lower = "#EEE", upper = "#a23")))
p16$facet(type = "wrap", var = "Species")  #,formatter='function(object) { return object.category }')
p16$set(title = "Iris Flowers")
p16 
