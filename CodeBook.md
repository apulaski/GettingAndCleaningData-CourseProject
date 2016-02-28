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
Description of input variables that are carried through as mean and standard deviation variables:

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation



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

"subjectid"                          
"activity"                          
"Time-BodyAcc-mean-X"               
"Time-BodyAcc-mean-Y"               
"Time-BodyAcc-mean-Z"               
"Time-BodyAcc-std-X"                
"Time-BodyAcc-std-Y"                
"Time-BodyAcc-std-Z"                
"Time-GravityAcc-mean-X"             
"Time-GravityAcc-mean-Y"            
"Time-GravityAcc-mean-Z"             
"Time-GravityAcc-std-X"             
"Time-GravityAcc-std-Y"            
"Time-GravityAcc-std-Z"             
"Time-BodyAccJerk-mean-X"            
"Time-BodyAccJerk-mean-Y"           
"Time-BodyAccJerk-mean-Z"            
"Time-BodyAccJerk-std-X"            
"Time-BodyAccJerk-std-Y"             
"Time-BodyAccJerk-std-Z"            
"Time-BodyGyro-mean-X"               
"Time-BodyGyro-mean-Y"              
"Time-BodyGyro-mean-Z"               
"Time-BodyGyro-std-X"               
"Time-BodyGyro-std-Y"                
"Time-BodyGyro-std-Z"               
"Time-BodyGyroJerk-mean-X"           
"Time-BodyGyroJerk-mean-Y"          
"Time-BodyGyroJerk-mean-Z"           
"Time-BodyGyroJerk-std-X"           
"Time-BodyGyroJerk-std-Y"            
"Time-BodyGyroJerk-std-Z"           
"Time-BodyAccMag-mean"               
"Time-BodyAccMag-std"               
"Time-GravityAccMag-mean"           
"Time-GravityAccMag-std"            
"Time-BodyAccJerkMag-mean"           
"Time-BodyAccJerkMag-std"           
"Time-BodyGyroMag-mean"              
"Time-BodyGyroMag-std"              
"Time-BodyGyroJerkMag-mean"          
"Time-BodyGyroJerkMag-std"          
"Frequency-BodyAcc-mean-X"           
"Frequency-BodyAcc-mean-Y"          
"Frequency-BodyAcc-mean-Z"           
"Frequency-BodyAcc-std-X"           
"Frequency-BodyAcc-std-Y"           
"Frequency-BodyAcc-std-Z"           
"Frequency-BodyAccJerk-mean-X" 
"Frequency-BodyAccJerk-mean-Y"      
"Frequency-BodyAccJerk-mean-Z"      
"Frequency-BodyAccJerk-std-X"       
"Frequency-BodyAccJerk-std-Y"        
"Frequency-BodyAccJerk-std-Z"       
"Frequency-BodyGyro-mean-X"         
"Frequency-BodyGyro-mean-Y"         
"Frequency-BodyGyro-mean-Z"          
"Frequency-BodyGyro-std-X"          
"Frequency-BodyGyro-std-Y"           
"Frequency-BodyGyro-std-Z"          
"Frequency-BodyAccMag-mean"          
"Frequency-BodyAccMag-std"          
"Frequency-BodyBodyAccJerkMag-mean"  
"Frequency-BodyBodyAccJerkMag-std"  
"Frequency-BodyBodyGyroMag-mean"     
"Frequency-BodyBodyGyroMag-std"     
"Frequency-BodyBodyGyroJerkMag-mean" 
"Frequency-BodyBodyGyroJerkMag-std" 
