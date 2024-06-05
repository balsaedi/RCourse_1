# DPLYR LIBRARY

#Palmer Archipelago(Antarctica) Penguin data - 
#https://www.kaggle.com/datasets/parulpandey/palmer-archipelago-antarctica-penguin-data


# 1. `ToothGrowth` is one of the freely available data sets in base R. Go on and;

## a. Load the `ToothGrowth` data set. 
# UNCOMMENT AND FILL THE CODE BELOW

#data("__________")

## b. Display the first 5 records.

# head(______, _)
## c. Use the function `write.table` to write the data set to a local file. 
# UNCOMMENT AND FILL THE CODE BELOW

#write.table(___, "file path to write data", 
#            append = FALSE, quote=FALSE, row.names = FALSE)


# 2. You will use the Palmer Archipelago(Antarctica) Penguin data set from kaggle to 
#practice various data manipulation techniques using `dplyr` verbs in R. Ensure You load 
#the data as `penguin_data` and necessary packages before working on the following questions below;
# UNCOMMENT AND FILL THE CODE BELOW

#install.packages("dplyr") # install dplyr library
#library(_____)

#penguin_data = read.csv("fill with the file path")


## a. Using `select()` verb, create a new data set that contains only the columns
#`Species, Island, Flipper.Length..mm.` and name the dataframe `selected_features`. 
#Show the first 10 observations of `selected_features`.
# UNCOMMENT AND FILL THE CODE BELOW

#selected_features = select(_______, # data frame name  
#                           _______, ______, ____________) # fill with column names

## b. Filter the Penguin data set to retain only the "Adelie Penguin (Pygoscelis adeliae)" species that live in 
#"Torgersen" island. Use `filter()` function. 
#Name the resultant data set `Adelie_data` and show its first 7 records
# UNCOMMENT AND FILL THE CODE BELOW

#Adelie_data = filter(______, # insert the data frame name
#                     ______=="Adelie Penguin (Pygoscelis adeliae)") # complete the condition

#head(Adelie_data, 7)


## c. Arrange the Penguin data set according to `Flipper.Length..mm.` in descending order. 
#Use `arrange()` verb. Name the resultant data frame, `ordered_penguin_data` and
#show the first five rows
# UNCOMMENT AND FILL THE CODE BELOW

#ordered_penguin_data = arrange(_______, # insert the data frame name
#                               desc(_____________)) # the condition

#head(___________, 5)

## d. Using the `mutate()` function, add a new column called `Flipper.Length..cm.` derived 
#from `Flipper.Length..mm.` by 10. Name the data set, `modified_penguin_data` and show the first rows
# UNCOMMENT AND FILL CODE BELOW

#modified_penguin_data = mutate(______________, #insert the data frame name
#                               Flipper.Length..cm. = ___________/10) # the condition

# head(modified_penguin_data, _)

## e. Group the data set according to `island`. Name the resultant data set, `penguin_data_by_island` 
#print the data(first 10 rows) to the console.
# UNCOMMENT AND FILL CODE BELOW

#penguin_data_by_island = group_by(_____________, # insert the data frame name
#                                  ________) # the column to be grouped by

# head(____________________, 10)



## f. For each species and island, calculate the mean `bill_length_mm` and the 
#observations count. 


# 3. In this activity, you will chain at least four `dplyr` verbs to achieve the desired 
#outcome. 
## - Select the columns, `island, body_mass_g, species, bill_length_mm`
## - Filter the selected data set to include penguins that have a bill length greater than 40mm
## - Create a new column/variable that will convert `bill_length_mm` to `bill_length_cm` i.e divide `bill_length_mm` by 10 to come up with `bill_length_cm`. 
## - Order the resulting data set by `body_mass_g` in descending order. 
