###Script for the Coding Assginment of Week 4 of Getting and Cleaning data Course

### Setting the working directory where I´ve downloaded the data files
### And making available the libraries we're going to use.

setwd("C:/Users/javie/OneDrive/Documents/R")

library(reshape2)

#### Importing the data in an efficient way

### First we import the training dataset and take a look at it

x_training_dataset <- read.table(paste(sep = "", "./UCI HAR Dataset/train/X_train.txt"))
y_training_dataset <- read.table(paste(sep = "", "./UCI HAR Dataset/train/y_train.txt"))

### Then we load the test data


x_testing_dataset <- read.table(paste(sep = "", "./UCI HAR Dataset/test/X_test.txt"))
y_testing_dataset <- read.table(paste(sep = "", "./UCI HAR Dataset/test/y_test.txt"))


### To complete the loading of the datasets we're gonna work with the most, we
### import the subjects that the dataset is made of as well.

Subject_Training <- read.table(paste(sep = "", "./UCI HAR Dataset/train/subject_train.txt"))
Subject_Testing <- read.table(paste(sep = "", "./UCI HAR Dataset/test/subject_test.txt"))

### STEP 1: Merging the test and training datasets in just one dataset

X_train_test <- rbind(x_training_dataset, x_testing_dataset)
Y_train_test <- rbind(y_training_dataset, y_testing_dataset)

Subject_train_test <- rbind(Subject_Training, Subject_Testing)

### STEP1.2
### TO create only one dataset, we merge the Subject, X and Y datasets
### with both the train and test data as well

Unified_Dataset <- cbind(Subject_train_test, Y_train_test, X_train_test)

### STEP 2: Extract only the variables which refer to mean and standard deviation

### In order to do this, we must first import the labels of the features and activities

feature_labels <- read.table(paste(sep = "", "./UCI HAR Dataset/features.txt"))

activity_labels <- read.table(paste(sep = "", "./UCI HAR Dataset/activity_labels.txt"))


###STEP 4
### Assign variable names to each and every variable in the dataset
### (We do this before finishing with step 2 because it makes more sense to me)
### Now we assign the subject, activity and feature names to the Unified dataset

feature_names <- as.character(feature_labels$V2)

colnames(Unified_Dataset)<- c("Subject", "Activity", feature_names)

###Back to STEP 2:

mean_var <- grepl(pattern = "mean()",x = names(Unified_Dataset),perl = FALSE, ignore.case = F)
std_var <- grepl(pattern = "std()",x = names(Unified_Dataset),perl = FALSE, ignore.case = F)

mean_or_std <- mean_var|std_var

Unified_mean_std <- Unified_Dataset[,mean_or_std]

### Now we add the columns which contained subject and activity data

Unified_mean_std<- cbind(Unified_Dataset[,1:2], Unified_mean_std)

###STEP 3

###Name each activity with its acording name

Activity_names <- as.character(activity_labels$V2)
Activity_numbers <- as.numeric(activity_labels$V1)
names(Activity_numbers) <- Activity_names

get_activity_name <- function(mykey, mylookupvector){
  return(names(mylookupvector[mykey]))
}

Activities <- get_activity_name(Unified_mean_std$Activity, Activity_numbers)
Unified_mean_std[,2]<- Activities

### STEP 5

### In this step we must create a new dataset that calculates the mean for each 
### subject, for each activity and each variable.

### The way to do this is by first melting the dataset, selecting subject,
### and activity as the ID variables

melted_df <- melt(Unified_mean_std, id = c("Subject", "Activity"))

tidy_final_df <-  dcast(melted_df, Subject + Activity ~ variable, mean)

write.table(tidy_final_df, file = "./tidy_final_dataset.txt", row.names = FALSE, quote = FALSE)

### Now we have a tidy dataframe, and have completed the assignment.
