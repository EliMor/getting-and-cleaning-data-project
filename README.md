Getting and Cleaning Data Project
=================================
Peer-assessment project for Coursera's 'Getting and Cleaning Data' MOOC.
==================================================================
This project uses the Human Activity Recognition Using Smartphones Dataset collected by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto of the Smartlab - Non Linear Complex Systems Laboratory. The following is a description of their experiments as provided in their 'README.txt' file in the data package which is available for download at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

>For more information about this dataset contact: activityrecognition@smartlab.ws


The repository includes the following files:
=========================================

- 'README.txt'

- 'CodeBook.md': Explanation of data transforms and resulting variables 

- 'run_analysis.R': R script that takes the original Human Activity Recognition Using Smartphones Dataset and produces a new 'tidy' data set as described in the CodeBook.md.


Notes: 
======
- Measurements are normalized and bounded within [-1,1].
- The user is responsible for downloading the original dataset (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzipping the contents into the R working directory. No error checks for this are provided.


