gettingandcleaningdataproject Code Book  
=======================================  
  
  
  
Introduction  
------------  
The gettingandcleaningdataproject.txt is a tab-separated file is derived from the data set at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)   

The following steps were used to clean the data and produce the text file:

1. The training set (UCI HAR Dataset/train/X\_train.txt) and test set (UCI HAR Dataset/test/X\_test.txt) were merged into one set of data.  
2. Any column that is not a mean ("mean") or standard deviation ("std") was excluded from the final data.  
3. Numeric activity names (UCI HAR Dataset/test/y\_test.txt; UCI HAR Dataset/train/y\_train.txt) were replaced with descriptive activity names (UCI HAR Dataset/activity\_labels.txt) and added to the data set.  
4. Subject numbers (UCI HAR Dataset/test/subject\_test.txt; UCI HAR Dataset/train/subject\_train.txt) was added to the data set.  
5. Column names were replaced with more decriptive names according to UCI HAR Dataset/features\_info.txt.  
6. The data set was aggregated based on subject number and activity type.  
7. The mean for each combinatoric of subject number and activity type was calculated.  
  
The complete script used to create the text file (run\_analysis.R) and associated readme file can be found at [https://github.com/rseeto/GettingandCleaningData](https://github.com/rseeto/GettingandCleaningData).  
  
Data Dictionary Introduction
----------------------------
The data dictionary is presented in the following format:  
  
**VARIABLE NAME**  
VARIABLE DEFINITION  
*VARIABLE VALUES (If applicable)*  
RANGE OF VALUES  
  
As noted in the UCI HAR Dataset/README.txt file, the data has been normalised (unitless) and bounded \[-1, 1\].  
  
  
  
Data Dictionary  
---------------  
  
**subjectnumber**  
Subject number  
1..30  
  
**activitytype**  
Activity type  
*WALKING*  
*WALKING\_UPSTAIRS*  
*WALKING\_DOWNSTAIRS*  
*SITTING*  
*STANDING*  
*LAYING*      
  
**timebodyaccelerationmeanxaxis**      
The mean of the time domain signal of the body acceleration in the x-axis.  
-1..1  
  
**timebodyaccelerationmeanyaxis**      
The mean of the time domain signal of the body acceleration in the y-axis.  
-1..1  
  
**timebodyaccelerationmeanzaxis**      
The mean of the time domain signal of the body acceleration in the z-axis.  
-1..1  
  
**timegravityaccelerationmeanxaxis**      
The mean of the time domain signal of acceleration due to gravity in the x-axis.  
-1..1  
  
**timegravityaccelerationmeanyaxis**      
The mean of the time domain signal of acceleration due to gravity in the y-axis.  
-1..1  
  
**timegravityaccelerationmeanzaxis**      
The mean of the time domain signal of acceleration due to gravity in the z-axis.  
-1..1  
  
**timebodyaccelerationjerkmeanxaxis**      
The mean of the time domain signal of the body acceleration jerk signal in the x-axis.  
-1..1  
  
**timebodyaccelerationjerkmeanyaxis**      
The mean of the time domain signal of the body acceleration jerk signal in the y-axis.  
-1..1  
  
**timebodyaccelerationjerkmeanzaxis**      
The mean of the time domain signal of the body acceleration jerk signal in the z-axis.  
-1..1  
  
**timebodygyroscopemeanxaxis**      
The mean of the time domain signal of the body gyroscope in the x-axis.  
-1..1  
  
**timebodygyroscopemeanyaxis**      
The mean of the time domain signal of the body gyroscope in the y-axis.  
-1..1  
  
**timebodygyroscopemeanzaxis**      
The mean of the time domain signal of the body gyroscope in the z-axis.  
-1..1  
  
**timebodygyroscopejerkmeanxaxis**      
The mean of the time domain signal of the body gyroscope jerk signal in the x-axis.  
-1..1  
  
**timebodygyroscopejerkmeanyaxis**      
The mean of the time domain signal of the body gyroscope jerk signal in the y-axis.  
-1..1  
  
**timebodygyroscopejerkmeanzaxis**      
The mean of the time domain signal of the body gyroscope jerk signal in the z-axis.  
-1..1  
  
**timebodyaccelerationmagmean**      
The mean of the time domain signal of the body acceleration magnitude.  
-1..1  
  
**timegravityaccelerationmagmean**      
The mean of the time domain signal of the acceleration due to gravitiy magnitude.  
-1..1  
  
**timebodyaccelerationjerkmagmean**      
The mean of the time domain signal of the body acceleration jerk signal magnitude.  
-1..1  
  
**timebodygyroscopemagmean**      
The mean of the time domain signal of the body gyroscope magnitude.  
-1..1  
  
**timebodygyroscopejerkmagmean**      
The mean of the time domain signal of the body gyroscope jerk signal magnitude.  
-1..1  
  
**frequencybodyaccelerationmeanxaxis**      
The mean of the frequency domain signal of the body acceleration in the x-axis.  
-1..1  
  
**frequencybodyaccelerationmeanyaxis**      
The mean of the frequency domain signal of the body acceleration in the y-axis.  
-1..1  
  
**frequencybodyaccelerationmeanzaxis**      
The mean of the frequency domain signal of the body acceleration in the z-axis.  
-1..1  
  
**frequencybodyaccelerationmeanfreqxaxis**      
The weight average of the frequency components to obtain a mean frequency of the body acceleration in the x-axis.  
-1..1  
  
**frequencybodyaccelerationmeanfreqyaxis**      
The weight average of the frequency components to obtain a mean frequency of the body acceleration in the y-axis.  
-1..1  
  
**frequencybodyaccelerationmeanfreqzaxis**      
The weight average of the frequency components to obtain a mean frequency of the body acceleration in the z-axis.  
-1..1  
  
**frequencybodyaccelerationjerkmeanxaxis**      
The mean of the frequency domain signal of the body acceleration jerk signal in the x-axis.  
-1..1  
  
**frequencybodyaccelerationjerkmeanyaxis**      
The mean of the frequency domain signal of the body acceleration jerk signal in the y-axis.  
-1..1  
  
**frequencybodyaccelerationjerkmeanzaxis**      
The mean of the frequency domain signal of the body acceleration jerk signal in the z-axis.      
-1..1  
  
**frequencybodyaccelerationjerkmeanfreqxaxis**      
The weight average of the frequency components to obtain a mean frequency of the body acceleration jerk signal in the x-axis.  
-1..1  
  
**frequencybodyaccelerationjerkmeanfreqyaxis**      
The weight average of the frequency components to obtain a mean frequency of the body acceleration jerk signal in the y-axis.  
-1..1  
  
**frequencybodyaccelerationjerkmeanfreqzaxis**      
The weight average of the frequency components to obtain a mean frequency of the body acceleration jerk signal in the z-axis.  
-1..1  
  
**frequencybodygyroscopemeanxaxis**      
The mean of the frequency domain signal of the body gyroscope in the x-axis.  
-1..1  
  
**frequencybodygyroscopemeanyaxis**      
The mean of the frequency domain signal of the body gyroscope in the y-axis.  
-1..1  
  
**frequencybodygyroscopemeanzaxis**      
The mean of the frequency domain signal of the body gyroscope in the z-axis.  
-1..1  
  
**frequencybodygyroscopemeanfreqxaxis**      
The weight average of the frequency components to obtain a mean frequency of the body gyroscope in the x-axis.  
-1..1  
  
**frequencybodygyroscopemeanfreqyaxis**      
The weight average of the frequency components to obtain a mean frequency of the body gyroscope in the y-axis.  
-1..1  
  
**frequencybodygyroscopemeanfreqzaxis**      
The weight average of the frequency components to obtain a mean frequency of the body gyroscope in the z-axis.  
-1..1  
  
**frequencybodyaccelerationmagmean**      
The mean of the frequency domain signal of the body acceleration magnitude.  
-1..1  
  
**frequencybodyaccelerationmagmeanfreq**      
The weight average of the frequency components to obtain a mean frequency of the body acceleration magnitude.  
-1..1  
  
**frequencybodybodyaccelerationjerkmagmean**      
The mean of the frequency domain signal of the body acceleration jerk signal magnitude.  
-1..1  
  
**frequencybodybodyaccelerationjerkmagmeanfreq**      
The mean of the frequency domain signal of the body acceleration jerk signal magnitude.  
-1..1  
  
**frequencybodybodygyroscopemagmean**      
The mean of the frequency domain signal of the body acceleration jerk signal magnitude.  
-1..1  
  
**frequencybodybodygyroscopemagmeanfreq**      
The weight average of the frequency components to obtain a mean frequency of the body gyroscope magnitude.  
-1..1  
  
**frequencybodybodygyroscopejerkmagmean**      
The mean of the frequency domain signal of the body gyroscope jerk signal magnitude.  
-1..1  
  
**frequencybodybodygyroscopejerkmagmeanfreq**      
The weight average of the frequency components to obtain a mean frequency of the body gyroscope jerk signal magnitude.  
-1..1  
  
**timebodyaccelerationstandardeviationxaxis**      
The standard deviation of the time domain signal of the body acceleration in the x-axis.  
-1..1  
  
**timebodyaccelerationstandardeviationyaxis**      
The standard deviation of the time domain signal of the body acceleration in the y-axis.  
-1..1  
  
**timebodyaccelerationstandardeviationzaxis**      
The standard deviation of the time domain signal of the body acceleration in the z-axis.  
-1..1  
  
**timegravityaccelerationstandardeviationxaxis**      
The standard deviation of the time domain signal of acceleration due to gravity in the x-axis.  
-1..1  
  
**timegravityaccelerationstandardeviationyaxis**      
The standard deviation of the time domain signal of acceleration due to gravity in the y-axis.  
-1..1  
  
**timegravityaccelerationstandardeviationzaxis**      
The standard deviation of the time domain signal of acceleration due to gravity in the z-axis.  
-1..1  
  
**timebodyaccelerationjerkstandardeviationxaxis**      
The standard deviation of the time domain signal of the body acceleration jerk signal in the x-axis.  
-1..1  
  
**timebodyaccelerationjerkstandardeviationyaxis**      
The standard deviation of the time domain signal of the body acceleration jerk signal in the y-axis.  
-1..1  
  
**timebodyaccelerationjerkstandardeviationzaxis**      
The standard deviation of the time domain signal of the body acceleration jerk signal in the z-axis.  
-1..1  
  
**timebodygyroscopestandardeviationxaxis**      
The standard deviation of the time domain signal of the body gyroscope in the x-axis.  
-1..1  
  
**timebodygyroscopestandardeviationyaxis**      
The standard deviation of the time domain signal of the body gyroscope in the y-axis.  
-1..1  
  
**timebodygyroscopestandardeviationzaxis**      
The standard deviation of the time domain signal of the body gyroscope in the z-axis.  
-1..1  
  
**timebodygyroscopejerkstandardeviationxaxis**      
The standard deviation of the time domain signal of the body gyroscope jerk signal in the x-axis.  
-1..1  
  
**timebodygyroscopejerkstandardeviationyaxis**      
The standard deviation of the time domain signal of the body gyroscope jerk signal in the y-axis.  
-1..1  
  
**timebodygyroscopejerkstandardeviationzaxis**      
The standard deviation of the time domain signal of the body gyroscope jerk signal in the z-axis.  
-1..1  
  
**timebodyaccelerationmagstandardeviation**      
The standard deviation of the time domain signal of the body acceleration magnitude.  
-1..1  
  
**timegravityaccelerationmagstandardeviation**      
The standard deviation of the time domain signal of the acceleration due to gravitiy magnitude.  
-1..1  
  
**timebodyaccelerationjerkmagstandardeviation**      
The standard deviation of the time domain signal of the body acceleration jerk signal magnitude.  
-1..1  
  
**timebodygyroscopemagstandardeviation**      
The standard deviation of the time domain signal of the body gyroscope magnitude.  
-1..1  
  
**timebodygyroscopejerkmagstandardeviation**      
The standard deviation of the time domain signal of the body gyroscope jerk signal magnitude.  
-1..1  
  
**frequencybodyaccelerationstandardeviationxaxis**      
The standard deviation of the frequency domain signal of the body acceleration in the x-axis.  
-1..1  
  
**frequencybodyaccelerationstandardeviationyaxis**      
The standard deviation of the frequency domain signal of the body acceleration in the y-axis.  
-1..1  
  
**frequencybodyaccelerationstandardeviationzaxis**      
The standard deviation of the frequency domain signal of the body acceleration in the z-axis.  
-1..1  
  
**frequencybodyaccelerationjerkstandardeviationxaxis**      
The standard deviation of the frequency domain signal of the body acceleration jerk signal in the x-axis.  
-1..1  
  
**frequencybodyaccelerationjerkstandardeviationyaxis**      
The standard deviation of the frequency domain signal of the body acceleration jerk signal in the y-axis.  
-1..1  
  
**frequencybodyaccelerationjerkstandardeviationzaxis**      
The standard deviation of the frequency domain signal of the body acceleration jerk signal in the z-axis.  
-1..1  
  
**frequencybodygyroscopestandardeviationxaxis**      
The standard deviation of the frequency domain signal of the body gyroscope in the x-axis.  
-1..1  
  
**frequencybodygyroscopestandardeviationyaxis**      
The standard deviation of the frequency domain signal of the body gyroscope in the y-axis.  
-1..1  
  
**frequencybodygyroscopestandardeviationzaxis**      
The standard deviation of the frequency domain signal of the body gyroscope in the z-axis.  
-1..1  
  
**frequencybodyaccelerationmagstandardeviation**      
The standard deviation of the frequency domain signal of the body acceleration magnitude.  
-1..1  
  
**frequencybodybodyaccelerationjerkmagstandardeviation**      
The standard deviation of the frequency domain signal of the body acceleration jerk signal magnitude.  
-1..1  
  
**frequencybodybodygyroscopemagstandardeviation**      
The standard deviation of the frequency domain signal of the body gyroscope magnitude.  
-1..1  
  
**frequencybodybodygyroscopejerkmagstandardeviation**  
The standard deviation of the frequency domain signal of the body gyroscope jerk signal magnitude.  
-1..1
