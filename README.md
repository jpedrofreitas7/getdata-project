# Getting and Cleaning Data

## Course Project

The script:

1. Reads the files `features.txt`, `train/X_train.txt`, `train/y_train.txt`, `test/X_test.txt`, `test/y_test.txt` from the UCI HAR Dataset file
2. Merges the training and the test sets to create one data set.
3. Translates the activities labels to lower case and eliminates the underscores
4. Made the `activity` variable into a factor variable with activities labels: 'walking', 'walkingupstairs', 'walkingdownstairs', 'sitting', 'standing' and 'laying'.
5. Appropriately labels the data set with descriptive variable names. 
6. Extracts only the measurements on the mean and standard deviation for each measurement.
7. Translates the variable names to lower case and eliminates all dots, hyphens and parenthesis from the variables names
8. Exports a tidy data set with the average of each variable for each activity and each subject. 

## Code Book

### Background (UCI HAR Dataset)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walkingupstairs, walkingdownstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Data Set Information

The `tidyHAR.txt` includes the average of each variable for each activity and each subject. Prefix 't' to denote time and 'f' to indicates frequency domain signals. For more information refer to the UCI HAR Dataset `feature_info.txt`.

### Variables List

For each record in the dataset it is provided: 

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

#### Categorical Variables

* subject (An identifier of the subject who carried out the experiment.)
* activity (Its activity label.)

#### Continuous Variables (Average of each variable for each activity and each subject)

* tbodyaccmeanx, tbodyaccmeany, tbodyaccmeanz, tbodyaccstdx, tbodyaccstdy, tbodyaccstdz,
* tgravityaccmeanx, tgravityaccmeany, tgravityaccmeanz, tgravityaccstdx, tgravityaccstdy, tgravityaccstdz,
* tbodyaccjerkmeanx, tbodyaccjerkmeany, tbodyaccjerkmeanz, tbodyaccjerkstdx, tbodyaccjerkstdy, tbodyaccjerkstdz,
* tbodygyromeanx, tbodygyromeany, tbodygyromeanz, tbodygyrostdx, tbodygyrostdy, tbodygyrostdz,
* tbodygyrojerkmeanx, tbodygyrojerkmeany, tbodygyrojerkmeanz, tbodygyrojerkstdx, tbodygyrojerkstdy, tbodygyrojerkstdz,
* tbodyaccmagmean, tbodyaccmagstd, tgravityaccmagmean, tgravityaccmagstd, tbodyaccjerkmagmean, tbodyaccjerkmagstd,
* tbodygyromagmean, tbodygyromagstd,
* tbodygyrojerkmagmean, tbodygyrojerkmagstd,
* fbodyaccmeanx, fbodyaccmeany, fbodyaccmeanz, fbodyaccstdx, fbodyaccstdy, fbodyaccstdz,
* fbodyaccmeanfreqx, fbodyaccmeanfreqy, fbodyaccmeanfreqz,
* fbodyaccjerkmeanx, fbodyaccjerkmeany, fbodyaccjerkmeanz, fbodyaccjerkstdx, fbodyaccjerkstdy, fbodyaccjerkstdz,
* fbodyaccjerkmeanfreqx, fbodyaccjerkmeanfreqy, fbodyaccjerkmeanfreqz,
* fbodygyromeanx, fbodygyromeany, fbodygyromeanz, fbodygyrostdx, fbodygyrostdy, fbodygyrostdz,
* fbodygyromeanfreqx, fbodygyromeanfreqy, fbodygyromeanfreqz,
* fbodyaccmagmean, fbodyaccmagstd, fbodyaccmagmeanfreq,
* fbodybodyaccjerkmagmean, fbodybodyaccjerkmagstd, fbodybodyaccjerkmagmeanfreq,
* fbodybodygyromagmean, fbodybodygyromagstd, fbodybodygyromagmeanfreq,
* fbodybodygyrojerkmagmean, fbodybodygyrojerkmagstd, fbodybodygyrojerkmagmeanfreq, 
* angletbodyaccmeangravity, angletbodyaccjerkmeangravitymean,
* angletbodygyromeangravitymean, angletbodygyrojerkmeangravitymean, 
* anglexgravitymean, angleygravitymean, anglezgravitymean
