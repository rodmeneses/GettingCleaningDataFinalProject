# Getting and Cleaning Data - Course Project - CODE BOOK

## Description

Information about the variables and transformations about the course project for Getting and Cleaning Data course.

## Source Data

A full description of the data used in this project can be found at The UCI Machine Learning Repository

## Data Set Information

Taken from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For a detail information about the transformation logic please see  [README.md](./README.md)

## Transformation Logic
The transformation of the data consisted in Extracting only the measurements on the mean and standard deviation for each measurement. We used descriptive activity names to name the activities in the data set
and also we appropriately labeled the data set with descriptive variable names.  Fnally, independent tidy data set with the average of each variable for each activity and each subject was created.

The final columns of the tidy data are as follows. Note that all the names are in lowercase to comply with the tidy data conceptes.

* subject
* activity
* tbodyaccmeanx
* tbodyaccmeany
* tbodyaccmeanz
* tbodyaccstdx
* tbodyaccstdy
* tbodyaccstdz
* tgravityaccmeanx
* tgravityaccmeany
* tgravityaccmeanz
* tgravityaccstdx
* tgravityaccstdy
* tgravityaccstdz
* tbodyaccjerkmeanx
* tbodyaccjerkmeany
* tbodyaccjerkmeanz
* tbodyaccjerkstdx
* tbodyaccjerkstdy
* tbodyaccjerkstdz
* tbodygyromeanx
* tbodygyromeany
* tbodygyromeanz
* tbodygyrostdx
* tbodygyrostdy
* tbodygyrostdz
* tbodygyrojerkmeanx
* tbodygyrojerkmeany
* tbodygyrojerkmeanz
* tbodygyrojerkstdx
* tbodygyrojerkstdy
* tbodygyrojerkstdz
* tbodyaccmagmean
* tbodyaccmagstd
* tgravityaccmagmean
* tgravityaccmagstd
* tbodyaccjerkmagmean
* tbodyaccjerkmagstd
* tbodygyromagmean
* tbodygyromagstd
* tbodygyrojerkmagmean
* tbodygyrojerkmagstd
* fbodyaccmeanx
* fbodyaccmeany
* fbodyaccmeanz
* fbodyaccstdx
* fbodyaccstdy
* fbodyaccstdz
* fbodyaccmeanfreqx
* fbodyaccmeanfreqy
* fbodyaccmeanfreqz
* fbodyaccjerkmeanx
* fbodyaccjerkmeany
* fbodyaccjerkmeanz
* fbodyaccjerkstdx
* fbodyaccjerkstdy
* fbodyaccjerkstdz
* fbodyaccjerkmeanfreqx
* fbodyaccjerkmeanfreqy
* fbodyaccjerkmeanfreqz
* fbodygyromeanx
* fbodygyromeany
* fbodygyromeanz
* fbodygyrostdx
* fbodygyrostdy
* fbodygyrostdz
* fbodygyromeanfreqx
* fbodygyromeanfreqy
* fbodygyromeanfreqz
* fbodyaccmagmean
* fbodyaccmagstd
* fbodyaccmagmeanfreq
* fbodybodyaccjerkmagmean
* fbodybodyaccjerkmagstd
* fbodybodyaccjerkmagmeanfreq
* fbodybodygyromagmean
* fbodybodygyromagstd
* fbodybodygyromagmeanfreq
* fbodybodygyrojerkmagmean
* fbodybodygyrojerkmagstd
* fbodybodygyrojerkmagmeanfreq


