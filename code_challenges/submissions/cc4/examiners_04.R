# READ DATA FROM FILE

# excel data - https://www.kaggle.com/datasets/suruchiarora/yahoo-finance-dataset-2018-2023
# csv data - https://www.kaggle.com/datasets/prasad22/vehicle-population-statistics

# 1. In this question you will be required to download kaggle data set, the 
#Yahoo data 2018-2023 from 
#https://www.kaggle.com/datasets/suruchiarora/yahoo-finance-dataset-2018-2023
#Follow the instructions below to work on the data set. 

## a. Install and load the `readxl` library. 
# UNCOMMENT AND FILL THE CODE BELOW

#install.packages("_____")
#library(____)
library(readxl)

## b. Read the excel file to a data frame using `read_excel()` function. Store the 
#data frame in a variable, `yahoo_data`. 
# UNCOMMENT AND FILL THE CODE BELOW

#yahoo_data = read_excel(fill with file path)
yahoo_data = read_excel("data/yahoo_data.xlsx")

## c. Use `str()` command to get a glimpse of the data set.
# UNCOMMENT AND FILL THE CODE BELOW

# str(_____)
str(yahoo_data)
# PASS

## d. Show the first 4 records and the last 10 records of the `yahoo_data` using
#the `head()` and `tail()` command respectively. Store them in variables named, `head_yahoo_data` and `tail_yahoo_data` respectively. 
# UNCOMMENT AND FILL THE CODE BELOW

#head_yahoo_data = head(_____, _)
#tail_yahoo_data = tail(_______, __)
head_yahoo_data = head(yahoo_data, 4)
tail_yahoo_data = tail(yahoo_data, 10)

## e. Calculate the total null values in the `yahoo_data` using the `sum()` 
#along with `is.na()` functions. 
# UNCOMMENT AND FILL THE CODE BELOW

# sum(is.na(______))

## f. Find the total duplicated observations in the `yahoo_data` with `sum()` 
#and `duplicated()` commands. Store in a varaible named `total_duplicates`
# UNCOMMENT AND FILL THE CODE BELOW

#total_duplicates = sum(duplicated(______))
total_duplicates = sum(duplicated(yahoo_data))

# 2. In this second part of the challenge, you will be required to download a 
#kaggle data set - the vehicle population statistics csv file from 
#https://www.kaggle.com/datasets/prasad22/vehicle-population-statistics
#You will use the data set to answer the following questions. 

## a. Read the data set to a data frame using the `read.csv` inbuilt function. 
#Store the data frame in a variable `vehicle_data`. 
# UNCOMMENT AND FILL THE CODE BELOW

# vehicle_data = read.csv("fill with file path")
vehicle_data = read.csv("data/Vehicle Population Statistics.csv")

## b. Display the first 6 rows and the last 3 rows using the `head()` and 
#`tail()` function respectively. Name them `head_vehicle_data` and `tail_vehicle_data` respectively. 
# UNCOMMENT AND FILL THE CODE BELOW

#head_vehicle_data = head(_____, _)
head_vehicle_data = head(vehicle_data, 6)
#tail_vehicle_data = tail(_____, _)
tail_vehicle_data = tail(vehicle_data, 3)

## c. Show the first 10 observations in the `"Scooters"` column. Name it `scooters_top_10`
# UNCOMMENT AND FILL THE CODE BELOW

#scooters_top_10 = head(_______$______, __)
scooters_top_10 = head(vehicle_data$Scooters, 10)

#or

#scooters_top_10 = _____$_____[1:10]
scooters_top_10 = vehicle_data$Scooters[1:10]

## d. What are the number of Jeeps per Region. Use table functions. 
#**Hint**:*Refer from "What is the survival rate by gender?" in the content above*
# UNCOMMENT THE CODE BELOW

# table(vehicle_data$Jeeps, vehicle_data$Region)
table(vehicle_data$Jeeps, vehicle_data$Region)
# PASS

## e. What are the distinct categories in the `vehicle_data`. Name it `distinct_categories`.
# UNCOMMENT AND FILL THE CODE BELOW

# distinct_categories = unique(______$_____)
distinct_categories = unique(vehicle_data$Category)
