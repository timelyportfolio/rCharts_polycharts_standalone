jsondata = data.frame(rbind(c("Floyd Mayweather", 8.5e+07, "Boxing"), c("Manny Pacquaio", 6.2e+07, "Boxing"), 
    c("Tiger Woods", 59400000, "Golf"), c("LeBron James", 5.3e+07, "Basketball"), c("Roger Federer", 52700000, 
        "Tennis"), c("Kopaye Bryant", 52300000, "Basketball"), c("Phil Mickelson", 47800000, "Golf"), c("David Beckham", 
        4.6e+07, "Soccer"), c("Cristiano Ronaldo", 42500000, "Soccer"), c("Peyton Manning", 42400000, "Football")))
colnames(jsondata) <- c("name", "pay", "sport")
p9 <- rPlot(x = list(var = "name", sort = "pay"), y = "pay", data = jsondata, color = "sport", type = "bar")
p9$guides(y = list(title = "Athlete Pay (in $)"), x = list(title = "Name of Athlete", numticks = 10), color = list(title = "Type of Sport"))
p9$coord(type = "cartesian", flip = "true")
p9$set(title = "Top 10 Highest Paid Athletes 2012")
# p9$html() cat(p9$render())
p9 
