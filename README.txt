## run_analysis.R description

As per the below, the run_analysis.R script creates a tidy data set from a recent study which collected data from the accelerometers on a Samsung Galaxy S smartphone. 

To do this, the activity and feature info is loaded into the console/global environment. The mean and standard deviation columns from the training and test data sets are loaded. The two datasets are merged. THe activity and subject columns are turned into factors. Finally, a new tidy data set is created with the average of each variable for each activity and each subject. 




## Getting and Cleaning Data Course Project
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yesno questions related to the project. You will be required to submit 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained

httparchive.ics.uci.edumldatasetsHuman+Activity+Recognition+Using+Smartphones

Here are the data for the project

httpsd396qusza40orc.cloudfront.netgetdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
