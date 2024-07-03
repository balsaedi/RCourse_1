# BIOCONDUCTOR LIBRARY

# In this code challenge you will be required to installed the Bioconductor (just execute the code below). 
#Thereafter, you will install `MultiAssayExperiment` package that is part of the 
# Bioconductor project. Below is the code to install the `MultiAssayExperiment` locally;

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("MultiAssayExperiment")

# You will load the package along with the ggplot2 library and work on the `genCov` data. `genCov` data is an inbuilt data set from `MultiAssayExperiment` that contains simulated data showcasing the integration and analysis of multiple types of data from different assays. Challenge yourself with the following activities to get a clear understanding of genomic coverage data;

## 1. Load the `genCov` using the code, `data("miniACC", package = "MultiAssayExperiment")`.  
## 2. Check the structure `str()` of the data set and calculate the descriptive statistics.
## 3. Extract the coverage data with code `experiments(genCov)[["coverage"]]` and store in a variable `coverage_data`. Display the first 6 records of the the data. 
## 4. Extract and inspect the genomic ranges from `genCov` with `rowRanges()` command. Display the first 6 genomic ranges. 
## 5. Plot a line chart of the `"Coverage"` against the `"Genomic Position"`. 
## 6. Calculate the average coverage for each sample in the `coverageData` using `colMeans()` command. Display the result on a bar chart. 



## 1. Load the miniACC dataset using the code: data("miniACC", package = "MultiAssayExperiment").
# FILL CODE BELOW
data("miniACC", package = "MultiAssayExperiment")

## 2. Check the structure str() of the dataset.
# CODE BELOW HERE 
# Check the structure
str(miniACC)


## 3. Extract the RNASeq2GeneNorm data using experiments(miniACC)[["RNASeq2GeneNorm"]] and store it in a variable `rna_data`. Display the first 6 records of the data.
# CODE BELOW HERE 
# Extract RNASeq2GeneNorm data
rna_data <- experiments(miniACC)[["RNASeq2GeneNorm"]]

# Display the first 6 records
head(rna_data)

## 4. Extract and inspect the sample metadata, displaying the first 6 records:
#CODE BELOW
# Extract sample metadata
sample_metadata <- colData(miniACC)

# Display the first 6 records
head(sample_metadata)


