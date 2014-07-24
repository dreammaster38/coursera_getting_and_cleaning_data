###
# Coursera, Getting And Cleaning Daza,
# Programming Assignment, July 2014, by Thomas Guenther
###

# load libraries
library(memisc)
library(knitr)
library(plyr)

# load the tidy data set
tidyData <- read.table("uci_har_tidy_dataset.txt")
# remove activity and performerId columns to appply range function in the next step
tidyData2 <- subset(tidyData, select= -c(activity, performerId))
# apply range function to all columns to get min andmax values
minAndMax <- ddply(tidyData2, tidyData2$names, colwise(range))
# transpose the columns
minAndMax <- data.frame(t(minAndMax))
# remove unnecessary row
minAndMax <- minAndMax[-1,]

# old approach
#fearureDataType <- rep("double", length(tidyData2))
#minAndMax <- cbind(names(tidyData2), c(3:68), fearureDataType, minAndMax)
#colnames(minAndMax) <- c("featureName", "columIndex", "fearureDataType", "minValue", "maxValue")
#rownames(minAndMax) <- NULL
#kable(minAndMax, format = "markdown")

# create a data set out of the data frame
tidyData <- data.set(tidyData)
# define descriptions for all variables before
# creating the code book
tidyData <- within(tidyData,{
  description(tidyData.activity) <- "The activities a volunteer took"
  description(tidyData.performerId) <- "An ID describing volunteers with a range of age between 19 and 48 years."
  description(tidyData.timeBodyAccelerationMeanX) <- "Computed mean of body acceleration for X-axis with time"
  description(tidyData.timeBodyAccelerationMeanY) <- "Computed mean of body acceleration for Y-axis with time"
  description(tidyData.timeBodyAccelerationMeanZ) <- "Computed mean of body acceleration for Z-axis with time"
  description(tidyData.timeBodyAccelerationStdX) <- "Computed standard deviation of body acceleration for X-axis with time"
  description(tidyData.timeBodyAccelerationStdY) <- "Computed standard deviation of body acceleration for Y-axis with time"
  description(tidyData.timeBodyAccelerationStdZ) <- "Computed standard deviation of body acceleration for Z-axis with time"
  description(tidyData.timeGravityAccelerationMeanX) <- "Computed mean of gravity acceleration for X-axis with time"
  description(tidyData.timeGravityAccelerationMeanY) <- "Computed mean of gravity acceleration for Y-axis with time"
  description(tidyData.timeGravityAccelerationMeanZ) <- "Computed mean of gravity acceleration for Z-axis with time"
  description(tidyData.timeGravityAccelerationStdX) <- "Computed standard deviation of gravity acceleration for X-axis with time"
  description(tidyData.timeGravityAccelerationStdY) <- "Computed standard deviation of gravity acceleration for Y-axis with time"
  description(tidyData.timeGravityAccelerationStdZ) <- "Computed standard deviation of gravity acceleration for Z-axis with time"
  description(tidyData.timeBodyAccelerationJerkMeanX) <- "Computed mean of body acceleration jerk for X-axis with time"
  description(tidyData.timeBodyAccelerationJerkMeanY) <- "Computed mean of body acceleration jerk for Y-axis with time"
  description(tidyData.timeBodyAccelerationJerkMeanZ) <- "Computed mean of body acceleration jerk for Z-axis with time"
  description(tidyData.timeBodyAccelerationJerkStdX) <- "Computed standard deviation of body jerk acceleration for X-axis with time"
  description(tidyData.timeBodyAccelerationJerkStdY) <- "Computed standard deviation of body jerk acceleration for Y-axis with time"
  description(tidyData.timeBodyAccelerationJerkStdZ) <- "Computed standard deviation of body jerk acceleration for Z-axis with time"
  description(tidyData.timeBodyGyroMeanX) <- "Computed mean of body angular velocity for X-axis with time"
  description(tidyData.timeBodyGyroMeanY) <- "Computed mean of body angular velocity for Y-axis with time"
  description(tidyData.timeBodyGyroMeanZ) <- "Computed mean of body angular velocity for Z-axis with time"
  description(tidyData.timeBodyGyroStdX) <- "Computed standard deviation of body angular velocity for X-axis with time"
  description(tidyData.timeBodyGyroStdY) <- "Computed standard deviation of body angular velocity for Y-axis with time"
  description(tidyData.timeBodyGyroStdZ) <- "Computed standard deviation of body angular velocity for Z-axis with time"
  description(tidyData.timeBodyGyroJerkMeanX) <- "Computed mean of body jerk angular velocity for X-axis with time"
  description(tidyData.timeBodyGyroJerkMeanY) <- "Computed mean body jerk angular velocity for Y-axis with time"
  description(tidyData.timeBodyGyroJerkMeanZ) <- "Computed mean of body jerk angular velocity for Z-axis with time"
  description(tidyData.timeBodyGyroJerkStdX) <- "Computed standard deviation of body jerk angular velocity for X-axis with time"
  description(tidyData.timeBodyGyroJerkStdY) <- "Computed standard deviation of body jerk angular velocity for Y-axis with time"
  description(tidyData.timeBodyGyroJerkStdZ) <- "Computed standard deviation of body jerk angular velocity for Z-axis with time"
  description(tidyData.timeBodyAccelerationMagnitudeMean) <- "Computed mean of body acceleration magnitude with time"
  description(tidyData.timeBodyAccelerationMagnitudeStd) <- "Computed standard deviation of body acceleration magnitude for Y-axis with time"
  description(tidyData.timeGravityAccelerationMagnitudeMean) <- "Computed mean of gravity acceleration magnitude with time"
  description(tidyData.timeGravityAccelerationMagnitudeStd) <- "Computed standard deviation of gravity acceleration magnitude with time"
  description(tidyData.timeBodyAccelerationJerkMagnitudeMean) <- "Computed mean of body acceleration jerk magnitude with time"
  description(tidyData.timeBodyAccelerationJerkMagnitudeStd) <- "Computed standard deviation of body acceleration jerk magnitude with time"
  description(tidyData.timeBodyGyroMagnitudeMean) <- "Computed mean of body angular velocity magnitude with time"
  description(tidyData.timeBodyGyroMagnitudeStd) <- "Computed standard deviation of body angular velocity magnitude for Y-axis with time"
  description(tidyData.timeBodyGyroJerkMagnitudeMean) <- "Computed mean of body angular velocity jerk magnitude with time"
  description(tidyData.timeBodyGyroJerkMagnitudeStd) <- "Computed standard deviation of body angular velocity jerk with time"
  description(tidyData.frequencyBodyAccelerationMeanX) <- "Computed mean of body acceleration for X-axis and frequency"
  description(tidyData.frequencyBodyAccelerationMeanY) <- "Computed mean of body acceleration for Y-axis with and frequency"
  description(tidyData.frequencyBodyAccelerationMeanZ) <- "Computed mean of body acceleration for Z-axis with and frequency"
  description(tidyData.frequencyBodyAccelerationStdX) <- "Computed standard deviation of body acceleration for X-axis with and frequency"
  description(tidyData.frequencyBodyAccelerationStdY) <- "Computed standard deviation of body acceleration for Y-axis with and frequency"
  description(tidyData.frequencyBodyAccelerationStdZ) <- "Computed standard deviation of body acceleration for Z-axis with and frequency"
  description(tidyData.frequencyBodyAccelerationJerkMeanX) <- "Computed mean of body acceleration jerk for X-axis and frequency"
  description(tidyData.frequencyBodyAccelerationJerkMeanY) <- "Computed mean of body acceleration jerk for Y-axis with and frequency"
  description(tidyData.frequencyBodyAccelerationJerkMeanZ) <- "Computed mean of body acceleration jerk for Z-axis with and frequency"
  description(tidyData.frequencyBodyAccelerationJerkStdX) <- "Computed standard deviation of body acceleration jerk for X-axis with and frequency"
  description(tidyData.frequencyBodyAccelerationJerkStdY) <- "Computed standard deviation of body acceleration jerk for Y-axis with and frequency"
  description(tidyData.frequencyBodyAccelerationJerkStdZ) <- "Computed standard deviation of body acceleration jerk for Z-axis with and frequency"
  description(tidyData.frequencyBodyGyroMeanX) <- "Computed mean of body gravity velocity for X-axis and frequency"
  description(tidyData.frequencyBodyGyroMeanY) <- "Computed mean of body gravity velocity for Y-axis with and frequency"
  description(tidyData.frequencyBodyGyroMeanZ) <- "Computed mean of body gravity velocity for Z-axis with and frequency"
  description(tidyData.frequencyBodyGyroStdX) <- "Computed standard deviation of body gravity velocity for X-axis with and frequency"
  description(tidyData.frequencyBodyGyroStdY) <- "Computed standard deviation of body gravity velocity for Y-axis with and frequency"
  description(tidyData.frequencyBodyGyroStdZ) <- "Computed standard deviation of body gravity velocity for Z-axis with and frequency"
  description(tidyData.frequencyBodyAccelerationMagnitudeMean) <- "Computed mean of body acceleration magnitude with and frequency"
  description(tidyData.frequencyBodyAccelerationMagnitudeStd) <- "Computed standard deviation of body acceleration magnitude for Y-axis with and frequency"
  description(tidyData.frequencyBodyAccelerationJerkMagnitudeMean) <- "Computed mean of body acceleration jerk magnitude with and frequency"
  description(tidyData.frequencyBodyAccelerationJerkMagnitudeStd) <- "Computed standard deviation jerk of body acceleration magnitude for Y-axis with and frequency"
  description(tidyData.frequencyBodyGyroMagnitudeMean) <- "Computed mean of body gravity velocity magnitude with and frequency"
  description(tidyData.frequencyBodyGyroMagnitudeStd) <- "Computed standard deviation of body gravity velocity magnitude for Y-axis with and frequency"
  description(tidyData.frequencyBodyGyroJerkMagnitudeMean) <- "Computed mean of body gravity velocity jerk magnitude with and frequency"
  description(tidyData.frequencyBodyGyroJerkMagnitudeStd) <- "Computed standard deviation of body gravity velocity jerk magnitude for Y-axis with and frequency"
  wording(tidyData.activity) <- "What is the activity a performer took to record activity values?"
  measurement(tidyData.activity) <- "ordinal"
})

# capture the genereated codebook output and write
# the code book fragment out to disk
cb <- codebook(tidyData)
capture.output(cb, file="code_book_fragment.md")