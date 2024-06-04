# DPLYR LIBRARY

# 1. `ToothGrowth` is one of the freely available data sets in base R. Go on and;

## a. Load the `ToothGrowth` data set. 
## b. Display the first 5 records.
## c. Use the function `write.table` to write the data set to a local file. 


# 2. You will use the Palmer Archipelago(Antarctica) Penguin data set from kaggle to 
#practice various data manipulation techniques using `dplyr` verbs in R. Ensure You load 
#the data and necessary packages before working on the following questions below;

## a. Using `select()` verb, create a new data set that contains only the columns `species, 
#island, bill_length_mm`. 
## b. Filter the Penguin data set to retain only the "Adelie" species that live in 
#"Torgersen" island. Use `filter()` function.
## c. Arrange the Penguin data set according to `bill_lenghth_mm` in descending order. 
#Use `arrange()` verb.
## d. Using the `mutate()` function, add a new column called `bill_length_cm` derived 
#from `bill_length_mm` by 10. 
## e. Group the data set according to `island`. 
## f. For each species and island, calculate the mean `bill_length_mm` and the 
#observations count. 


# 3. In this activity, you will chain at least four `dplyr` verbs to achieve the desired 
#outcome. 
## - Select the columns, `island, body_mass_g, species, bill_length_mm`
## - Filter the selected data set to include penguins that have a bill length greater than 40mm
## - Create a new column/variable that will convert `bill_length_mm` to `bill_length_cm` i.e divide `bill_length_mm` by 10 to come up with `bill_length_cm`. 
## - Order the resulting data set by `body_mass_g` in descending order. 
