# Code Book
## Variables

-xtest - the data of X_test.txt
-ytest - the data of y_test.txt
-subjecttest - the data of subject_test.txt
-xtrain - the data of X_train.txt
-ytrain - the data of y_train.txt
-subjecttrain - the data of subject_train.txt

-features - the data of features.txt
-activitylabels - the data of activity_labels.txt

-xdata - to merge the xtrain and xtest to further analysis
-ydata - to merge the ytrain and ytest to further analysis
-subjectdata - to merge the subjecttrain and subjecttest to further analysis

-data - to merge xdata, ydata, subjectdata to a large dataset

-featurenames - the correct names of the xdata
-meanstdfeatures - a vector used to find the subset of the data that contains the name of mean and standard deviation
-sub - the subset of xdata with the meanstdfeatures columns

-activitynames - the correct names in the activitylabels
-activities - the correct names of ydata

-tidydata - the independent tidy data set with the average of each variable for each activity and each subject