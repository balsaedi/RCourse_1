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
library(ggplot2)
library(dplyr)

#hr_data = read.csv("data/HR-Employee-Attrition.csv")
hr_data = read.csv("data/HR-Employee-Attrition.csv")

## a. Plot a histogram to show the distribution of age among the employees. Name the chart `hist1a`.
# UNCOMMENT AND FILL THE CODE BELOW

hist1a = ggplot(hr_data,
                aes(x=Age)) +
  labs(y="Count", title = "Distribution of Employees' age")+
  geom_histogram(fill="cyan", color="black")

hist1a

## b. Draw a boxplot to show the employees' hourly rate in the sales department. 
#Are there any outliers? What is the median employees' hourly rate from the box plot?.
# Name it `box1b`.
# UNCOMMENT AND FILL CODE BELOW

box1b = ggplot(hr_data,
               aes(y=HourlyRate)) +
  labs(x="Hourly Rate", title = "Hourly Rate Distribution") + 
  geom_boxplot(fill="green", color="black")

box1b

## c. How does age relate to monthly income? Are younger employees paid less? 
#Plot a scatter plot to show the relationship between employees monthly income 
#and age. **Note**:*Age should be in the x axis*. Name it `scatter1c`.
# UNCOMMENT AND FILL CODE BELOW 

scatter1c = ggplot(hr_data,
                   aes(x=Age, y=MonthlyIncome)) +
  labs(x="Age", y="Monthly Income", 
       title = "Relationship between Age and Monthly Income") +
  geom_point(color="blue")

scatter1c

## d. How many male and female employees are their in the company? Are female 
#employees more than male employees. Plot a bar chart to show. Name it `barchart1d`. 
# UNCOMMENT AND FILL CODE BELOW

# Data preparation
gender_count = select(hr_data, Gender, Gender) %>%
  group_by(Gender) %>%
  tally()

# PASS

# Plotting
barchart1d = ggplot(gender_count,
                    aes(x=Gender, y=n)) +
  labs(x="Gender", y="Count",
       title="Male and Female Employees at IBM") +
  geom_col(color="black", fill="blue")

barchart1d

## e. Are male employees retained retained more than the female employees in the
# company. Filter to retrieve the retained employees("Attrition="No") only. Name it `bar1e`.
# UNCOMMENT AND FILL THE CODE

# Prepare the data to find the count of retained employees by gender
retained_by_gender = select(hr_data,
                            Gender, Attrition) %>%
  filter(Attrition=="No") %>%
  group_by(Gender) %>%
  tally()

# PASS

# Plot the results 
barchart1e = ggplot(retained_by_gender,
                    aes(x=Gender, y=n)) +
  labs(x="Gender", y="Count",
       title="Retained Male and Female Employees at IBM") +
  geom_col(color="green", fill="brown")

barchart1e

## f. What is the marital status of the employees in the Sales department? 
#Filter the data to retrieve the sales department then plot the value count of 
#each marital status in the filtered data set on a pie chart. Name it `pie1f`.
# UNCOMMENT AND FILL THE CODE

# Prepare the Sales department data 
data1 = select(hr_data,
               Department, MaritalStatus) %>%
  filter(Department == "Sales") %>%
  group_by(MaritalStatus) %>%
  tally()

# Plot the data 
pie1f = ggplot(data1,
               aes(x="", y=n, fill=MaritalStatus)) +
  geom_bar(stat = "identity", width=1) +
  labs(title="Composition of different Marital Status in the Sales department")+
  coord_polar("y") +
  theme_void() # to remove unnecessary axis and background

pie1f

## g. Finally plot a heatmap to show the correlation of numeric columns. Name the plot `heatmap1`.
# UNCOMMENT AND FILL THE CODE BELOW

# install.packages("tidyverse")
library(tidyverse)

num_cols <- unlist(lapply(hr_data, is.numeric))# Identify numeric columns
hr_data_num <- hr_data[ , num_cols]  #Only select those numeric colmns

# Calculate correlation matrix
cor_matrix <- cor(hr_data_num)

# Convert correlation matrix to long format
cor_matrix_long <- as.data.frame(as.table(cor_matrix))
colnames(cor_matrix_long) <- c("Variable1", "Variable2", "Correlation")

# Plot heatmap
ggplot(cor_matrix_long, aes(Variable1, Variable2, fill = Correlation)) +
  geom_tile() +
  scale_fill_gradient2(low = "blue", mid = "white", high = "red", midpoint = 0,
                       limits = c(-1, 1), na.value = "grey50",
                       guide = guide_colorbar(title = "Correlation")) +
  labs(title = "Correlation Heatmap", x = "", y = "") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#2. The thyroid disease contains 13 clinicopathologic features aiming to predict
#recurrence of well differentiated thyroid cancer. The data set was collected in
#duration of 15 years and each patient was followed for at least 10 years. The
#data was procured from thyroid disease data sets provided by the UCI Machine 
#Learning Repository. You will load the csv file into R data frame, `read.csv`, 
#and solve the following questions. 

# UNCOMMENT THE CODE BELOW 
#thyroid_data = read.csv("data/Thyroid_Diff.csv")
thyroid_data = read.csv("data/Thyroid_Diff.csv")

## a. After the initial thyroid cancer treatment, has the disease recurred or not? 
#Compare the two categories of patients (recurred and not recurred) using a bar chart.
# Name it `barchart2a`.
# UNCOMMENT AND FILL CODE BELOW

# Data preparation 
recurred_notrecurred_data = select(thyroid_data, Recurred) %>%
  group_by(Recurred) %>%
  tally()

# Plotting
barchart2a = ggplot(recurred_notrecurred_data,
                    aes(x=Recurred, y=n)) +
  labs(x="Recurred", y="Count",
       title="Has the disease recurred after the initial treatment?") +
  geom_col(color="black", fill="purple")

barchart2a

## b. After physical examination of the thyroid gland and the surrounding structures,
#there were patients who had multinodular goiter, other single nodular gioters 
#while rest of the patients had other complications. What are the composition of
#the patients? Plot a pie chart to show. Name it `pie2b`.
# UNCOMMENT AND FILL CODE BELOW

# Prepare the Sales department data 
complications = select(thyroid_data,
                       Physical.Examination) %>%
  group_by(Physical.Examination) %>%
  tally()

# Plot the data 
pie2b = ggplot(complications,
               aes(x="", y=n, fill=Physical.Examination)) +
  geom_bar(stat = "identity", width=1) +
  labs(title="Composition of different complications from Physical Examination after treatment")+
  coord_polar("y") +
  theme_void() # to remove unnecessary axis and background

pie2b


## c. Plot a grouped bar chart to show the average risk and age of thyroid disease 
#between males and female patient. Risk and Age columns against gender.
# UNCOMMENT AND FILL THE CODE BELOW
# Name it `grouped_barchart2c`.


# Plotting the data
grouped_barchart2c = ggplot(thyroid_data, 
                            aes(x=Gender, y=Age))+ #graph aesthetics
  labs(x="Gender", y="Average age", 
       title="Average age by gender for thyroid patients")+ #graph labels
  geom_col(position="dodge")+aes(fill=Risk)

grouped_barchart2c


## d. Plot a density plot to show the distribution of age. Which age group is mostly 
#affected by thyroid disease? . Name it `density_plot2d`.
# UNCOMMENT AND FILL CODE BELOW

density_plot2d = ggplot(thyroid_data, aes(x = Age)) +
  geom_density(fill = "blue", alpha = 0.5) +
  ggtitle("Distribution of Age among patients") +
  xlab("Age") +
  ylab("Density")

density_plot2d
