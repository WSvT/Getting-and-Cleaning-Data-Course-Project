# load libraries
library(dplyr)

# Clean up workspace
rm(list=ls())

# assign filename
file <- "./data/peer_ass.zip"

# create data directory if necessary
if (!file.exists("./data")) {dir.create("./data")}

# download zip-file if necessary
if (!file.exists(file)) { 
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL,file)
}
# unzip file if necessary
if (!file.exists("./data/UCI HAR Dataset")) { 
  unzip(file,exdir = "./data") 
}

######################################################################################
## 1. Merges the training and the test sets to create one data set.

# read data from files
features <- read.table("./data/UCI HAR Dataset/features.txt", header = FALSE) # List of all features
act_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE, col.names = c("activityId","activityType")) # Links the class labels with their activity name

# read trainingsdata
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE, col.names = features[,2]) # Training set
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE, col.names = "activity") # Training labels
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE, col.names = "subjectId") # Each row identifies the subject who performed the activity for each window sample

# read testdata
x_test  <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE, col.names = features[,2]) # Test set
y_test  <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE, col.names = "activity") # Test labels
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE, col.names = "subjectId") ## Each row identifies the subject who performed the activity for each window sample

# create complete dataset
ds_activity <- rbind(cbind(subject_train, y_train, x_train), cbind(subject_test, y_test, x_test))

# remove training set and test set
rm(x_train,y_train,subject_train,x_test,y_test,subject_test)

######################################################################################
## 2. Extracts only the measurements on the mean and standard deviation 
##    for each measurement.

ds_activity <- ds_activity[,grepl("subject|activity|mean|std",colnames(ds_activity))]

######################################################################################
## 3. Uses descriptive activity names to name the activities in the data set

ds_activity$activity <- factor(ds_activity$activity,levels=act_labels[,1],labels=act_labels[,2])

######################################################################################
## 4. Appropriately labels the data set with descriptive variable names

cNames <- names(ds_activity)
cNames <- gsub('\\(\\)-|(\\.)*',"",cNames)
cNames <- gsub('^t',"timeDomain",cNames)
cNames <- gsub('^f',"frequencyDomain",cNames)
cNames <- gsub('Gyro',"Gyroscope",cNames)
cNames <- gsub('Acc',"Accelerometer",cNames)
cNames <- gsub('Mag',"Magnitude",cNames)
cNames <- gsub('Freq',"Frequency",cNames)
cNames <- gsub('(\\.)*mean',"Mean",cNames)
cNames <- gsub('(\\.)*std',"StDev",cNames)
cNames <- gsub('(Body)+',"Body",cNames)

names(ds_activity) <- cNames
######################################################################################
## 5. From the data set in step 4, creates a second, independent tidy data set with 
##    the average of each variable for each activity and each subject.

ds_mean <- aggregate(ds_activity[,3:length(cNames)] , by=list(ds_activity$subjectId,ds_activity$activity),FUN=mean, na.rm=TRUE)
names(ds_mean) <- names(ds_activity)
ds_tidy <- arrange(ds_mean,ds_mean$subjectId,ds_mean$activity)
write.table(ds_tidy, file = "./data/UCI HAR Dataset/tidy_data.txt", quote = FALSE, row.names = FALSE)

rm(cNames,ds_mean)
