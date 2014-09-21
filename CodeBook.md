# Code Book

This is the code book of the `tidyHAR.txt` data set created by the scrip `run_analysis.R`

## Background (UCI HAR Dataset)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walkingupstairs, walkingdownstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing. (Note the 'f' to indicate frequency domain signals). 

## Data Set Information

The `tidyHAR.txt` includes the average of each variable for each activity and each subject. Prefix 't' to denote time and 'f' to indicates frequency domain signals. For more information refer to the UCI HAR Dataset `feature_info.txt`.

## Variables List

For each record in the dataset it is provided: 

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope.
* Its activity label. 
* An identifier of the subject who carried out the experiment.
* Mean and standard deviation of time and frequency domain variables 
* Average of each variable for each activity and each subject 

### Categorical Variables

* subject (An identifier of the subject who carried out the experiment.)
* activity (Activity label.)

### Continuous Variables 

1. Features are normalized and bounded within [-1,1].
2. Each feature vector is a row on the text file
3. Average of each variable for each activity and each subject.

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
