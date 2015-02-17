<<<<<<< HEAD
---
title: "README"
author: "Cindy Scott"
date: "Tuesday, February 17, 2015"
output: html_document
---

==================================================================
Getting and Cleaning Data Course Project
Cindy Scott
February 17, 2015

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. A description of the data is available here:
    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data was obtained here:
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This data was unzipped into a subdirectory named ~/UCI HAR Dataset

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


The following additional files were included with the raw data but were not used in the analysis.  An equivalent set was included for both test and train: 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

=====================================================================================

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- Inertial files provided in the raw data set were not used in this analysis.

=====================================================================================
Four deliverables were created for this project -
	run_analysis.R - an R script which processes the raw data and generates a summary tidy datafile named sumTidy.txt
	sumTidy.txt - the summarized tidy data, in wide format
	README.md - this file
	sumTidyCodeBook.md - codebook for sumTidy.txt

run_analysis.R does the following:
	Reads each of the raw .txt files into data frames in R
	Processes the Train files by
		-naming variables using the features list
		-copying the training data, selecting only variables containing "mean" or "std"
		-adding Subject, ActivityID, and Activity variables using subject_test, y_test, and activity_labels.  An additional variable, TestTrain, is added to distinguish data from the Test and Train sets
	Repeats this process for the Test files
	Combines the tidy Train and Test data frames into my tidy dataset

	run_analysis.R continues by processing the tidy dataset to generate the summary dataset with the mean for each variable, grouped by Subject and Activity.  I use the dplyr package for this.  Variable names in the summary dataset have been simplified by removing hyphens and parentheses, and capitalizing MEAN and STD for readability.
=======
# GettingAndCleaningDataProject
Files for Getting and Cleaning Data project
>>>>>>> 4166a0b2b4894909639d6d5af39632aa323e2471
