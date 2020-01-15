## This script provides a solution for the course project from the class
## "Getting and Cleaning Data" on Coursera.

library(reshape2)

# Download and unzip the dataset zip file

file_dir <- 'UCI HAR Dataset'
file_name <- 'dataset.zip'


if(!file.exists(file_dir)) {
  if(!file.exists(file_name)) {
    download.file(
      'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',
      file_name ) }
   unzip(file_name) }

# 1. Merges the training and the test sets to create one data set.

x_test <- read.table(file.path(file_dir, 'test', 'X_test.txt'))
y_test <- read.table(file.path(file_dir, 'test', 'y_test.txt'))
subj_test <- read.table(file.path(file_dir, 'test', 'subject_test.txt'))

x_train <- read.table(file.path(file_dir, 'train', 'X_train.txt'))
y_train <- read.table(file.path(file_dir, 'train', 'y_train.txt'))
subj_train <- read.table(file.path(file_dir, 'train', 'subject_train.txt'))

test_train_data <- rbind(x_train, x_test)
activities_data <- rbind(y_train, y_test)
subj_data <- rbind(subj_train, subj_test)

full_data <- cbind(subj_data, activities_data, test_train_data)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

features <- read.table(file.path(file_dir, 'features.txt'))

req_feat <- features[grep('-(mean|std)\\(\\)', features[, 2 ]), 2]
full_data <- full_data[, c(1, 2, req_feat)]

# 3. Uses descriptive activity names to name the activities in the data set


activities <- read.table(file.path(file_dir, 'activity_labels.txt'))

full_data[, 2] <- activities[full_data[,2], 2]

# 4. Appropriately labels the data set with descriptive variable names. 

colnames(full_data) <- c(
  'subject',
  'activity',
  gsub('\\-|\\(|\\)', '', as.character(req_feat))
)

full_data[, 2] <- as.character(full_data[, 2])

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


melted_data <- melt(full_data, id = c('subject', 'activity'))

mean_data <- dcast(melted_data, subject + activity ~ variable, mean)

write.table(mean_data, file=file.path("tidy_data.txt"), row.names = FALSE, quote = FALSE)
