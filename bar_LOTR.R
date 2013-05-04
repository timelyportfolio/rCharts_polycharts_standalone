jsondata = data.frame(c("The Fellowship of the Ring", "The Two Towers", "The Return of the King", "The Hobbit"), 
    c(871530000, 926047000, 1119929000, 949541000))
colnames(jsondata) <- c("movie", "gross")
p7 <- rPlot(gross ~ movie, data = jsondata, type = "bar", color = list(const = "darkgreen"))
p7$set(title = "Lord of the Rings Box Office Gross")
p7$html()
p7 
