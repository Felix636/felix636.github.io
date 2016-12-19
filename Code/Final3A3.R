require(dplyr)
require(ggplot2)
require(tidyr)


nycdcp.mn.bike.counts.2005.2015 <- read.csv("~/New School/Data Project2/Final Project/nycdcp-mn-bike-counts-2005-2015.csv")
newdata<-group_by(nycdcp.mn.bike.counts.2005.2015, Year)
newdata<-summarize(newdata, Male_Cyc_Helmet=sum(Male_Cyc_Helmet), Female_Cyc_Helmet=sum(Female_Cyc_Helmet))
newdata<-mutate(newdata, Helmet_all=Male_Cyc_Helmet + Female_Cyc_Helmet)
chart <- ggplot(newdata, aes(x=Year)) + geom_point(aes(y=Male_Cyc_Helmet)) +
        geom_line(aes(y=Male_Cyc_Helmet), col='blue') + 
  geom_point(aes(y=Female_Cyc_Helmet)) + geom_line(aes(y=Female_Cyc_Helmet), col='green') +
  ggtitle('Gender Comparison of Cyclists Wearing Helmets')

print(chart)