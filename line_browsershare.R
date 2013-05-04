require(reshape2)

browsershare <- read.csv("http://gs.statcounter.com/chart.php?statType_hidden=browser&region_hidden=ww&granularity=monthly&statType=Browser&region=Worldwide&fromMonthYear=2008-07&toMonthYear=2013-03&csv=1")
browsershare.melt <- melt(browsershare, id.vars = 1)
colnames(browsershare.melt)[c(2, 3)] <- c("Browser", "Share")
p3 <- rPlot(Share ~ Date, color = "Browser", data = browsershare.melt, size = list(const = 3), type = "line")
p3$set(title = "Browser Shares Over Time")
p3 
