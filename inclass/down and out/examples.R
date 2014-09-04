# What Works
# Down and Out In-Class Exercise

# World Bank WDI --------------------------------------------------------------
# https://github.com/vincentarelbundock/WDI

# install packages
  install.packages('WDI')
  install.packages('ggplot2')
# load packages
  library(WDI)
  library(ggplot2)
# update data
  new_cache <- WDIcache()
# search for keywords
  WDIsearch('gdp')[1:10,]
  WDIsearch('gdp.*capita.*constant')
# download data
  dat <- WDI(indicator='NY.GDP.PCAP.KD', 
             country=c('MX','CA','US'), 
             start=1960, end=2012)
# plot data
  ggplot(dat, 
         aes(year, NY.GDP.PCAP.KD, color=country)) + 
         geom_line() + 
         xlab('Year') + 
         ylab('GDP per capita')

# Google Motion Charts --------------------------------------------------------
# https://code.google.com/p/google-motion-charts-with-r/

# install packages
  install.packages('googleVis')
# load packages  
  library('googleVis')
# example
  plot(gvisMotionChart(Fruits, 
                       "Fruit", 
                       "Year", 
                       options = list(width = 600, 
                                      height = 400)))