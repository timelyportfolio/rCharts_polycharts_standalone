require(reshape2)

osshare <- read.csv("http://gs.statcounter.com/chart.php?statType_hidden=os&region_hidden=ww&granularity=monthly&statType=Operating%20System&region=Worldwide&fromMonthYear=2008-07&toMonthYear=2013-03&csv=1",stringsAsFactors=FALSE)
#if we wanted to sort by last value
#osshare <- osshare[,c(1,order(last(osshare[,-1]),decreasing=TRUE)+1)]
#osshare.melt <- read.csv("http://www.polychartjs.com/s/data/OSStatistics.csv")
osshare.melt <- reshape2::melt(osshare,id.vars=1)
colnames(osshare.melt)[c(2,3)] <- c("OS","Share")

p4 <- rPlot(y="Share",x="Date", color = "OS",  #could do Share ~ Date
            data=osshare.melt,
            size=list(const=3),
            opacity=list(const=0.7),
            type="area",
            height=500)
#demonstrate how we can change axis and legend titles
p4$guides(color=list(numticks=10,title="Oper System"),y=list(title="Market Share"))
p4$set(title="OS Market Shares Over Time")
p4