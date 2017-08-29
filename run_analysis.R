library(reshape2)

filename <- "data.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
    download.file(fileURL, destfile =  filename, mode="wb")
}  
if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename,files=NULL) 
}

# Load activity and feature info
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

# Keep only those columns which reflect a mean or standard deviation and tidy labels
featuresKeep <- grep(".*mean.*|.*std.*", features[,2])
features <- features[featuresKeep,2]
features = gsub('-mean', 'Mean', features)
features = gsub('-std', 'Std', features)
features <- gsub('[-()]', '', features)

# Load the datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresKeep]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresKeep]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# Merge the two datasets
mergedData <- rbind(train, test)
colnames(mergedData) <- c("Subject", "Activity", features)

# Convert the activity and subject columns into factors
mergedData$Activity <- factor(mergedData$Activity, levels = activityLabels[,1], labels = activityLabels[,2])
mergedData$Subject <- as.factor(mergedData$Subject)

# Create a second, independent tidy data set with the average of each variable for each activity and each subject
mergedData.melted <- melt(mergedData, id = c("Subject", "Activity"))
mergedData.mean <- dcast(mergedData.melted, Subject + Activity ~ variable, mean)
write.table(mergedData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)