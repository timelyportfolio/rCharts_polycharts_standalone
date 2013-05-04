data(InsectSprays)
# boxplot(count~spray, data=InsectSprays, col='lightgray')
p15 <- rPlot(width = 720, x = "spray", y = "box(count)", data = InsectSprays, type = "box")
p15$guides(x = list(min = 0, max = 110))
p15 
