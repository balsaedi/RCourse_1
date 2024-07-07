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

## b. Read the excel file to a data frame using `read_excel()` function. Store the 
#data frame in a variable, `yahoo_data`. 
# UNCOMMENT AND FILL THE CODE BELOW

#yahoo_data = read_excel(fill with file path)


## c. Use `str()` command to get a glimpse of the data set. 
# UNCOMMENT AND FILL THE CODE BELOW

# str(_____)

## d. Show the first 4 records and the last 10 records of the `yahoo_data` using
#the `head()` and `tail()` command respectively. 
# UNCOMMENT AND FILL THE CODE BELOW

#head(_____, _)
#tail(_______, __)

## e. Calculate the total null values in the `yahoo_data` using the `sum()` 
#along with `is.na()` functions. 
# UNCOMMENT AND FILL THE CODE BELOW

# sum(is.na(______))

## f. Find the total duplicated observations in the `yahoo_data` with `sum()` 
#and `duplicated()` commands. 
# UNCOMMENT AND FILL THE CODE BELOW

#sum(duplicated(______))

# 2. In this second part of the challenge, you will be required to download a 
#kaggle data set - the vehicle population statistics csv file from 
#https://www.kaggle.com/datasets/prasad22/vehicle-population-statistics
#You will use the data set to answer the following questions. 

## a. Read the data set to a data frame using the `read.csv` inbuilt function. 
#Store the data frame in a variable `vehicle_data`. 
# UNCOMMENT AND FILL THE CODE BELOW

# vehicle_data = read.csv("fill with file path")

## b. Display the first 6 rows and the last 3 rows using the `head()` and 
#`tail()` function respectively. 
# UNCOMMENT AND FILL THE CODE BELOW

#head(_____, _)
#tail(_____, _)

## c. Show the first 10 observations in the `"Scooters"` column. 
# UNCOMMENT AND FILL THE CODE BELOW

#head(_______$______, __)

#or

# _____$_____[1:10]

## d. What are the number of Jeeps per Region. Use table functions. 
#**Hint**:*Refer from "What is the survival rate by gender?" in the content above*
# UNCOMMENT AND FILL THE CODE BELOW

# table(vehicle_data$Jeeps, vehicle_data$Region)

## e. What are the distinct categories in the `vehicle_data`.
# UNCOMMENT AND FILL THE CODE BELOW

# unique(______$_____)