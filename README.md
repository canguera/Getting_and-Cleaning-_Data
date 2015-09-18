# Getting_and-Cleaning-_Data
Project 1

1. Assigment:
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers 
on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data 
set as described below, 2) a link to a Github repository with your script for performing the analysis, 
and 3) a code book that describes the variables, the data, and any transformations or work that you 
performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with 
your scripts. This repo explains how all of the scripts work and how they are connected.

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
for each activity and each subject.


2 R script run_analysis.R details:

2.1 Prepararing:

- Check if folder "project" exists in working directory, or create it. If{(!file.exist)}
- Load the principals libraries for work. library()
- Donwload the zip file for I can extract the diferents data sets. download.file())
- Extract and read the diferents data sets. read.table()
- Preparate the data sets:
    -Assign the variables from features(features.txt) as column in test and train data sets .names()
    -Rename the columns names in data y_test & y_train and subject_test& subject_train, indicate the better title. names()

2.2 Merges the training and the test sets to create one data set:

- Check the dimensions from the diferents data sets for I can do the marged correctly.
- First marged the test data set. The global data for test is= test+testy+testsubject. cbind()
- Second marged the train data set. The global data for train is= train+trainy+trainsubject. cbind()
- I marged the global test data and train data in one data set. rbind() 

2.3 Extracts only the measurements on the mean and standard deviation for each measurement:

-Search inside from global test&train data set, the columns names ( variables from features.txt) that contain mean and std 
( deviation) for extract the measurements. grep("-mean\\(\\)",grep("-std\\(\\)"
- Marge the results in a new data set. rbind()
- Add the columns values "Activity_Labels" and "Performed Activity" in new data

2.4 Uses descriptive activity names to name the activities in the data set:

- Compare the column  values “Activity_Labels” from data set with the activity name from activity_labels.txt. 
- After assign the corresponding  description value. data$column[data$column=="number"]<-"description from   
  activity_labels.txt"
- Convert the data column "Activity_Labels" as factor.

2.5 Appropriately labels the data set with descriptive variable names:

- Replace the all descriptive variable name from data set, for their corresponding complet name. gsub()


2.6 From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
for each activity and each subject
 
 -  Calculate the average of each variable for the column Performed_activity ( subjects.txt) and column Activity_Labels, 
    grouped by Performed_Activity (subject) and Activity_Labels ( activity_labels.txt). lapply()
 -  Write the result in a independent tidy data set and it save as "AvarageSubjAct.txt" file


Others:
More information in CodeBook.md

