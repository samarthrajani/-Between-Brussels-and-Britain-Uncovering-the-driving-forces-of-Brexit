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
raw_data_UK <- get_dataframe_by_name(filename= "ParlEE_UK_plenary_speeches.csv", dataset = "10.7910/DVN/ZY3RV7", server = "dataverse.harvard.edu", .f = read_csv) %>%
  slice_head(n = 10) %>% select(date, agenda, party, policyarea)
raw_data_UK

#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
#write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         
