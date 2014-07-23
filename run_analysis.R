#
# this are variables for tidy data
#
#
library(plyr)
library(reshape2)

# define some variables for later use
mainDir <- getwd()
subDir <- "data"
dataDir <- paste(mainDir, subDir, sep = "/")
pathToTxtFile <- "features.txt"
pathToZipFile <- "getdata-projectfiles-UCI HAR Dataset.zip"
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

###
# try to download the ZIPed data file from the given url
# and save it in adirectory if it not already exists
# @TODO: maybe create a little module which
# can easiely included for later use...
###

# check if directory exists to save the data file
if (!file.exists(dataDir)) {
  # if it not exists create it
  dir.create(file.path(mainDir, subDir))
}

# does the data file 'pathToTxtFile' exists in the directory above?
# this file ist just one representer we could use a better
# test condition here, but it should work....
if(!file.exists(paste(dataDir, pathToTxtFile, sep = "/"))) {
  # no, so download the ZIP from url specified above
  zipFilePath <- paste(dataDir, pathToZipFile, sep = "/")
  download.file(fileUrl, destfile=zipFilePath)
  # and unzip the data file
  unzip(zipFilePath, exdir=dataDir, overwrite=TRUE)
  # remove the ZIP, it's no longer needed
  file.remove(zipFilePath)
  
  # save the target dir where the unziped files will be stored at least
  # for later use
  unzipedTargetDir = paste(dataDir, "UCI_HAR_Dataset", sep="/")
  # remove spaces from the directory where the data files were unziped
  file.rename(paste(dataDir, "UCI HAR Dataset", sep="/"), unzipedTargetDir)
  # copy all unziped files one folder back (../)
  dirContent <- list.files(unzipedTargetDir)
  fileList <- paste(unzipedTargetDir, dirContent, sep="/")
  file.copy(fileList, dataDir, overwrite=TRUE, recursive=TRUE)
  # remove the unzipedTargetDir folder and all it's sub directories
  unlink(unzipedTargetDir, recursive=TRUE, force=TRUE)
}

# load list of all data files in the data dir creared above
allFilesdf <- data.frame(files=list.files(dataDir, recursive = TRUE), stringsAsFactors = FALSE)
# remove files from list which are not used to create the final data sets
removeFiles <- grepl("Inertial", allFilesdf$files)
# get a list of relevant files
selectedFiles <- allFilesdf[!removeFiles, ]

###
# Step 1: read all necessary data
###
# load "data/train/X_train.txt"
trainX <- read.table(paste(dataDir, selectedFiles[9], sep="/"))
# "data/train/Y_train.txt"
trainActivity <- read.table(paste(dataDir, selectedFiles[10], sep="/"), col.names=("activityId"))
# load "data/test/X_test.txt"
testX <- read.table(paste(dataDir, selectedFiles[6], sep="/"))
# load "data/test/Y_test.txt"
testActivity <- read.table(paste(dataDir, selectedFiles[7], sep="/"), col.names=("activityId"))

# load "data/train/subject_train.txt"
trainPerformerId <- read.table(paste(dataDir, selectedFiles[8], sep="/"), col.names=("performerId"))
# load "data/test/subject_test.txt"
testPerformerId <- read.table(paste(dataDir, selectedFiles[5], sep="/"), col.names=("performerId"))

# load "data/features.txt"
featuresHead <- read.table(paste(dataDir, selectedFiles[2], sep="/"))

# load "data/activity_labels.txt"
activityLabels <- read.table(paste(dataDir, selectedFiles[1], sep="/"), col.names=c("activityId", "activity"), stringsAsFactors=FALSE)


###
# Step 2: Combining
###

# combine features head for later use
#featuresHead$V2 = tolower(featuresHead$V2)

#combine activities and performers (subjects) for later use
combinedActivity <- rbind(trainActivity, testActivity)
combinedPerformers <- rbind(trainPerformerId, testPerformerId)

# combine train and test data without performers (subjects) and activities
combinedDataSet <- rbind(trainX, testX)

###
# Step 3: Cleaning dataset
###

# filter head: remove all columns from the combined dataset that are not means or stds
#headPattern <- "std|mean"
headPattern <- "mean\\(\\)|std\\(\\)"

# get all filtered head names to add them later to the data frame
filteredHeadNames <- grep(headPattern, featuresHead$V2, value=TRUE)
# this are the final indizes of the columns (without performer and activity) we need
filteredHeadIndex <- grep(headPattern, featuresHead$V2)
# get only the columns we need from the combined set
filteredDataSet <- combinedDataSet[, filteredHeadIndex]

# rename some variable names to make it's meaning a little bit cleaner
filteredHeadNamesCleaned <- gsub("mean\\(\\)", "Mean", filteredHeadNames)
filteredHeadNamesCleaned <- gsub("std\\(\\)", "Std", filteredHeadNamesCleaned)
filteredHeadNamesCleaned <- gsub("Mag", "Magnitude", filteredHeadNamesCleaned)
filteredHeadNamesCleaned <- gsub("Acc", "Acceleration", filteredHeadNamesCleaned)
filteredHeadNamesCleaned <- gsub("^t", "time", filteredHeadNamesCleaned)
filteredHeadNamesCleaned <- gsub("^f", "frequency", filteredHeadNamesCleaned)
filteredHeadNamesCleaned <- gsub("BodyBody", "Body", filteredHeadNamesCleaned)

# capitalize all Axis definitioos (X,Y,Z)
#filteredHeadNamesCleaned <- gsub("(-x|-y|-z)", "\\U\\1", filteredHeadNamesCleaned, perl=TRUE)
filteredHeadNamesCleaned <- gsub("-", "", filteredHeadNamesCleaned)


###
# Step 4: building the final set
###
# add the column names to the filtered data set from the filteredHeadNames above
colnames(filteredDataSet) <- filteredHeadNamesCleaned

# now combine the filtered da set with the activities and the performer
# to create the final set
# this set is no tidy data set so long...
completeDataSet <- cbind(filteredDataSet, combinedActivity, combinedPerformers)


###########
### Step 5: merge activityLabels with activiy
###########
completeDataSet <- join(completeDataSet, activityLabels, by="activityId")
# remove activity Ids because they are no longer needed
completeDataSet <- subset(completeDataSet, select = -activityId)
# lowering the activity names
completeDataSet$activity <- tolower(completeDataSet$activity)
# capitalize the first letter after a '_' (underscore) in the activies
completeDataSet$activity <- gsub("(_[a-z])", "\\U\\1", completeDataSet$activity, perl=TRUE)
# remove underscores from activities
completeDataSet$activity <- gsub("_", "", completeDataSet$activity)
## convert the performerId into a factor variable
completeDataSet$performerId <- as.factor(completeDataSet$performerId)
## convert the activity into a factor variable
completeDataSet$activity <- as.factor(completeDataSet$activity)
# sorting
completeDataSet <- arrange(completeDataSet, performerId, activity)
# rearrange column: moving performerId- and activity-columns to the beginning of the data.frame
completeDataSet <- cbind(completeDataSet[, 67:68], completeDataSet[, -(67:68)])


#######
## Step 6: create tidy dataset
#######
# group by activity and performer, then apply the mean function
tidyDataSet <- ddply(completeDataSet, .(activity, performerId), colwise(mean))
# sorting
tidyDataSet <- arrange(tidyDataSet, performerId, activity)

#####
# Step 7: write the complete and tidy data set out to disk
#####
# write out the merged data set to disk
write.table(completeDataSet, "uci_har_dataset_merged.txt")
# write out the tidy data set to disk
write.table(tidyDataSet, "uci_har_tidy_dataset.txt")
