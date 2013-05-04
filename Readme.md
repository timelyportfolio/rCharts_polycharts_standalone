# Polycharts Examples Replicated in R with rCharts

[rCharts](http://ramnathv.github.io/rCharts) provides an interface between R and most popular interactive Javascript visualization libraries.  Here are almost all of the examples from the [polychart2 demo](http://polychartjs.com/demo).  These examples are minimal.  To see a much more complete example, go to [recreate NYT baseball tutorial](http://ramnathv.github.io/rChartsNYT).

To run these, the **create_chart** function will produce a fully rendered beautiful HTML page from an .R source file.  Each of the .R source files are provided in this repo.  

```
#to install rCharts if you do not have it uncomment next two lines
#require(devtools)
#install_github('rCharts', 'ramnathv')
require(rCharts)

examples = c("area_osshare.R",      
  "bar_athletes.R",       
  "bar_LOTR.R",           
  "boxplot.R",            
  "groupedbar_salaries.R",
  "histogram_heights.R",  
  "line_browsershare.R",  
  "line_dowjones.R",      
  "scatter_facet_iris.R", 
  "scatter_irisflower.R", 
  "stackedbar_sales.R",   
  "tile_iris.R")          

#change the number in examples[i] to the example you would like to run
sapply(paste0(
               "https://raw.github.com/timelyportfolio/rCharts_polycharts_standalone/master/",
                examples),
      FUN = create_chart)
      
#if sapply scares you or if you want to try just one, here is another way to do it
create_chart(paste0("https://raw.github.com/timelyportfolio/rCharts_polycharts_standalone/master/",examples[1]))

```