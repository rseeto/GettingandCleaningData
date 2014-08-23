Run_analysis
======================

Introduction
------------
This is an R script written for the "Getting and Cleaning Data" course project. The goal of the script was to prepare a tidy data set according to the Coursera requirements.


Coursera Requirements
---------------------
You should create one R script called run_analysis.R that does the following. 

   1. Merges the training and the test sets to create one data set.
   2. Extracts only the measurements on the mean and standard deviation for each measurement. 
   3. Uses descriptive activity names to name the activities in the data set
   4. Appropriately labels the data set with descriptive variable names. 
   5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


General Usage Notes
-------------------
- The function (run_analysis) will check the working directory for the presence of the data set folder. If no such file exists, the script will attempt to download it.
- From the Coursera requirements, step 2  was interpreted as only using data that contain either "std" (standard deviation) or "mean" (mean) in the variable name.
- Descriptive varible names were based on the unabridged definitions in the features_info.txt file. According to the week 4 video, 'Editing Text Variables', decriptive variable names should be all lowercase, and not contain spaces, underscores or dots.
	- A 't' prefix was used to indicate time domain signals.
	- A 'f' prefix was used to indicate frequency domain signals.
	- 'x', 'y', and 'z' was used to denote the 'xaxis', 'yaxis', and 'zaxis'.
	- 'acc' was used to denote 'acceleration' indicating that the database came from the accelerometer.
	- 'gyr' was used to denote 'gyroscope' indicating that the database came from the gyroscope.
- A text file of the tidy data set will be saved to the working directory.
