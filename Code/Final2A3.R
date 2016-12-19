nycdcp.mn.bike.counts.2005.2015 <- read.csv("~/New School/Data Project2/Final Project/nycdcp-mn-bike-counts-2005-2015.csv")
require(dplyr)
require(ggplot2)
require(tidyr)

newdata<-group_by(nycdcp.mn.bike.counts.2005.2015, Year)
newdata<-summarize(newdata, Cycl_Helmet_all=sum(Cycl_Helmet_all), TotalUsers=sum(TotalUsers))
newdata<-mutate(newdata, Percent=Cycl_Helmet_all/TotalUsers)
chart <- ggplot(newdata, aes(x=Year, y=Percent, fill="green")) +
 geom_bar(stat="identity", colour = "black") +  
theme(legend.position = 'none') + ggtitle('Percentage of Bikers Wearing\nHelmets By Year 2005-2015')  
  
print(chart)
