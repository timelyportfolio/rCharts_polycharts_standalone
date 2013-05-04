data = data.frame(list(segment = c("FirstTime", "FirstTime", "FirstTime", "Return", "Return", "Return", 
    "Sale", "Sale", "Sale"), source = c("Referral", "LinkedIn", "Cold Call", "Referral", "LinkedIn", "Cold Call", 
    "Referral", "LinkedIn", "Cold Call"), value = c(10, 15, 20, 5, 10, 18, 3, 5, 8)))

p10 <- rPlot(x = list(var = "segment", sort = "sum(value)", desc = "true"), y = "value", data = data, color = "source", 
    type = "bar", height = 200, width = 720)
p10$guides(x = list(renderLine = "false", renderTick = "false", renderLabel = "true", renderGrid = "false"), 
    y = list(position = "none"))
p10$coord(type = "cartesian", flip = "true")
p10$set(title = "Sales Funnel")
p10 
