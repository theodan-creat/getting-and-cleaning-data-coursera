# Code Book for Coursera "Getting and Cleaning Data" Class course project

This code book gives information about the data included in the final data set stored in the `tidy_data.txt` file.


The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement.
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names.
    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Identifiers

 - `subject` The ID of the test subject, `integer` in the range 1 - 30
 - `activity` , `string` identifying the activity the test subject was performing during measurements. It can assume the values:
 
   - Walking
   - Walking Upstairs
   - Walking Downstairs
   - Sitting
   - Standing
   - Laying

## Measurements

Listed below you may find the mean and the standard deviation of the corresponding variables. Detailed informations can be found in the readme file of the source data.

 - tBodyAccmeanX
 - tBodyAccmeanY
 - tBodyAccmeanZ
 - tBodyAccstdX
 - tBodyAccstdY
 - tBodyAccstdZ
 - tGravityAccmeanX
 - tGravityAccmeanY
 - tGravityAccmeanZ
 - tGravityAccstdX
 - tGravityAccstdY
 - tGravityAccstdZ
 - tBodyAccJerkmeanX
 - tBodyAccJerkmeanY
 - tBodyAccJerkmeanZ
 - tBodyAccJerkstdX
 - tBodyAccJerkstdY
 - tBodyAccJerkstdZ
 - tBodyGyromeanX
 - tBodyGyromeanY
 - tBodyGyromeanZ
 - tBodyGyrostdX
 - tBodyGyrostdY
 - tBodyGyrostdZ
 - tBodyGyroJerkmeanX
 - tBodyGyroJerkmeanY
 - tBodyGyroJerkmeanZ
 - tBodyGyroJerkstdX
 - tBodyGyroJerkstdY
 - tBodyGyroJerkstdZ
 - tBodyAccMagmean
 - tBodyAccMagstd
 - tGravityAccMagmean
 - tGravityAccMagstd
 - tBodyAccJerkMagmean
 - tBodyAccJerkMagstd
 - tBodyGyroMagmean
 - tBodyGyroMagstd
 - tBodyGyroJerkMagmean
 - tBodyGyroJerkMagstd
 - fBodyAccmeanX
 - fBodyAccmeanY
 - fBodyAccmeanZ
 - fBodyAccstdX
 - fBodyAccstdY
 - fBodyAccstdZ
 - fBodyAccJerkmeanX
 - fBodyAccJerkmeanY
 - fBodyAccJerkmeanZ
 - fBodyAccJerkstdX
 - fBodyAccJerkstdY
 - fBodyAccJerkstdZ
 - fBodyGyromeanX
 - fBodyGyromeanY
 - fBodyGyromeanZ
 - fBodyGyrostdX
 - fBodyGyrostdY
 - fBodyGyrostdZ
 - fBodyAccMagmean
 - fBodyAccMagstd
 - fBodyBodyAccJerkMagmean
 - fBodyBodyAccJerkMagstd
 - fBodyBodyGyroMagmean
 - fBodyBodyGyroMagstd
 - fBodyBodyGyroJerkMagmean
 - fBodyBodyGyroJerkMagstd
