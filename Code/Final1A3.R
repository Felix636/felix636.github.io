require(dplyr)
require(ggplot2)
require(tidyr)

nycdcp.mn.bike.counts.2005.2015 <- read.csv("~/New School/Data Project2/Final Project/nycdcp-mn-bike-counts-2005-2015.csv")
chart <- ggplot(nycdcp.mn.bike.counts.2005.2015, aes(x=Year, y = Cycl_Helmet_all, color=Location)) +
  geom_line(size=2) + facet_wrap(~Location, ncol = 2) + theme(legend.position='none') +
  ggtitle('Helmet Wearing Trends 2005-2015\nAt Individual City Locations\nIndicating
 Areas for Early Safety Education and Outreach Intervention')

print(chart)
