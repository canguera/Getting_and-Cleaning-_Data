1. The original raw data set:

It contain the experiments have been carried out with a group of 30 volunteers (subjects).
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 
3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating 
the training data and 30% the test data. 


Source : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. The new tidy data set AvarageSubjAct.txt:

2.1 Contain:

It contain the average of each variable (mean and standard deviation) for each activity and each subject,from original data set 
grouped by subject and activity labels, resulting in a total of 180 records.

2.2 Variables:

2.2.1 Activity_Labels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
2.2.2 Performed_activity: 1- 30 subjects Id{1...30}
2.2.3 Rest features variables:


