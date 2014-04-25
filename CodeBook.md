#Code Book for Transformed UCI HAR Dataset

##Original source of data
The Human Activity Recognition (HAR) Using Smartphones Dataset collected by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto of the Smartlab - Non Linear Complex Systems Laboratory, downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Descriptions of variables in the original data set are given in the README.txt and features_info.text files contained therein.

##Explanation of run_analysis.R script
1. The associated R script assumes that you have already downloaded and unzipped the above zip file, and that the 'UCI HAR Dataset' folder exists in R's working directory.
2. The script extracts only those variables with 'mean()' and 'std()' in the original variable names (referred to as 'feature vectors' by the authors of the dataset). 
3. The script joins into one dataframe the following pieces of data, which the original dataset divides into separate .txt files: the subject IDs (file names with 'subject') the smartphone measurements (file names with 'X'), the activity of the subject at the time of measurement (file names with 'Y'), the names of the measurements (file name with 'features'), the names of the activity (file name with 'activity_labels').
4. The original dataset divided data randomly into separate 'train' and 'test' files. The script recombines these files into a single dataframe.
5. The original data set contains repeated measures of each subject for each activity. The script takes the mean of these repeated measures, such that there is one set of measurements per subject per activity.
6. The transformed data is written to the file 'tidy _ data.txt' in the 'UCI HAR Dataset' folder.

##Variables in 'tidy _ data' 

* Activity _ Label: "LAYING", "SITTING", "STANDING", "WALKING", "WALKING _ DOWNSTAIRS", "WALKING _ UPSTAIRS" 
* Subject:  Labeled as an integer, 1-30 inclusive.

All other variables are mean ( _ mean _ ) and standard deviation (_ std _) metrics obtained from the smartphone's accelerometer (Acc) and gyroscope (Gyro), with some measurements broken down into 3D spatial vectors (X, Y, or Z). The explanation for the naming conventions of these variables is copied here from the 'features.info.txt' file in the original data set:

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc _ mean _ X
* tBodyAcc _ mean _ Y
* tBodyAcc _ mean _ Z
* tBodyAcc _ std _ X
* tBodyAcc _ std _ Y
* tBodyAcc _ std _ Z
* tGravityAcc _ mean _ X
* tGravityAcc _ mean _ Y
* tGravityAcc _ mean _ Z
* tGravityAcc _ std _ X
* tGravityAcc _ std _ Y
* tGravityAcc _ std _ Z
* tBodyAccJerk _ mean _ X
* tBodyAccJerk _ mean _ Y
* tBodyAccJerk _ mean _ Z
* tBodyAccJerk _ std _ X
* tBodyAccJerk _ std _ Y
* tBodyAccJerk _ std _ Z
* tBodyGyro _ mean _ X
* tBodyGyro _ mean _ Y
* tBodyGyro _ mean _ Z
* tBodyGyro _ std _ X
* tBodyGyro _ std _ Y
* tBodyGyro _ std _ Z 
* tBodyGyroJerk _ mean _ X
* tBodyGyroJerk _ mean _ Y
* tBodyGyroJerk _ mean _ Z
* tBodyGyroJerk _ std _ X
* tBodyGyroJerk _ std _ Y
* tBodyGyroJerk _ std _ Z
* tBodyAccMag _ mean
* tBodyAccMag _ std
* tGravityAccMag _ mean
* tGravityAccMag _ std
* tBodyAccJerkMag _ mean
* tBodyAccJerkMag _ std
* tBodyGyroMag _ mean
* tBodyGyroMag _ std
* tBodyGyroJerkMag _ mean
* tBodyGyroJerkMag _ std
* fBodyAcc _ mean _ X
* fBodyAcc _ mean _ Y
* fBodyAcc _ mean _ Z
* fBodyAcc _ std _ X
* fBodyAcc _ std _ Y
* fBodyAcc _ std _ Z
* fBodyAccJerk _ mean _ X
* fBodyAccJerk _ mean _ Y
* fBodyAccJerk _ mean _ Z
* fBodyAccJerk _ std _ X
* fBodyAccJerk _ std _ Y
* fBodyAccJerk _ std _ Z
* fBodyGyro _ mean _ X
* fBodyGyro _ mean _ Y
* fBodyGyro _ mean _ Z
* fBodyGyro _ std _ X
* fBodyGyro _ std _ Y
* fBodyGyro _ std _ Z
* fBodyAccMag _ mean
* fBodyAccMag _ std
* fBodyBodyAccJerkMag _ mean
* fBodyBodyAccJerkMag _ std
* fBodyBodyGyroMag _ mean
* fBodyBodyGyroMag _ std
* fBodyBodyGyroJerkMag _ mean
* fBodyBodyGyroJerkMag _ std
