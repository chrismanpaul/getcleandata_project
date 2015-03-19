Getting and Cleaning Data Class Project

This repo contains the scripts necessary for the class project in the Coursera Getting and Cleaning Data class.  It assumes that the R script (run_analysis.R) will be run in a working directory that contains the necessary data files (detailed below).  Running run_analysis.R will write the desired tidy data output (averages for each subject & activity combination for each of the mean and standard deviation variables) to the working directory as gcdata_proj_tidy_output.txt.  The data being processed is the output of an experiment that involved subjects strapping a Samsung Galaxy S II smartphone to their waist and perform various activities while recording the output of the phones accelerometer and gyroscope.

Data Files required

features.txt - this file contains the feature variable labels

activity_labels.txt - this contains the keys for translating the numeric values in the Y_test/train.txt files into the corresponding activities

Test directory which contains the following files with data on subjects selected for the test group:
 - subject_test.txt - this file contains the subject identifiers for the rows of data
 - X_test.txt - this contains the values of the feature variables
 - Y_test.txt - this file contains the numeric activity identifiers for the rows of data

Train directory which contains the following files with data on the subjects selected for the test group:
 - subject_train.txt - this file contains the subject identifiers for the rows of data
 - X_train.txt - this contains the values of the feature variables
 - Y_train.txt - this file contains the numeric activity identifiers for the rows of data

run_analysis.R

This R script file contains the code to analyze the data files listed above and produce the desired output.  It does this in the following general steps:
1. load necessary packages
2. read the various data files into R
3. combine the various data files to produce one collected, labeled data set with all the information
4. Select the data for the columns which contain mean and standard deviation data
5. reformats the variable names to be slightly more readable
6. determines all the unique combinations of subject and activity
7. creates an empty matrix of the required dimensions to hold the output data
8. loops through the list of unique subject/activity combos, subsetting and averageing the data and writing it to the results matrix
9. turns the results matrix into a data frame
10. writes the output to a text file using write.table

CodeBook.md

The Codebook file contains details on what was done with the data and what each variable measures



