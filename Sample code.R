# Sample Code to import data
library(readxl)
CPIForecastData <- read_excel("CPIForecast.xlsx",
                              skip = 1)
CPIHistoricalData <- read_excel("historicalcpi.xlsx", 
                            skip = 1)