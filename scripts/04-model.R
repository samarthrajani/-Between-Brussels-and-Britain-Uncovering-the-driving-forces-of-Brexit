#### Preamble ####
# Purpose: Downloads and saves the data from the ParlEE dataset
# Author: Samarth Rajani
# Date: 16 April 2024
# Contact: samarth.rajani@utoronto.ca 
# License: MIT


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####

all_data <- read_csv("/Users/Samarthsumitrajani/Final paper/data/raw_data/raw_data.csv")

### Model data by year ####
first_model <- glm(eu ~ party, data = all_data, family = binomial)
summary(first_model)
saveRDS(
  first_model,
  file = "models/first_model.rds"
)



