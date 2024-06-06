# GGPLOT LIBRARY

# thyroid disease - https://www.kaggle.com/datasets/jainaru/thyroid-disease-data/data

# HR analytics dataset - 
#https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset/data

# 1. You will be required to retrieve the HR analytics employee attrition data set from 
#kaggle. Read the data into an R data frame and answer the following questions using
#`read.csv` and `ggplot2`. 
# UNCOMMENT AND FILL THE CODE BELOW

#install.packages("ggplot2")
#library(_____) # load the ggplot2 library

#hr_data = read.csv("data/HR-Employee-Attrition.csv")

## a. Plot a histogram to show the distribution of age among the employees.
# UNCOMMENT AND FILL THE CODE BELOW

ggplot(hr_data,
      aes(x=Age)) +
  labs(y="Count", title = "Distribution of Employees' age")+
  geom_histogram(fill="cyan", color="black")

## b. Draw a boxplot to show the employees' hourly rate in the sales department. 
#Are there any outliers? What is the median employees' hourly rate from the box plot? 
# UNCOMMENT AND FILL CODE BELOW

ggplot(hr_data,
       aes(y=HourlyRate)) +
  labs(x="Hourly Rate", title = "Hourly Rate Distribution") + 
  geom_boxplot(fill="green", color="black")

## c. How does age relate to monthly income? Are younger employees paid less? 
#Plot a scatter plot to show the relationship between employees monthly income 
#and age. **Note**:*Age should be in the x axis*
# UNCOMMENT AND FILL CODE BELOW 

ggplot(hr_data,
       aes(x=Age, y=MonthlyIncome)) +
  labs(x="Age", y="Monthly Income", 
       title = "Relationship between Age and Monthly Income") +
  geom_point(color="blue")

## d. How many male and female employees are their in the company? Are female 
#employees more than male employees. Plot a bar chart to show. 
# UNCOMMENT AND FILL CODE BELOW

# Data preparation
gender_count = select(hr_data, Gender, Gender) %>%
  group_by(Gender) %>%
  tally()

# Plotting
ggplot(gender_count,
       aes(x=Gender, y=n)) +
  labs(x="Gender", y="Count",
       title="Male and Female Employees at IBM") +
  geom_col(color="black", fill="blue")
  


## e. Are male employees retained retained more than the female employees in the
# company. Filter to retrieve the retained employees("Attrition="No") only. 
# UNCOMMENT AND FILL THE CODE

# Prepare the data to find the count of retained employees by gender
retained_by_gender = select(hr_data,
                            Gender, Attrition) %>%
  filter(Attrition=="No") %>%
  group_by(Gender) %>%
  tally()

# Plot the results 
ggplot(retained_by_gender,
       aes(x=Gender, y=n)) +
  labs(x="Gender", y="Count",
       title="Retained Male and Female Employees at IBM") +
  geom_col(color="green", fill="brown")

## f. What is the marital status of the employees in the Sales department? 
#Filter the data to retrieve the sales department then plot the value count of 
#each marital status in the filtered data set on a pie chart. 
# UNCOMMENT AND FILL THE CODE

# Prepare the Sales department data 
data1 = select(hr_data,
               Department, MaritalStatus) %>%
  filter(Department == "Sales") %>%
  group_by(MaritalStatus) %>%
  tally()

# Plot the data 
ggplot(data1,
       aes(x="", y=n, fill=MaritalStatus)) +
  geom_bar(stat = "identity", width=1) +
  labs(title="Composition of different Marital Status in the Sales department")+
  coord_polar("y") +
  theme_void() # to remove unnecessary axis and background

## g. Finally plot a heatmap to show the correlation of numeric columns. 
# UNCOMMENT AND FILL THE CODE BELOW


#2. The thyroid disease contains 13 clinicopathologic features aiming to predict recurrence 
#of well differentiated thyroid cancer. The data set was collected in duration of 15 years 
# and each patient was followed for at least 10 years. The data was procured from 
#thyroid disease datasets provided by the UCI Machine Learning Repository. 
#You will load the csv file into R data frame, `read.csv`, and solve the following questions. 
    
## a. After the initial thyroid cancer treatment, has the disease recurred or not? 
#Compare the two categories of patients (recurred and not recurred) using a bar chart.
## b. After physical examination of the thyroid gland and the surrounding structures, 
#there were patients who had multinodular goiter, other single nodular gioters while rest of the patients had other complications. What are the composition of the patients? Plot a pie chart to show. 
## c. Plot a grouped bar chart to show the average risk and age of thyroid disease 
#between males and female patient. Risk and Age columns against gender. 
## d. Plot a desnsity plot to show the distribution of age. Which age group is mostly 
#affected by thyroid disease? 