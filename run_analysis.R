## Read all data. 

xtest <- read.table("test/X_test.txt")
ytest <- read.table("test/y_test.txt")
subjecttest <- read.table("test/subject_test.txt")

xtrain <- read.table("train/X_train.txt")
ytrain <- read.table("train/y_train.txt")
subjecttrain <- read.table("train/subject_train.txt")

features <- read.table("features.txt")

activitylabels <- read.table("activity_labels.txt")

## Merges the training and the test sets to create one data set.

xdata <- rbind(xtrain, xtest)
ydata <- rbind(ytrain, ytest)
subjectdata <- rbind(subjecttrain, subjecttest)

data <- cbind(xdata, ydata, subjectdata)

## Extracts only the measurements on the mean and standard deviation for each measurement. 

featurenames <- features[, 2]
names(xdata) <- featurenames
meanstdfeatures <- grep("mean|std", featurenames)
sub <- xdata[, meanstdfeatures]

## Uses descriptive activity names to name the activities in the data set

activitynames <- activitylabels[, 2]
activities <- activitynames[ydata[, 1]]

## Appropriately labels the data set with descriptive variable names. 

names(sub) <- gsub("^t", "Time", names(sub))
names(sub) <- gsub("^f", "Frequency", names(sub))
names(sub) <- gsub("-mean\\(\\)", "Mean", names(sub))
names(sub) <- gsub("-std\\(\\)", "StdDev", names(sub))
names(sub) <- gsub("-", "", names(sub))
names(sub) <- gsub("BodyBody", "Body", names(sub))
names(ydata) <- "activity"
names(subjectdata) <- "subject"

## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(plyr)

data <- cbind(xdata, ydata, subjectdata)
tidydata <- ddply(data, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(tidydata, "tidydata.txt")
