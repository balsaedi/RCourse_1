# READ DATA FROM FILE

# excel data - https://www.kaggle.com/datasets/suruchiarora/yahoo-finance-dataset-2018-2023
# csv data - https://www.kaggle.com/datasets/prasad22/vehicle-population-statistics

# 1. In this question you will be required to download kaggle data set, the Yahoo data 2018-2023 from [here](https://www.kaggle.com/datasets/suruchiarora/yahoo-finance-dataset-2018-2023). Follow the instructions below to work on the data set. 

## a. Install and load the `readxl` library. 
## b. Read the excel file to a data frame using `readxl()` function. Store the data frame in a variable, `yahoo_data`. 
## c. Use `str()` command to get a glimpse of the dataset. 
## d. Show the first 4 records and the last 10 records of the `yahoo_data` using the `head()` and `tail()` command respectively. 
## e. Calculate the total null values in the `yahoo_data` using the `sum()` along with `is.na()` functions. 
## f. Find the total duplicated observations in the `yahoo_data` with `sum()` and `duplicated()` commands. 

# 2. In this second part of the challenge, you will be required to download a kaggle data set - the vehicle population statistics csv file from [here](https://www.kaggle.com/datasets/prasad22/vehicle-population-statistics). You will use the data set to answer the following questions. 

## a. Read the data set to a data frame using the `read.csv` inbuilt function. Store the data frame in a variable `vehicle_data`. 
## b. Display the first 6 rows and the last 3 rows using the `head()` and `tail()` function. 
## c. Show the first 10 observations in the `"Scooters"` column. 
## d. What are the number of Jeeps per Region. Use table functions. **Hint**:*Refer from "What is the survival rate by gender?" in the content above*
## e. What are the distinct categories in the `vehicle_data`.