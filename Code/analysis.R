require(dplyr)
require(ggplot2)
require(tidyr)
setwd("~/Dropbox/new-school/felix-bike")

data <- read.csv('bike-data.csv')

#select is to choose columns
citibike <- select(data, LocationID, Year,Citibike_Male:Citibike_All)

chart1 <- ggplot(citibike, aes(x=Year, y=Citibike_All, group=LocationID, color=factor(LocationID))) +
          geom_line()

print(chart1)

#filter is to filter down columns by some variable
citibike_2013 <- filter(citibike, Year > 2012)

chart2 <- ggplot(citibike_2013, aes(x=Year, y=Citibike_All, group=LocationID, color=factor(LocationID))) +
  geom_line()

print(chart2)


#bring in the wide data
wide_data <- read.csv('wide_data.csv')

long_data <- gather(wide_data, location, citibikes, -year)

chart3 <- ggplot(long_data, aes(x=year, y=citibikes, group=location, color=factor(location))) +
        geom_point(size=5, alpha=.5) 
print(chart3)





