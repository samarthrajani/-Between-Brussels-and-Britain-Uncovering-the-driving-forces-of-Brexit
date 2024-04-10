#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(dataverse)

# Load the resource data into a tibble
raw_data_UK <- get_dataframe_by_name(
  filename = "ParlEE_UK_plenary_speeches.csv",
  dataset = "10.7910/DVN/ZY3RV7",
  server = "dataverse.harvard.edu",
  .f = read_csv
) %>%
  filter(chair == FALSE) %>%
  select(date, agenda, party, policyarea)

# Edit date column

raw_data_UK_edited <- mutate(raw_data_UK, date = as.Date(date, format = "%m/%d/%Y"))

# Save data individually by year and save it

raw_data_UK_2009 <- filter(raw_data_UK_edited, year(date) == 2009)
write_csv(raw_data_UK_2009, "data/raw_data/raw_data_2009.csv")

raw_data_UK_2010 <- filter(raw_data_UK_edited, year(date) == 2010)
write_csv(raw_data_UK_2010, "data/raw_data/raw_data_2010.csv")

raw_data_UK_2011 <- filter(raw_data_UK_edited, year(date) == 2011)
write_csv(raw_data_UK_2011, "data/raw_data/raw_data_2011.csv")

raw_data_UK_2012 <- filter(raw_data_UK_edited, year(date) == 2012)
write_csv(raw_data_UK_2012, "data/raw_data/raw_data_2012.csv")

raw_data_UK_2013 <- filter(raw_data_UK_edited, year(date) == 2013)
write_csv(raw_data_UK_2013, "data/raw_data/raw_data_2013.csv")

raw_data_UK_2014 <- filter(raw_data_UK_edited, year(date) == 2014)
write_csv(raw_data_UK_2014, "data/raw_data/raw_data_2014.csv")

raw_data_UK_2015 <- filter(raw_data_UK_edited, year(date) == 2015)
write_csv(raw_data_UK_2015, "data/raw_data/raw_data_2015.csv")

raw_data_UK_2016 <- filter(raw_data_UK_edited, year(date) == 2016)
write_csv(raw_data_UK_2016, "data/raw_data/raw_data_2016.csv")

raw_data_UK_2017 <- filter(raw_data_UK_edited, year(date) == 2017)
write_csv(raw_data_UK_2017, "data/raw_data/raw_data_2017.csv")

raw_data_UK_2018 <- filter(raw_data_UK_edited, year(date) == 2018)
write_csv(raw_data_UK_2018, "data/raw_data/raw_data_2018.csv")

raw_data_UK_2019 <- filter(raw_data_UK_edited, year(date) == 2019)
write_csv(raw_data_UK_2019, "data/raw_data/raw_data_2019.csv")

#### Save data ####
#write_csv(raw_data_UK, "data/raw_data/raw_data.csv") 

         
