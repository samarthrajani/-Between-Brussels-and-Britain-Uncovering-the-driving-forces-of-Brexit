#### Preamble ####
# Purpose: Models the dataset between party affiliation and discussion on the European Union
# Author: Samarth Rajani
# Date: 16 April 2024
# Contact: samarth.rajani@utoronto.ca 
# License: MIT


#### Workspace setup ####

library(tidyverse)
library(rstanarm)

#### Read data ####
dataset_UK <- read_csv("/Users/Samarthsumitrajani/Final paper/data/raw_data/raw_data.csv")

# Convert date column to Date format

dataset_UK$date <- as.Date(dataset_UK$date, format = "%m/%d/%Y")

# Filter from 2014 to 2016

filtered_dataset_UK <- dataset_UK %>%
  filter(year(date) %in% 2014:2016)

### Model data by year ####
first_model <- stan_glm(eu ~ party, data = filtered_dataset_UK, family = binomial, prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
                   prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
                   seed = 853)
                       
summary(first_model)
saveRDS(
  first_model,
  file = "models/first_model.rds"
)

# Relative to APNI

