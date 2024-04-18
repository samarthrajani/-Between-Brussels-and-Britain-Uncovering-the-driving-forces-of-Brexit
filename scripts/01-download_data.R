#### Preamble ####
# Purpose: Downloads and saves the data from the ParlEE dataset
# Author: Samarth Rajani
# Date: 16 April 2024
# Contact: samarth.rajani@utoronto.ca 
# License: MIT



#### Workspace setup ####
library(tidyverse)
library(dataverse)
library(arrow)

# Load the resource data into a tibble
raw_data_UK_edited <- get_dataframe_by_name(
  filename = "ParlEE_UK_plenary_speeches.csv",
  dataset = "10.7910/DVN/ZY3RV7",
  server = "dataverse.harvard.edu",
  .f = read_csv
) %>%
  filter(chair == FALSE, agenda != "Election of Speaker") %>%
  select(date, agenda, party, policyarea, eu)

# Save data (locally since it is too big to be pushed)

write_csv(raw_data_UK_edited, "/Users/Samarthsumitrajani/Final paper/data/raw_data/raw_data.csv")
write_parquet(raw_data_UK_edited, sink ="/Users/Samarthsumitrajani/Final paper/data/raw_data/raw_data.parquet")
# Running into parquet errors
