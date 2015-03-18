The original experiment consisted of subjects strapping a Samsung Galaxy S II smartphone to their waist, and then performing various activites while recording the output of the phone's accelerometer and gyroscope.  These signals were used to compute 3-axial acceleration and 3-axial angular velocities, sampling at a rate of 50 Hz.  This data was processed through a variety of filters and separated into body and gravitational acceleration components (for more information see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).   The body linear acceleration and angular velocity were used to produce Jerk signals, and the magnitude of those Jerk signals was calculated using the Euclidian norm.  Additionally some of the data was subject to a Fast Fourier transform (FFT) to produce frequency domain data.  In all this produced a feature vector of 561 different measurements for each observation.  Selected here are data on the means and standard deviations of many of the measurements, which were then further averaged for each subject and activity combination.  For details on how this was done, see the run_analysis.R script file.  Details on each of the output variables are found below.

VARIABLES
Identifier Variables
subject - subject id#, ranges from 1 to 30
activity - Activity performed, 6 possibilities - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 

All further variables were normalized to have values between -1 and 1

tBodyAcc_mean_X - mean of the time domain data on body acceleration in the x axis 
tBodyAcc_mean_Y - mean of the time domain data on body acceleration in the y axis
tBodyAcc_mean_Z - mean of the time domain data on body acceleration in the z axis
tGravityAcc_mean_X - mean of the time domain data on gravity acceleration in the x axis
tGravityAcc_mean_Y - mean of the time domain data on gravity acceleration in the y axis
tGravityAcc_mean_Z - mean of the time domain data on gravity acceleration in the z axis
tBodyAccJerk_mean_X - mean of the time domain Jerk data for body acceleration in the x axis
tBodyAccJerk_mean_Y - mean of the time domain Jerk data for body acceleration in the y axis 
tBodyAccJerk_mean_Z - mean of the time domain Jerk data for body acceleration in the z axis
tBodyGyro_mean_X - mean of the time domain data for body angular velocity in the x axis
tBodyGyro_mean_Y - mean of the time domain data for body angular velocity in the y axis
tBodyGyro_mean_Z - mean of the time domain data for body angular velocity in the z axis
tBodyGyroJerk_mean_X - mean of the time domain Jerk data for body angular velocity in the x axis
tBodyGyroJerk_mean_Y - mean of the time domain Jerk data for body angular velocity in the y axis
tBodyGyroJerk_mean_Z - mean of the time domain Jerk data for body angular velocity in the z axis
tBodyAccMag_mean - mean of the time domain data for magnitude of the body linear acceleration
tGravityAccMag_mean - mean of the time domain data for magnitude of the gravity linear acceleration
tBodyAccJerkMag_mean - mean of the time domain data for Jerk magnitude of the body linear acceleration
tBodyGyroMag_mean - mean of the time domain data for magnitude of the body angular velocity
tBodyGyroJerkMag_mean - mean of the time domain data for Jerk magnitude of the body angular velocity
fBodyAcc_mean_X - mean of the frequency domain data for body acceleration in the x axis
fBodyAcc_mean_Y - mean of the frequency domain data for body acceleration in the y axis
fBodyAcc_mean_Z - mean of the frequency domain data for body acceleration in the z axis
fBodyAccJerk_mean_X - mean of the frequency domain Jerk data for body acceleration in the x axis
fBodyAccJerk_mean_Y - mean of the frequency domain Jerk data for body acceleration in the y axis
fBodyAccJerk_mean_Z - mean of the frequency domain Jerk data for body acceleration in the z axis
fBodyGyro_mean_X - mean of the frequency domain data for body angular velocity in the x axis
fBodyGyro_mean_Y - mean of the frequency domain data for body angular velocity in the y axis
fBodyGyro_mean_Z - mean of the frequency domain data for body angular velocity in the z axis
fBodyAccMag_mean - mean of the frequency domain data for magnitude of the body linear acceleration
fBodyBodyAccJerkMag_mean - mean of the frequency domain data for Jerk magnitude of the body linear acceleration
fBodyBodyGyroMag_mean - mean of the frequency domain data for magnitude of the body angular velocity
fBodyBodyGyroJerkMag_mean - mean of the frequency data for Jerk magnitude of the body angular velocity
tBodyAcc_std_X - standard deviation of the time domain data on body acceleration in the x axis 
tBodyAcc_std_Y - standard deviation of the time domain data on body acceleration in the y axis 
tBodyAcc_std_Z - standard deviation of the time domain data on body acceleration in the z axis 
tGravityAcc_std_X - standard deviation of the time domain data on gravity acceleration in the x axis
tGravityAcc_std_Y - standard deviation of the time domain data on gravity acceleration in the y axis
tGravityAcc_std_Z - standard deviation of the time domain data on gravity acceleration in the z axis
tBodyAccJerk_std_X - standard deviation of the time domain Jerk data for body acceleration in the x axis
tBodyAccJerk_std_Y - standard deviation of the time domain Jerk data for body acceleration in the y axis
tBodyAccJerk_std_Z - standard deviation of the time domain Jerk data for body acceleration in the z axis
tBodyGyro_std_X - standard deviation of the time domain data for body angular velocity in the x axis
tBodyGyro_std_Y - standard deviation of the time domain data for body angular velocity in the y axis
tBodyGyro_std_Z - standard deviation of the time domain data for body angular velocity in the z axis
tBodyGyroJerk_std_X - standard deviation of the time domain Jerk data for body angular velocity in the x axis
tBodyGyroJerk_std_Y - standard deviation of the time domain Jerk data for body angular velocity in the y axis
tBodyGyroJerk_std_Z - standard deviation of the time domain Jerk data for body angular velocity in the z axis
tBodyAccMag_std - mean of the time domain data for magnitude of the body linear acceleration
tGravityAccMag_std - mean of the time domain data for magnitude of the gravity linear acceleration
tBodyAccJerkMag_std - mean of the time domain data for Jerk magnitude of the body linear acceleration
tBodyGyroMag_std - mean of the time domain data for magnitude of the body angular velocity
tBodyGyroJerkMag_std - mean of the time domain data for Jerk magnitude of the body angular velocity
fBodyAcc_std_X - standard deviation of the frequency domain data for body acceleration in the x axis
fBodyAcc_std_Y - standard deviation of the frequency domain data for body acceleration in the y axis
fBodyAcc_std_Z - standard deviation of the frequency domain data for body acceleration in the z axis
fBodyAccJerk_std_X - standard deviation of the frequency domain Jerk data for body acceleration in the x axis
fBodyAccJerk_std_Y - standard deviation of the frequency domain Jerk data for body acceleration in the y axis
fBodyAccJerk_std_Z - standard deviation of the frequency domain Jerk data for body acceleration in the z axis
fBodyGyro_std_X - standard deviation of the frequency domain data for body angular velocity in the x axis
fBodyGyro_std_Y - standard deviation of the frequency domain data for body angular velocity in the y axis
fBodyGyro_std_Z - standard deviation of the frequency domain data for body angular velocity in the z axis
fBodyAccMag_std - standard deviation of the frequency domain data for magnitude of the body linear acceleration
fBodyBodyAccJerkMag_std - standard deviation of the frequency domain data for Jerk magnitude of the body linear acceleration
fBodyBodyGyroMag_std - standard deviation of the frequency domain data for magnitude of the body angular velocity
fBodyBodyGyroJerkMag_std - standard deviation of the frequency data for Jerk magnitude of the body angular velocity
