# Getting and Cleaning Data - Course Project

## Description / Background:
Full description/Background for this project can be found in the instructions file found here: https://github.com/apulaski/GettingAndCleaningData-CourseProject/blob/master/Instructions.md

The data for this project was sources from the following data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and the description of the input data can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The following tables from the input source were used in this project:
features.txt
activity_labels.txt
subject_train.txt
x_train.txt
y_train.txt
subject_test.txt
x_test.txt
y_test.txt

## Additional Resources Required:
In addition to the source data, the following R library will need to be loaded to execute the R script.  The library() statements are included in the R script:
- tidyr
- dplyr
- plyr

##Variables:
Descriptive variables in the output files are:
subjectid: identifying the subject
activity: describing the 6 activity states (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)

All time based metrics are preceeded in the variable names with "Time",
While all frequence variables are preceeded with "Frequency"

The data frame "final_data" conrtains the the detailed data of each mean and standard deviation for each original observation.
The data from "avg_data" contains the summary mean for all metrics groubed by subject (integer) and activity (character).  This data is also included in GitHub as "tidyData.txt

##R Script:
The R script file s broken out into 5 section correcsponding to each of the 5 steps in the instructions for this project.

The following interstisial data frames are also created within the R script:
all_train: the combination of the subject, activities and results in the training set
all_test: the combination of the subject, activities and results in the testing set
all_data: the combination of the trining set and test set
final_data: final "tidy" data of all observations after limiting the columns to Means and Standard Deviation columns and cleaning up columns and names.
avg_data: the final "tidy" data of averages when the data is grouped by subject and activity.  This data is also included as the file "tidyData.txt" in github

The list of variables in the final tidyData.txt file are as follows:
 [1] "subjectid"                          "activity"                          
 [3] "Time-BodyAcc-mean-X"                "Time-BodyAcc-mean-Y"               
 [5] "Time-BodyAcc-mean-Z"                "Time-BodyAcc-std-X"                
 [7] "Time-BodyAcc-std-Y"                 "Time-BodyAcc-std-Z"                
 [9] "Time-GravityAcc-mean-X"             "Time-GravityAcc-mean-Y"            
[11] "Time-GravityAcc-mean-Z"             "Time-GravityAcc-std-X"             
[13] "Time-GravityAcc-std-Y"              "Time-GravityAcc-std-Z"             
[15] "Time-BodyAccJerk-mean-X"            "Time-BodyAccJerk-mean-Y"           
[17] "Time-BodyAccJerk-mean-Z"            "Time-BodyAccJerk-std-X"            
[19] "Time-BodyAccJerk-std-Y"             "Time-BodyAccJerk-std-Z"            
[21] "Time-BodyGyro-mean-X"               "Time-BodyGyro-mean-Y"              
[23] "Time-BodyGyro-mean-Z"               "Time-BodyGyro-std-X"               
[25] "Time-BodyGyro-std-Y"                "Time-BodyGyro-std-Z"               
[27] "Time-BodyGyroJerk-mean-X"           "Time-BodyGyroJerk-mean-Y"          
[29] "Time-BodyGyroJerk-mean-Z"           "Time-BodyGyroJerk-std-X"           
[31] "Time-BodyGyroJerk-std-Y"            "Time-BodyGyroJerk-std-Z"           
[33] "Time-BodyAccMag-mean"               "Time-BodyAccMag-std"               
[35] "Time-GravityAccMag-mean"            "Time-GravityAccMag-std"            
[37] "Time-BodyAccJerkMag-mean"           "Time-BodyAccJerkMag-std"           
[39] "Time-BodyGyroMag-mean"              "Time-BodyGyroMag-std"              
[41] "Time-BodyGyroJerkMag-mean"          "Time-BodyGyroJerkMag-std"          
[43] "Frequency-BodyAcc-mean-X"           "Frequency-BodyAcc-mean-Y"          
[45] "Frequency-BodyAcc-mean-Z"           "Frequency-BodyAcc-std-X"           
[47] "Frequency-BodyAcc-std-Y"            "Frequency-BodyAcc-std-Z"           
[49] "Frequency-BodyAccJerk-mean-X"       "Frequency-BodyAccJerk-mean-Y"      
[51] "Frequency-BodyAccJerk-mean-Z"       "Frequency-BodyAccJerk-std-X"       
[53] "Frequency-BodyAccJerk-std-Y"        "Frequency-BodyAccJerk-std-Z"       
[55] "Frequency-BodyGyro-mean-X"          "Frequency-BodyGyro-mean-Y"         
[57] "Frequency-BodyGyro-mean-Z"          "Frequency-BodyGyro-std-X"          
[59] "Frequency-BodyGyro-std-Y"           "Frequency-BodyGyro-std-Z"          
[61] "Frequency-BodyAccMag-mean"          "Frequency-BodyAccMag-std"          
[63] "Frequency-BodyBodyAccJerkMag-mean"  "Frequency-BodyBodyAccJerkMag-std"  
[65] "Frequency-BodyBodyGyroMag-mean"     "Frequency-BodyBodyGyroMag-std"     
[67] "Frequency-BodyBodyGyroJerkMag-mean" "Frequency-BodyBodyGyroJerkMag-std" 
