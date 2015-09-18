
## Load the principals libreries

> library(data.table)
> library(dplyr)
> library(plyr)

## Check if the directory where I save the zip file exist

if (!file.exists('project')) {
	dir.create('project')
	}

## Prepare and download zip file with data sets.

file.url<- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip '

download.file(file.url,destfile= 'project/getdata_projectfiles_UCI HAR Dataset.zip')

unzip('project/getdata_projectfiles_UCI HAR Dataset.zip',exdir='project',overwrite=TRUE)



## Read the principals data sets:

## Read the group test data sets:

## X_test.txt contain the test data

test<-read.table("project/UCI HAR Dataset/test/X_test.txt")

## y_test.txt contain the labels number, each number belong one activity

testy<-read.table("project/UCI HAR Dataset/test/y_test.txt")

## subject_test.txt contain the number of subject who do the activity

testsubject<-read.table("project/UCI HAR Dataset/test/subject_test.txt")


## Read the group train data sets:

## X_train.txt contain the train data

train<-read.table("project/UCI HAR Dataset/train/X_train.txt")

## y_train.txt contain the labels number, each number belong one activity

trainy<-read.table("project/UCI HAR Dataset/train/y_train.txt")

## subject_train.txt contain the number of subject who do the activity

trainsubject<-read.table("project/UCI HAR Dataset/train/subject_train.txt")


## Read other important file:

## features.txt contain the all variables used

feature<-c(read.table("project/UCI HAR Dataset/features.txt"))


## Assign the variables “features.txt” in a vector list, as var column data test and data train

names(test)<-feature$V2
names(train)<-feature$V2

## Rename the column in data y_test & y_train and subject_test& subject_train in order more clear the information contain

names(testy)<-"Activity_Labels" 
names(testsubject)<-"Performed_activity"
names(trainy)<-"Activity_Labels"
names(trainsubject)<-"Performed_activity"



## 1. Merges the training and the test sets to create one data set.

## First marged the test data set. The global data for test is= test+testy+testsubject

mixtest<-cbind(test,testy)
mixtest<-cbind(mixtest,testsubject)


## Second marged the train data set. The global data for train is= train+trainy+trainsubject

mixtrain<-cbind(train,trainy)
mixtrain<-cbind(mixtrain,trainsubject)

## Finally I marged the global test data and train data in one data set
testtrain<-rbind(mixtest,mixtrain)


## 2.Extracts only the measurements on the mean and standard deviation for each measurement.

## Search inside from global test&train data set, the columns ( variables from features.txt) , 
## contain mean and std ( deviation) for extract the measurements

datamean<-testtrain[,grep("-mean\\(\\)",names(testtrain),value=TRUE)]
datastd<-testtrain[,grep("-std\\(\\)",names(testtrain),value=TRUE)]

# Marged the result in a new data set

datameanstd<-cbind(datamean,datastd)

## Add the columns values: activity Labels and Performed Activity (subjects) at the new data set

datameanstd$Activity_Labels<-testtrain$Activity_Labels
datameanstd$Performed_activity<-testtrain$Performed_activity


## 3.Uses descriptive activity names to name the activities in the data set

## Compare the column  values “Activity_Labels” from data set with the activity name from activity_labels.txt. 
## After assign the corresponding  description value

datameanstd$Activity_Labels [datameanstd$Activity_Labels ==1]<-"WALKING"
datameanstd$Activity_Labels [datameanstd$Activity_Labels ==2]<-"WALKING_UPSTAIR"
datameanstd$Activity_Labels [datameanstd$Activity_Labels ==3]<-"WALKING_DOWNSTART"
datameanstd$Activity_Labels [datameanstd$Activity_Labels ==4]<-"SITTING"
datameanstd$Activity_Labels [datameanstd$Activity_Labels ==5]<-"STANDING"
datameanstd$Activity_Labels [datameanstd$Activity_Labels ==6]<-"LAYING"

## Convert the column Activity_Labels from data set as factor

as.factor(datameanstd$Activity_Labels)


## 4. Appropriately labels the data set with descriptive variable names. 

## Replace the all descriptive variable name for their corresponding complet name

names(datameanstd) <- gsub("Acc", "Accelerator", names(datameanstd))
names(datameanstd) <- gsub("Mag", "Magnitude", names(datameanstd))
names(datameanstd) <- gsub("Gyro", "Gyroscope", names(datameanstd))
names(datameanstd) <- gsub("^t", "time", names(datameanstd))
names(datameanstd) <- gsub("^f", "frequency", names(datameanstd))

## Convert the column Performed_activity from data set as character

as.character(datameanstd$Performed_activity)


## 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable
## for each activity and each subject

## Clone the global data set to other new data set

datavarage<-data.table(datameanstd)

## Calculate the average of each variable for the column Performed_activity ( subjects.txt) and column 
## Activity_Labels ( activity_labels.txt). The result save in a independent tidy data set

averagesubjactiv <-datavarage [, lapply(.SD, mean), by = 'Performed_activity,Activity_Labels']

## Write the independent tidy data set and save as txt file
write.table(averagesubjactiv, file = "AvarageSubjAct.txt", row.names = FALSE)
