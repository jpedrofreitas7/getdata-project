# Getting and Cleaning Data

## Course Project

### Data Source

* Human Activity Recognition Using Smartphones Data Set http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### The Script

1. Reads the files `features.txt`, `train/X_train.txt`, `train/y_train.txt`, `test/X_test.txt`, `test/y_test.txt` from the UCI HAR Dataset file
2. Merges the training and the test sets to create one data set.
3. Translates the activities labels to lower case and eliminates the underscores
4. Made the `activity` variable into a factor variable with activities labels: 'walking', 'walkingupstairs', 'walkingdownstairs', 'sitting', 'standing' and 'laying'.
5. Appropriately labels the data set with descriptive variable names. 
6. Extracts only the measurements on the mean and standard deviation for each measurement.
7. Translates the variable names to lower case and eliminates all dots, hyphens and parenthesis from the variables names
8. Exports a tidy data set with the average of each variable for each activity and each subject. 



