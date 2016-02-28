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
The data from "avg_data" contains the summary mean for all metrics groubed by subject and activity.

##R Script:
The R script file s broken out into 5 section correcsponding to each of the 5 steps in the instructions for this project.

