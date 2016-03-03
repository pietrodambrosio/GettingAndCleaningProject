## Code Book
This document  describes the variables, data, and transformations performed to clean up the data obtained from UCI Machine Learning repository.

### General Information
The data for the project have been downloaded from the following URL:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
The data (collected before 2012) were related to a research in the area of wearable computers and were aimed at allowing the development of more advanced algorithms, to attract new users. In particular, this data set was collected by the accelerometers from the Samsung Galaxy S smartphone
This research involved a group of 30 volunteers of 19-48 years. Each person performed six activities (Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying) wearing a smartphone Samsung Galaxy SII on the waist.
Using its embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.
The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating  the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 

### Raw data
For each record it is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.
The dataset includes the following files:
* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

There are a number of files containing the analytic data of the  single measurements. More information relating to these data sets can be obtained from the readme file distributed with the data.
### Cleaning process
The steps needed to obtain a set of tidy data, starting from the input raw data, are the following:
1.	Merge the training and the test sets to create one data set.
2.	Extract only the measurements on the mean and standard deviation for each measurement.
3.	Get descriptive activity names to name the activities in the data set
4.	Get appropriately variable labels (set with descriptive variable names).
5.	Create a new tidy data set with the average of each variable for each activity and each subject.

### Tidy data set
The tidy data is "run_analysis_output.txt" and contains :
* The code of the subject who carried out the experiment ("subject"). 
* The activity label ("activity")
* The means of all variables (only mean and standard deviation) collected from the accelerometer and gyroscope 3-axial raw signal (numeric value)

### Variables List
* subject 
* activity
* timeBodyAccelerometer.mean.X.Mean  
* timeBodyAccelerometer.mean.Y.Mean
* timeBodyAccelerometer.mean.Z.Mean
* timeBodyAccelerometer.std.X.Mean
* timeBodyAccelerometer.std.Y.Mean
* timeBodyAccelerometer.std.Z.Mean
* timeGravityAccelerometer.mean.X.Mean
* timeGravityAccelerometer.mean.Y.Mean
* timeGravityAccelerometer.mean.Z.Mean
* timeGravityAccelerometer.std.X.Mean
* timeGravityAccelerometer.std.Y.Mean
* timeGravityAccelerometer.std.Z.Mean
* timeBodyAccelerometerJerk.mean.X.Mean
* timeBodyAccelerometerJerk.mean.Y.Mean
* timeBodyAccelerometerJerk.mean.Z.Mean
* timeBodyAccelerometerJerk.std.X.Mean
* timeBodyAccelerometerJerk.std.Y.Mean
* timeBodyAccelerometerJerk.std.Z.Mean
* timeBodyGyroscope.mean.X.Mean
* timeBodyGyroscope.mean.Y.Mean
* timeBodyGyroscope.mean.Z.Mean
* timeBodyGyroscope.std.X.Mean
* timeBodyGyroscope.std.Y.Mean
* timeBodyGyroscope.std.Z.Mean
* timeBodyGyroscopeJerk.mean.X.Mean
* timeBodyGyroscopeJerk.mean.Y.Mean
* timeBodyGyroscopeJerk.mean.Z.Mean
* timeBodyGyroscopeJerk.std.X.Mean
* timeBodyGyroscopeJerk.std.Y.Mean
* timeBodyGyroscopeJerk.std.Z.Mean
* timeBodyAccelerometerMagnitude.mean.Mean
* timeBodyAccelerometerMagnitude.std.Mean
* timeGravityAccelerometerMagnitude.mean.Mean
* timeGravityAccelerometerMagnitude.std.Mean
* timeBodyAccelerometerJerkMagnitude.mean.Mean
* timeBodyAccelerometerJerkMagnitude.std.Mean
* timeBodyGyroscopeMagnitude.mean.Mean
* timeBodyGyroscopeMagnitude.std.Mean
* timeBodyGyroscopeJerkMagnitude.mean.Mean
* timeBodyGyroscopeJerkMagnitude.std.Mean
* frequencyBodyAccelerometer.mean.X.Mean
* frequencyBodyAccelerometer.mean.Y.Mean
* frequencyBodyAccelerometer.mean.Z.Mean
* frequencyBodyAccelerometer.std.X.Mean
* frequencyBodyAccelerometer.std.Y.Mean
* frequencyBodyAccelerometer.std.Z.Mean
* frequencyBodyAccelerometerJerk.mean.X.Mean
* frequencyBodyAccelerometerJerk.mean.Y.Mean
* frequencyBodyAccelerometerJerk.mean.Z.Mean
* frequencyBodyAccelerometerJerk.std.X.Mean
* frequencyBodyAccelerometerJerk.std.Y.Mean
* frequencyBodyAccelerometerJerk.std.Z.Mean
* frequencyBodyGyroscope.mean.X.Mean
* frequencyBodyGyroscope.mean.Y.Mean
* frequencyBodyGyroscope.mean.Z.Mean
* frequencyBodyGyroscope.std.X.Mean
* frequencyBodyGyroscope.std.Y.Mean
* frequencyBodyGyroscope.std.Z.Mean
* frequencyBodyAccelerometerMagnitude.mean.Mean
* frequencyBodyAccelerometerMagnitude.std.Mean
* frequencyBodyAccelerometerJerkMagnitude.mean.Mean
* frequencyBodyAccelerometerJerkMagnitude.std.Mean
* frequencyBodyGyroscopeMagnitude.mean.Mean
* frequencyBodyGyroscopeMagnitude.std.Mean
* frequencyBodyGyroscopeJerkMagnitude.mean.Mean
* frequencyBodyGyroscopeJerkMagnitude.std.Mean


***Notes:***

The variable names are self-explanatory and refer to different types of measures. Furthermore:
- mean/std = average or standard deviation (method)
- X, Y, Z = directions of 3-axial signals
- Mean = global mean 

