#### Preamble ####
# Purpose: Models... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
# Read in all the data
data_2009 <- read_csv("~/Final paper/data/raw_data/raw_data_2009.csv")
data_2010 <- read_csv("~/Final paper/data/raw_data/raw_data_2010.csv")
data_2011 <- read_csv("~/Final paper/data/raw_data/raw_data_2011.csv")
data_2012 <- read_csv("~/Final paper/data/raw_data/raw_data_2012.csv")
data_2013 <- read_csv("~/Final paper/data/raw_data/raw_data_2013.csv")
data_2014 <- read_csv("~/Final paper/data/raw_data/raw_data_2014.csv")
data_2015 <- read_csv("~/Final paper/data/raw_data/raw_data_2015.csv")
data_2016 <- read_csv("~/Final paper/data/raw_data/raw_data_2016.csv")
data_2017 <- read_csv("~/Final paper/data/raw_data/raw_data_2017.csv")
data_2018 <- read_csv("~/Final paper/data/raw_data/raw_data_2018.csv")
data_2019 <- read_csv("~/Final paper/data/raw_data/raw_data_2019.csv")

### Create one table and filter by environment

combined_data <- rbind(data_2009, data_2010, data_2011, data_2012, data_2013, data_2014, data_2015, data_2016, data_2017, data_2018, data_2019)

environment_data_year <- combined_data %>% filter(policyarea == 7)%>% mutate(year = year(date))

## Create counts

count_data_year <- environment_data_year %>% group_by(year) %>% summarise(count = n())

### Model data by year ####
first_model <-
  stan_glm(
    formula = count ~ year,
    data = count_data,
    family = neg_binomial_2(link = "log"),
    seed = 853
  )
first_model

### Model by month 

#### Save model ####
#saveRDS(
#  first_model,
#  file = "models/first_model.rds"
#)

#prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
#prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
#prior_aux = exponential(rate = 1, autoscale = TRUE),

