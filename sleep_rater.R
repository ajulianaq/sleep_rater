## Author: Alberto Juliana Quirós
## Description: Combines Garmin Connect sleep and stress data obtained via https://github.com/tcgoetz/GarminDB tool
## with self-reported variables

library(RSQLite)
library(dplyr)

## Read .db
garmin_db <- dbConnect(SQLite(), "C:\\Users\\Username\\HealthData\\DBs\\garmin.db")

## Read added variables
sleep_rating <- read.csv("sleep_rating.csv", sep = ";")

## Save "Sleep" and stress columns
sleep_simp <- dbReadTable(garmin_db,"sleep")
sleep_events <- dbReadTable(garmin_db,"sleep_events")
daily_summ <- dbReadTable(garmin_db, "daily_summary")

## Combine in a new df sleep data with stress average from daily summary 
sleep_simp_stress <- cbind(sleep_simp, stress_avg = daily_summ$stress_avg)

## Add new variables to previous
sleep_simp_rate <- right_join(sleep_simp_stress, sleep_rating)

