require(quantmod)
require(reshape2)

DJIA <- na.omit(getSymbols("DJIA", src = "FRED", auto.assign = FALSE)["2012-12-04::2013-03-10"])

xtsMelt <- function(xtsData, metric, names = NULL) {
    df <- data.frame(index(xtsData), coredata(xtsData), stringsAsFactors = FALSE)
    df.melt <- melt(df, id.vars = 1)
    df.melt <- data.frame(df.melt, rep(metric, NROW(df.melt)))
    # little unnecessary housekeeping
    df.melt <- df.melt[, c(1, 2, 4, 3)]
    if (is.null(names)) {
        colnames(df.melt) <- c("date", "indexname", "metric", "value")
    } else {
        colnames(df.melt) <- names
    }
    df.melt[, 1] <- as.Date(df.melt[, 1])
    return(df.melt)
}

DJIA.melt <- xtsMelt(DJIA, "price", names = c("Date", "Index", "Metric", "Close"))
DJIA.melt[, 1] <- format(DJIA.melt[, 1], "%m/%d/%Y")

p1 <- rPlot(Close ~ Date, data = DJIA.melt, type = "line", size = list(const = 3))
p1$guides(x = list(numticks = 10), y = list(min = 12000, max = 15000))
p1$set(title = "Dow Jones Daily Closing Value")
p1 
