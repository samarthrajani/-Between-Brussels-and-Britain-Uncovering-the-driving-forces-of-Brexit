#### Preamble ####
# Purpose: Tests the dataset
# Author: Samarth Rajani
# Date: 16 April 2024
# Contact: samarth.rajani@utoronto.ca 
# License: MIT


#### Workspace setup ####
library(tidyverse)

#### Test data ####
dataset_test <- read_csv("/Users/Samarthsumitrajani/Final paper/data/raw_data/raw_data.csv")

# Test for missing values
is.na(cleaned_data)

# Test whether EU column is only 0 and 1 
cleaned_data$eu|>
  unique() == c(0:1)

# Test whether the party names are those indeed present in UK parliament

cleaned_data$party|>
  unique() == c('APNI', 'Con', 'DUP', 'GPEW',
                'Lab', 'LibDem', 'Plaid Cymru',
                'SDLP', 'SNP', 'UKIP', 'UUP')


