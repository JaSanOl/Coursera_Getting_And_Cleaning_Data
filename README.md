# Coursera_Getting_And_Cleaning_Data
A repository for the Coursera Getting and Cleaning Data Course Final coding Project

The R script `run_analysis.R` which is uploaded into this repository and completes the coding Project does the following:

1. Sets the working directory where I've downloaded the files from the link provided by Coursera, and opens the librarys that will be used in the script.
2. Imports the training and testing datasets for X and Y,as well as the subjects, from this working directory into R.
3. Merges the X, Y and Subject datasets for training and testing into only one dataset, named "Unified_Dataset".
4. Loads the activities and features information in the same way we did with the testing and training data into R
5. Once we've done this we can give activity names to each activity
6. And we can also name the variables according to what they represent in the dataset
7. FInally, after naming the variables, and giving every activity its name, we can create the tidy dataset by melting and casting the previous dataset, to obtain the average value of each variable.
