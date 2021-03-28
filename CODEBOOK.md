# Coding Book for the Final Assignment of Getting and Cleaning Data Course

## What makes up the Original Data?

The original Data is a dataset which describes for 30 subjects the measurements on variables such as acceleration performed on their Samsung Galaxy S Phone which
are reflected through the measurement devices inside the phone such as the accelerometer or the gyroscope. More information on the data con be found on the
following link:

[Data used for the Coding Assignment](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### How have I modfied the original data?

The Original Data was modified by performing the following transformations:

1. Merging the testing and training datasets for X and Y.
2. Merging the Subject dataset with this dataset as well.
3. Changing the variable names included in the X and Y datasets for descriptive names, which were included in the feature data.
4. Changing the categorical numeric values of the Activity variable for literal descriptive values which were included in the activity_labels data file.
5. Selecting only the variables which indicate the mean or the standard deviation of a certain measurement.
6. Create a new dataset which for the variables Subject and Activity, which are our ID variables calculates the average of every variable we selected
  in the previous step. To do this we must melt and recast the dataset which we obtained in the previous step.
7. Create a csv file containg this tidy dataset, which I have named: `tidy_final_dataset.csv`and is uploaded in this repository as well.

The variables we have used are the following:

As ID Variables:

The first two columns of the dataset which are:

- Subject: Describes which Subject the data belongs to. The subjects are numbered 1 through 30.
- Activity: A descriptive name for the activity for which the measurements are being performed.


The measurement variables which are included in the features dataset are the following:

- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z
- tBodyGyro-std()-X
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z
- tBodyAccMag-mean()
- tBodyAccMag-std()
- tGravityAccMag-mean()
- tGravityAccMag-std()
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- tBodyGyroMag-mean()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()
- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z
- fBodyAcc-meanFreq()-X
- fBodyAcc-meanFreq()-Y
- fBodyAcc-meanFreq()-Z
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z
- fBodyAccJerk-meanFreq()-X
- fBodyAccJerk-meanFreq()-Y
- fBodyAccJerk-meanFreq()-Z
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z
- fBodyGyro-meanFreq()-X
- fBodyGyro-meanFreq()-Y
- fBodyGyro-meanFreq()-Z
- fBodyAccMag-mean()
- fBodyAccMag-std()
- fBodyAccMag-meanFreq()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std()
- fBodyBodyAccJerkMag-meanFreq()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroMag-meanFreq()
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std()
- fBodyBodyGyroJerkMag-meanFreq()


This sums up the variables used and changes made to these
