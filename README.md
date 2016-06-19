# Getting and Cleaning Data - Course Project
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

This repo contains the script for the final project: Getting and Cleaning Data course
Inside there's a single .R script called 'run_analysis.'

The script is pretty well docummented, however I present here a breakdown of the major sections:

1. Check if the dataset is already downloaded to the working directory. Download it fom internet if it's not
2. Check if the .zip file from step 1 is already uncompressed. If not, then the file is unzipped
3. The above 2 steps are expressed in function *readyMyData*
4. Using regex, we calculate the features names that are going to be used
5. A function called *readDatasetByType* is provided to read the data by specifying the type (train or test). The data is read, filtered by the features and merge into one single table
6. We then read the train and test data using the *readDatasetByType* function. We set the column names accordignly and use factors to use labels instead of numbers in the activity.
7. Finally some aggregation functions are called and we save the data to tidy.txt file
