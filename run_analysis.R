## Getting & Cleaning Data - Course Project
## run_analysis.R Script

## initializations
setwd("C:\\Users\\andy\\Dropbox\\Andy P\\Training\\Coursera\\DataCleaning\\Week4") #working directory
library(tidyr)
library(dplyr)
library(plyr)

## Description of the original source data can be found here:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## actual data for the project downloaded from here:
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## download raw data from source
download <- "./download.zip"  ##internal name of downloaded file
if (!file.exists(download)){
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",download,mode = "wb")
    unzip(download)
}

##### Part 1 - Merges the training and the test sets to create one data set
## read in relationship files
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activity_labels) <- c("activityid","activityName")

## read train datasets
results_train <- read.table("./UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE)
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
#assign column names
colnames(subject_train) <- "subjectid"
colnames(activity_train) <- "activityid"
colnames(results_train) <- features[,2]


## read test datasets
results_test <- read.table("./UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE)
activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
#assign clean column names
colnames(subject_test) <- "subjectid"
colnames(activity_test) <- "activityid"
colnames(results_test) <- features[,2]

## merge datasets together
all_train <- cbind(subject_train,activity_train,results_train)
all_test <- cbind(subject_test,activity_test,results_test)
# combine train and test file together
all_data <- rbind(all_train,all_test)


####### Part 2. Extracts only the measurements on the mean and standard deviation for each measurement.
all_colnames <- colnames(all_data)
my_cols <- grepl("subjectid|activityid|mean\\(\\)|std\\(\\)",all_colnames) #note: "() need to be escaped with double backslash "\\"
final_data <- all_data[,my_cols]


####### Part 3. Uses descriptive activity names to name the activities in the data set
final_data[,2] <- activity_labels[final_data[,2],2]
# rename column
colnames(final_data)[2] <- "activity"


####### Part 4. Appropriately label the data set with descriptive variable names
for (i in 1:length(colnames(final_data))){
  colnames(final_data)[i] <- gsub("\\(\\)","",colnames(final_data)[i])
  colnames(final_data)[i] <- gsub("^f","Frequency-",colnames(final_data)[i])
  colnames(final_data)[i] <- gsub("^t","Time-",colnames(final_data)[i])
}


###### Part 5. From the data set in step 4, creates a second, independent tidy data set with the 
######         average of each variable for each activity and each subject.

## group by first 2 columns, do colMeans on all other columns.
avg_data <- ddply(final_data, .(subjectid, activity), function(x) colMeans(x[, 3:length(colnames(final_data))]))

## write out the find "tidy" summary file
write.table(avg_data, './tidyData.txt',row.names=FALSE,sep='\t')


