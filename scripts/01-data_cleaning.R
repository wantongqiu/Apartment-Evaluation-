#### Preamble ####
# Purpose: Clean the data downloaded from Open Toronto website.
# Author: Qiu Wantong
# Data: 27 April 2022
# Contact: wantong.qiu@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
library(haven)
library(tidyverse)
# Read in the raw data. 
raw_data <- readr::read_csv("inputs/data/Apartment Building Evaluation.csv")
# Just keep some variables that may be of interest (change 
# this depending on your interests)
names(raw_data)

reduced_data <- 
  raw_data %>% 
  select(YEAR_BUILT,PARKING_AREA,CONFIRMED_STOREYS,
         CONFIRMED_UNITS,SECURITY, ELEVATORS)
rm(raw_data)
         

#### What's next? ####
# filtering the uncompleted observation.
data1= na.omit(data)


         