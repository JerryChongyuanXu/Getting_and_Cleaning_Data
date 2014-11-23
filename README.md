# My Course Project of Getting and Cleaning Data

This repository shows what I have done in the course project of the course "Getting and Cleaning data". There are three files in this folder. 

## Files

### run_analysis.R

This is an R script that contains all the code to perform all the steps required from the project. They can be performed in R programme by just copying and pasting the code in it. There are 6 steps in it. 

1. Read all the downloaded data. 

2. Use rbind() function to merge the train and the test sets of each data of x, y, subject. Then merge these 3 new data sets and create the unique data set. 

3. Collect only those with the mean and standard deviation measures by using grep().

4. Rename the activities in the data set. 

5. Rename the variables in order to let the names much more readable.

6. Finally, create a second, independent tidy data set with the average of each variable for each activity and each subject. 

### CodeBook.md

CodeBook.md describes all the variables, the steps that used to perform the analysis and tidy the data. 

###tidydata.txt

tidydata.txt is the result of the tidy data set. 
