#### Preamble ####
# Purpose: Simulates occurence of environmental matter
# Author: Samarth Rajani
# Date: 28 March 2024 
# Contact: samarth.rajani@mail.utoronto.ca 
# License: MIT

#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
years <- rep(seq(2009, 2019, by = 1), each = 10)
agenda_type <- sample(c("Education","Environment","Agriculture","Immigration","Crime"),replace = TRUE, size = 110)
party <- sample(c("APNI", "Conservative Party","Labour Party", "LibDem","Other","UUP"), replace = TRUE, size = 110)
EU <- rbinom(110,size = 1, prob = 0.3)

simulated_data <- data.frame(Year = years, Agenda = agenda_type, Party = party, EU = EU)
simulated_data

### Saving simulated data ###
write_csv(simulated_data, "data/simulated_data.csv")
