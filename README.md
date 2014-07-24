Coursera Getting and Cleaning Data Programming Assignment 
----------

#### Cleanup a Human Activity Recognition Using Smartphones Data Set

# Introduction

With todays wearable computing possibillities it's relative easy to recognize human activities with various sensors and analyze the resulting data sets.
Smartphones are one way to capture data with it's gyro sensors or accelerometers and store the data produced for later processing.
The purpose of this Coursera Programming Assignment is to cleanup a dataset captured with a smartphone (Samsung Galaxy S II) installed on the waist of 30 performers.     Furthermore we have to extract some of the features for further processing and we have to create a tidy dataset containing the average of each feature for each activity and each subject.
**I called the subject 'performerId' because it's more explanatory**.

# Our goal

As requested by Coursera Here comes our things to do

>You should create one R script called run_analysis.R that does the following.
>
>1. Merges the training and the test sets to create one data set.
>2. Extracts only the measurements on the mean and standard deviation for each >measurement. 
>3. Uses descriptive activity names to name the activities in the data set
>4. Appropriately labels the data set with descriptive feature names. 
>5. Creates a second, independent tidy data set with the average of each feature for >each activity and each subject.
>
> -- <cite>Coursera, Getting and Cleaning Data-Course</cite>

To achieve this goal we got access to a data set provided by the UCI's Machine Learning repository:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


The original data set was created as follows:

> Data Set Information:
> 
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
> 
> -- information taken from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

### Contained features in the data set
* acceleration from the accelerometer in 3D-Axis notation (*XYZ*) 
* estimated body acceleration.
* Angular velocity from the gyroscope in 3D-Axis notation (*XYZ*). 
* A feature vector with time and frequency domain features (*time-vars, frequency-vars*)
* activity labels
* An identifier of the performer who carried out the experiment.

# Description of the features:

For the description of the features see the accordingly code book: [https://github.com/dreammaster38/coursera_getting_and_cleaning_data/blob/master/CodeBook.md](https://github.com/dreammaster38/coursera_getting_and_cleaning_data/blob/master/CodeBook.md "Code book for Courseras Getting and Cleaning Data")

# Data set transformations

The original data set was transformed in several ways. This section describes the important steps taken to cleanup the data set and the steps taken to create a tidy data set.

I have included all features with mean() and std() into my cleaned up data set. There were some features beginning with 'angle'. I excluded this features from my data set because it's role is unclear and they were not appropriatly described in the info text of the original data set.
For a real use of the data set the role for most of the features should be clarified via the given e-mail address.
The data sets have the following dimensions:

|Data Set                                                                             |Data Set Dimensions    |
|-------------------------------------------------------------------------------------|-----------------------|
|base data set (raw test- and training-sets combined)                                 |10299x561              |
|filtered data set by mean() and std(), activity- and performer-columns added         |10299x68               |
|tidy data set with the average of each variable for each activity and each performer |180x68                 |

**The volunteers are named performers in this disquisition**.


# Steps taken to clean up the data

## Prerequisits
There are some prerequisits to met if you try to ruin the skript. The script tries to load the raw data set from the URL given above. Afterwards the data will be unziped into a dat directory (called 'data' by default). Unfortunatly the mechanism isn't perfect at this time (but maybe in the future...). So if the download did not succeed or you run into other problems do the following prerequisite steps:

* Configure the `subDir` variable in `run_analysis.R` to your choice.

#### Manual extraction of the ZIP
* unzip the data which you have to downlaod before from the URL above to this direcrory and unzip it
* After you have unziped the data you get a directory called ***UCI HAR Data Set*** in your data dir. To let the script do it's magic you have to move all the directory's content as is one folder back to the data dir created via subDir variable. I decided to take this step because *UCI HAR Data Set* has spaces in it's name. This can lead into problems.

#### Auto Unzip
* If you already downloaded the file you can set the variable `doDownloadFile=FALSE`, create the directory where `subDir` points to yourself and place the ziped data set into that folder.

## Step 1: Loading the data and get a quick overview
First i loaded all relevant data sets from the text files to examine them:
* train/X_train.txt (main data)
* train/Y_train.txt (activity Ids)
* test/Y_test.txt (test data set)
* train/subject_train.txt (IDs of the volunteers (performers) of the main data set)
* test/subject_test.txt (IDs of the volunteers (performers) of the test data set)
* features.txt (feature names)
* activity_labels.txt (the activity names)

## Step 2: Combining various data sets
Now it's time to combine the main and test data sets of the main data, activities and performers. So we get a first big data sets

## Step 3: Cleaning up the data set
This is the biggest and most important step. Here we create a header for the data frame which only includes header names which include 'mean()' and 'std()'. All other will be removed.
Then the first data set will be filtered to just include the columns apposite to the header names above. Now we apply some regExp magic to the heder names to make them more tidy (remove brackets, convert names to Camel case, expand 't' to 'time', 'f' to frequency, ....)

## Step 4: Buil the final data set
During this step i combined the filtered data set from step 3 with the filtered header names from step 3. Furthermore i bound the columns holding the combined performers and activities to the main dataset.

## Step 5: Merging acticity labels with it's name
We move forward to a more tidy data set. Now i merged all activity ids with it's real name:
* 1 --> laying
* 2 --> sitting
* 3 --> standing
* 4 --> walking
* 5 --> walkingDownstairs
* 6 --> walkingUpstairs

I converted them to camel case notation and converted the performerIds and activities to factor variables.

## Step 6: Create a tidy dat set
As expected for this programming assignment, a tidy data set was created containing the average of each variable for each activity and each performer.


## Step 7: Write out the complete ata set and tidy data set to disk
This is the last step. Write out the two generated data sets to disk for further processing.

* uci_har_dataset_merged.txt: contains the complete data set with 68 filtered variables and 10299 observations.
* uci_har_tidy_dataset.txt: contains the tydied data set with 68 filtered variables and 180 observations


That's it.


# References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] Hadley Wickham, Tidy Data. Journal of Statistical Software, Volume VV, Issue II. 2013