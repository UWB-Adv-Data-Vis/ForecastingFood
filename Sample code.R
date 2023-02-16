# Sample Code to import data
library(readxl)
pacman::p_load(tidyverse,readxl,shiny)

CPIForecastData <- read_excel("CPIForecast.xlsx",
                              skip = 1)
CPIHistoricalData <- read_excel("historicalcpi.xlsx", 
                            skip = 1)

CPIHistoricalWide <- CPIHistoricalData %>% #Use the CPI historical data for piping the following functions and once complete, store this as new data object that is a wide format.
  remove_missing() %>% # remove the unused columns
  mutate(`Consumer Price Index item` = as.factor(`Consumer Price Index item`)) %>% #Convert the CPI items into factors
  mutate_if(is.character, as.numeric) %>% # Convert any columns that were assumed to be characters into numeric. We Could have specified the data types in the read_excel but this conversion is intuitive compared to multiple complex arguments to load data.
  rename(cpiItem = `Consumer Price Index item`) #Rename the item column to something easier to code

warnings() # view the warnings which show the blank rows being removed and the "N/A" values being converted into NA.

CPIHistoricalWide$cpiItem

CPIHistoricalWide <- CPIHistoricalWide %>% # Update the wide object using the hierarchical levels and named relationships.
  mutate(level = case_when((cpiItem %in% c('All food'))~ 1,
                           (cpiItem %in% c('Food away from home','Food at home')) ~ 2,
                           (cpiItem %in% c('Meats, poultry, and fish', 'Eggs', 'Dairy products', 'Fats and oils', 'Fruits and vegetables', 'Sugar and sweets','Cereals and bakery products', 'Nonalcoholic beverages', 'Other foods')) ~ 3,
                           (cpiItem %in% c('Meats', 'Poultry', 'Fish and seafood', 'Fresh fruits and vegetables', 'Processed fruits and vegetables')) ~ 4,
                           (cpiItem %in% c('Beef and veal', 'Pork', 'Other meats', 'Fresh fruits', 'Fresh vegetables')) ~ 5,
                           TRUE ~ 0
                           ),
         level = as.factor(level) #convert the new values into a factor
         )

CPIHistoricalWide %>% # check to make sure each of the categories is at their appropriate level
  select(cpiItem, level) %>%
  view()

CPIHistoricalLong <- CPIHistoricalWide %>% #Pivot the wide data set to minimize the number of columns, making it easier to visualize and create drill down functions.
  pivot_longer(cols = !c(cpiItem, level)) %>%
  rename(year = name, percentchange = value) %>% #rename the columns to meaningful variables.
  mutate(percentchange = round(percentchange*0.01, 3)) # convert the percentage to an number that fits a percentage scale 0% to 100 % (0 to 1)

