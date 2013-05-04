data(iris)
colnames(iris) <- sapply(colnames(iris), FUN = gsub, pattern = "\\.", replacement = "")
p5 <- rPlot(SepalWidth ~ SepalLength, data = iris, color = "Species", type = "point", height = 400)
# again match polychartjs example exactly to show how we can change axis and legend titles
p5$guides(color = list(title = "Category"), y = list(title = "sepalWidth"), x = list(title = "sepalLength"))
p5$set(title = "Iris Flowers")
p5$html()
p5 
