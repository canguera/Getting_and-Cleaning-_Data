1. The original raw data set:

It contain the experiments have been carried out with a group of 30 volunteers (subjects).
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 
3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating 
the training data and 30% the test data. 


Source : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


2 The new tidy data set AvarageSubjAct.txt:

2.1 Contain:

It contain the average of each variable (mean and standard deviation) for each activity and each subject,from original data set 
grouped by subject and activity labels, resulting in a total of 180 records.

2.2 Variables:

2.2.1 Activity_Labels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
2.2.2 Performed_activity: 1- 30 subjects Id{1...30}
2.2.3 Rest features variables:

 [1] "TimeBodyAccelerator-mean()-X"                     "TimeBodyAccelerator-mean()-Y"                    
 [3] "TimeBodyAccelerator-mean()-Z"                     "TimeGravityAccelerator-mean()-X"                 
 [5] "TimeGravityAccelerator-mean()-Y"                  "TimeGravityAccelerator-mean()-Z"                 
 [7] "TimeBodyAcceleratorJerk-mean()-X"                 "TimeBodyAcceleratorJerk-mean()-Y"                
 [9] "TimeBodyAcceleratorJerk-mean()-Z"                 "TimeBodyGyroscope-mean()-X"                      
[11] "TimeBodyGyroscope-mean()-Y"                       "TimeBodyGyroscope-mean()-Z"                      
[13] "TimeBodyGyroscopeJerk-mean()-X"                   "TimeBodyGyroscopeJerk-mean()-Y"                  
[15] "TimeBodyGyroscopeJerk-mean()-Z"                   "TimeBodyAcceleratorMagnitude-mean()"             
[17] "TimeGravityAcceleratorMagnitude-mean()"           "TimeBodyAcceleratorJerkMagnitude-mean()"         
[19] "TimeBodyGyroscopeMagnitude-mean()"                "TimeBodyGyroscopeJerkMagnitude-mean()"           
[21] "FrequencyBodyAccelerator-mean()-X"                "FrequencyBodyAccelerator-mean()-Y"               
[23] "FrequencyBodyAccelerator-mean()-Z"                "FrequencyBodyAcceleratorJerk-mean()-X"           
[25] "FrequencyBodyAcceleratorJerk-mean()-Y"            "FrequencyBodyAcceleratorJerk-mean()-Z"           
[27] "FrequencyBodyGyroscope-mean()-X"                  "FrequencyBodyGyroscope-mean()-Y"                 
[29] "FrequencyBodyGyroscope-mean()-Z"                  "FrequencyBodyAcceleratorMagnitude-mean()"        
[31] "FrequencyBodyBodyAcceleratorJerkMagnitude-mean()" "FrequencyBodyBodyGyroscopeMagnitude-mean()"      
[33] "FrequencyBodyBodyGyroscopeJerkMagnitude-mean()"   "TimeBodyAccelerator-std()-X"                     
[35] "TimeBodyAccelerator-std()-Y"                      "TimeBodyAccelerator-std()-Z"                     
[37] "TimeGravityAccelerator-std()-X"                   "TimeGravityAccelerator-std()-Y"                  
[39] "TimeGravityAccelerator-std()-Z"                   "TimeBodyAcceleratorJerk-std()-X"                 
[41] "TimeBodyAcceleratorJerk-std()-Y"                  "TimeBodyAcceleratorJerk-std()-Z"                 
[43] "TimeBodyGyroscope-std()-X"                        "TimeBodyGyroscope-std()-Y"                       
[45] "TimeBodyGyroscope-std()-Z"                        "TimeBodyGyroscopeJerk-std()-X"                   
[47] "TimeBodyGyroscopeJerk-std()-Y"                    "TimeBodyGyroscopeJerk-std()-Z"                   
[49] "TimeBodyAcceleratorMagnitude-std()"               "TimeGravityAcceleratorMagnitude-std()"           
[51] "TimeBodyAcceleratorJerkMagnitude-std()"           "TimeBodyGyroscopeMagnitude-std()"                
[53] "TimeBodyGyroscopeJerkMagnitude-std()"             "FrequencyBodyAccelerator-std()-X"                
[55] "FrequencyBodyAccelerator-std()-Y"                 "FrequencyBodyAccelerator-std()-Z"                
[57] "FrequencyBodyAcceleratorJerk-std()-X"             "FrequencyBodyAcceleratorJerk-std()-Y"            
[59] "FrequencyBodyAcceleratorJerk-std()-Z"             "FrequencyBodyGyroscope-std()-X"                  
[61] "FrequencyBodyGyroscope-std()-Y"                   "FrequencyBodyGyroscope-std()-Z"                  
[63] "FrequencyBodyAcceleratorMagnitude-std()"          "FrequencyBodyBodyAcceleratorJerkMagnitude-std()" 
[65] "FrequencyBodyBodyGyroscopeMagnitude-std()"        "FrequencyBodyBodyGyroscopeJerkMagnitude-std()"   
[67] "Activity_Labels"                                  "Performed_activity" 




