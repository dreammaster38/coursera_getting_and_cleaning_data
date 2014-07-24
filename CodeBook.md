# Codebook for Coursera Getting and Cleaning Data Programming Assignment 
----------

## Description

This is the code book for the programming assignment of Coursera's 'Getting and Cleaning Data' Online learning course.
This document describes all variables used as result of a cleaning up a Human Activity Recognition Using Smartphones Data Set.

## Variable descriptions


   tidyData.activity 'The activities a volunteer took'

   "What is the activity a performer took to record activity values?"

--------------------------------------------------------------------------------------------

   Storage mode: factor
   Measurement: ordinal



   |id |Values and labels    |N    |Percent|
   |---|---------------------|-----|-------|                                        
   |1  |'laying'             |30   |16.7   |
   |2  |'sitting'            |30   |16.7   |
   |3  |'standing'           |30   |16.7   |
   |4  |'walking'            |30   |16.7   |
   |5  |'walkingDownstairs'  |30   |16.7   |
   |6  |'walkingUpstairs'    |30   |16.7   |


============================================================================================

   tidyData.performerId 'An ID describing volunteers with a range of age between 19 and 48
   years.'

--------------------------------------------------------------------------------------------

   Storage mode: integer
   Measurement: interval

            Min:   1.000
            Max:  30.000
           Mean:  15.500
       Std.Dev.:   8.655
       Skewness:   0.000
       Kurtosis:  -1.203

============================================================================================

   tidyData.timeBodyAccelerationMeanX 'Computed mean of body acceleration for X-axis with
   time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:   0.222
            Max:   0.301
           Mean:   0.274
       Std.Dev.:   0.012
       Skewness:  -1.055
       Kurtosis:   2.329

============================================================================================

   tidyData.timeBodyAccelerationMeanY 'Computed mean of body acceleration for Y-axis with
   time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.041
            Max:  -0.001
           Mean:  -0.018
       Std.Dev.:   0.006
       Skewness:  -0.537
       Kurtosis:   1.612

============================================================================================

   tidyData.timeBodyAccelerationMeanZ 'Computed mean of body acceleration for Z-axis with
   time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.153
            Max:  -0.075
           Mean:  -0.109
       Std.Dev.:   0.010
       Skewness:  -1.115
       Kurtosis:   4.910

============================================================================================

   tidyData.timeBodyAccelerationStdX 'Computed standard deviation of body acceleration for
   X-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.996
            Max:   0.627
           Mean:  -0.558
       Std.Dev.:   0.450
       Skewness:   0.438
       Kurtosis:  -1.216

============================================================================================

   tidyData.timeBodyAccelerationStdY 'Computed standard deviation of body acceleration for
   Y-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.990
            Max:   0.617
           Mean:  -0.460
       Std.Dev.:   0.495
       Skewness:   0.235
       Kurtosis:  -1.586

============================================================================================

   tidyData.timeBodyAccelerationStdZ 'Computed standard deviation of body acceleration for
   Z-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.988
            Max:   0.609
           Mean:  -0.576
       Std.Dev.:   0.394
       Skewness:   0.451
       Kurtosis:  -1.026

============================================================================================

   tidyData.timeGravityAccelerationMeanX 'Computed mean of gravity acceleration for X-axis
   with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.680
            Max:   0.975
           Mean:   0.697
       Std.Dev.:   0.486
       Skewness:  -1.811
       Kurtosis:   1.452

============================================================================================

   tidyData.timeGravityAccelerationMeanY 'Computed mean of gravity acceleration for Y-axis
   with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.480
            Max:   0.957
           Mean:  -0.016
       Std.Dev.:   0.344
       Skewness:   1.427
       Kurtosis:   1.051

============================================================================================

   tidyData.timeGravityAccelerationMeanZ 'Computed mean of gravity acceleration for Z-axis
   with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.495
            Max:   0.958
           Mean:   0.074
       Std.Dev.:   0.288
       Skewness:   1.145
       Kurtosis:   1.208

============================================================================================

   tidyData.timeGravityAccelerationStdX 'Computed standard deviation of gravity
   acceleration for X-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:  -0.830
           Mean:  -0.964
       Std.Dev.:   0.025
       Skewness:   1.669
       Kurtosis:   5.051

============================================================================================

   tidyData.timeGravityAccelerationStdY 'Computed standard deviation of gravity
   acceleration for Y-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:  -0.644
           Mean:  -0.952
       Std.Dev.:   0.033
       Skewness:   4.817
       Kurtosis:  42.501

============================================================================================

   tidyData.timeGravityAccelerationStdZ 'Computed standard deviation of gravity
   acceleration for Z-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.991
            Max:  -0.610
           Mean:  -0.936
       Std.Dev.:   0.040
       Skewness:   3.248
       Kurtosis:  22.288

============================================================================================

   tidyData.timeBodyAccelerationJerkMeanX 'Computed mean of body acceleration jerk for
   X-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  0.043
            Max:  0.130
           Mean:  0.079
       Std.Dev.:  0.013
       Skewness:  0.821
       Kurtosis:  2.560

============================================================================================

   tidyData.timeBodyAccelerationJerkMeanY 'Computed mean of body acceleration jerk for
   Y-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.039
            Max:   0.057
           Mean:   0.008
       Std.Dev.:   0.014
       Skewness:  -0.192
       Kurtosis:   1.606

============================================================================================

   tidyData.timeBodyAccelerationJerkMeanZ 'Computed mean of body acceleration jerk for
   Z-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.067
            Max:   0.038
           Mean:  -0.005
       Std.Dev.:   0.013
       Skewness:  -0.835
       Kurtosis:   3.525

============================================================================================

   tidyData.timeBodyAccelerationJerkStdX 'Computed standard deviation of body jerk
   acceleration for X-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.544
           Mean:  -0.595
       Std.Dev.:   0.416
       Skewness:   0.424
       Kurtosis:  -1.273

============================================================================================

   tidyData.timeBodyAccelerationJerkStdY 'Computed standard deviation of body jerk
   acceleration for Y-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.990
            Max:   0.355
           Mean:  -0.565
       Std.Dev.:   0.432
       Skewness:   0.362
       Kurtosis:  -1.450

============================================================================================

   tidyData.timeBodyAccelerationJerkStdZ 'Computed standard deviation of body jerk
   acceleration for Z-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:   0.031
           Mean:  -0.736
       Std.Dev.:   0.276
       Skewness:   0.679
       Kurtosis:  -0.681

============================================================================================

   tidyData.timeBodyGyroMeanX 'Computed mean of body angular velocity for X-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.206
            Max:   0.193
           Mean:  -0.032
       Std.Dev.:   0.054
       Skewness:   0.341
       Kurtosis:   2.391

============================================================================================

   tidyData.timeBodyGyroMeanY 'Computed mean of body angular velocity for Y-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.204
            Max:   0.027
           Mean:  -0.074
       Std.Dev.:   0.035
       Skewness:  -0.286
       Kurtosis:   2.070

============================================================================================

   tidyData.timeBodyGyroMeanZ 'Computed mean of body angular velocity for Z-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.072
            Max:   0.179
           Mean:   0.087
       Std.Dev.:   0.036
       Skewness:  -0.781
       Kurtosis:   3.224

============================================================================================

   tidyData.timeBodyGyroStdX 'Computed standard deviation of body angular velocity for
   X-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.268
           Mean:  -0.692
       Std.Dev.:   0.290
       Skewness:   0.391
       Kurtosis:  -1.073

============================================================================================

   tidyData.timeBodyGyroStdY 'Computed standard deviation of body angular velocity for
   Y-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.477
           Mean:  -0.653
       Std.Dev.:   0.351
       Skewness:   0.731
       Kurtosis:  -0.458

============================================================================================

   tidyData.timeBodyGyroStdZ 'Computed standard deviation of body angular velocity for
   Z-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.565
           Mean:  -0.616
       Std.Dev.:   0.372
       Skewness:   0.531
       Kurtosis:  -0.798

============================================================================================

   tidyData.timeBodyGyroJerkMeanX 'Computed mean of body jerk angular velocity for X-axis
   with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.157
            Max:  -0.022
           Mean:  -0.096
       Std.Dev.:   0.023
       Skewness:   0.485
       Kurtosis:   1.825

============================================================================================

   tidyData.timeBodyGyroJerkMeanY 'Computed mean body jerk angular velocity for Y-axis with
   time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.077
            Max:  -0.013
           Mean:  -0.043
       Std.Dev.:   0.010
       Skewness:  -0.814
       Kurtosis:   2.785

============================================================================================

   tidyData.timeBodyGyroJerkMeanZ 'Computed mean of body jerk angular velocity for Z-axis
   with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.092
            Max:  -0.007
           Mean:  -0.055
       Std.Dev.:   0.012
       Skewness:   0.258
       Kurtosis:   1.867

============================================================================================

   tidyData.timeBodyGyroJerkStdX 'Computed standard deviation of body jerk angular velocity
   for X-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.179
           Mean:  -0.704
       Std.Dev.:   0.300
       Skewness:   0.554
       Kurtosis:  -0.916

============================================================================================

   tidyData.timeBodyGyroJerkStdY 'Computed standard deviation of body jerk angular velocity
   for Y-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.296
           Mean:  -0.764
       Std.Dev.:   0.267
       Skewness:   1.156
       Kurtosis:   1.064

============================================================================================

   tidyData.timeBodyGyroJerkStdZ 'Computed standard deviation of body jerk angular velocity
   for Z-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.193
           Mean:  -0.710
       Std.Dev.:   0.304
       Skewness:   0.649
       Kurtosis:  -0.652

============================================================================================

   tidyData.timeBodyAccelerationMagnitudeMean 'Computed mean of body acceleration magnitude
   with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.645
           Mean:  -0.497
       Std.Dev.:   0.472
       Skewness:   0.231
       Kurtosis:  -1.587

============================================================================================

   tidyData.timeBodyAccelerationMagnitudeStd 'Computed standard deviation of body
   acceleration magnitude for Y-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.428
           Mean:  -0.544
       Std.Dev.:   0.430
       Skewness:   0.464
       Kurtosis:  -1.194

============================================================================================

   tidyData.timeGravityAccelerationMagnitudeMean 'Computed mean of gravity acceleration
   magnitude with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.645
           Mean:  -0.497
       Std.Dev.:   0.472
       Skewness:   0.231
       Kurtosis:  -1.587

============================================================================================

   tidyData.timeGravityAccelerationMagnitudeStd 'Computed standard deviation of gravity
   acceleration magnitude with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.428
           Mean:  -0.544
       Std.Dev.:   0.430
       Skewness:   0.464
       Kurtosis:  -1.194

============================================================================================

   tidyData.timeBodyAccelerationJerkMagnitudeMean 'Computed mean of body acceleration jerk
   magnitude with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:   0.434
           Mean:  -0.608
       Std.Dev.:   0.395
       Skewness:   0.360
       Kurtosis:  -1.388

============================================================================================

   tidyData.timeBodyAccelerationJerkMagnitudeStd 'Computed standard deviation of body
   acceleration jerk magnitude with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.451
           Mean:  -0.584
       Std.Dev.:   0.422
       Skewness:   0.425
       Kurtosis:  -1.319

============================================================================================

   tidyData.timeBodyGyroMagnitudeMean 'Computed mean of body angular velocity magnitude
   with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.981
            Max:   0.418
           Mean:  -0.565
       Std.Dev.:   0.397
       Skewness:   0.313
       Kurtosis:  -1.422

============================================================================================

   tidyData.timeBodyGyroMagnitudeStd 'Computed standard deviation of body angular velocity
   magnitude for Y-axis with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.981
            Max:   0.300
           Mean:  -0.630
       Std.Dev.:   0.336
       Skewness:   0.482
       Kurtosis:  -1.027

============================================================================================

   tidyData.timeBodyGyroJerkMagnitudeMean 'Computed mean of body angular velocity jerk
   magnitude with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.088
           Mean:  -0.736
       Std.Dev.:   0.276
       Skewness:   0.660
       Kurtosis:  -0.646

============================================================================================

   tidyData.timeBodyGyroJerkMagnitudeStd 'Computed standard deviation of body angular
   velocity jerk with time'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.998
            Max:   0.250
           Mean:  -0.755
       Std.Dev.:   0.265
       Skewness:   1.016
       Kurtosis:   0.546

============================================================================================

   tidyData.frequencyBodyAccelerationMeanX 'Computed mean of body acceleration for X-axis
   and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.537
           Mean:  -0.576
       Std.Dev.:   0.429
       Skewness:   0.391
       Kurtosis:  -1.328

============================================================================================

   tidyData.frequencyBodyAccelerationMeanY 'Computed mean of body acceleration for Y-axis
   with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.989
            Max:   0.524
           Mean:  -0.489
       Std.Dev.:   0.479
       Skewness:   0.259
       Kurtosis:  -1.567

============================================================================================

   tidyData.frequencyBodyAccelerationMeanZ 'Computed mean of body acceleration for Z-axis
   with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.989
            Max:   0.281
           Mean:  -0.630
       Std.Dev.:   0.355
       Skewness:   0.470
       Kurtosis:  -1.073

============================================================================================

   tidyData.frequencyBodyAccelerationStdX 'Computed standard deviation of body acceleration
   for X-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.659
           Mean:  -0.552
       Std.Dev.:   0.459
       Skewness:   0.469
       Kurtosis:  -1.145

============================================================================================

   tidyData.frequencyBodyAccelerationStdY 'Computed standard deviation of body acceleration
   for Y-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.991
            Max:   0.560
           Mean:  -0.481
       Std.Dev.:   0.473
       Skewness:   0.244
       Kurtosis:  -1.566

============================================================================================

   tidyData.frequencyBodyAccelerationStdZ 'Computed standard deviation of body acceleration
   for Z-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.687
           Mean:  -0.582
       Std.Dev.:   0.387
       Skewness:   0.518
       Kurtosis:  -0.808

============================================================================================

   tidyData.frequencyBodyAccelerationJerkMeanX 'Computed mean of body acceleration jerk for
   X-axis and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.474
           Mean:  -0.614
       Std.Dev.:   0.397
       Skewness:   0.444
       Kurtosis:  -1.222

============================================================================================

   tidyData.frequencyBodyAccelerationJerkMeanY 'Computed mean of body acceleration jerk for
   Y-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.989
            Max:   0.277
           Mean:  -0.588
       Std.Dev.:   0.407
       Skewness:   0.347
       Kurtosis:  -1.478

============================================================================================

   tidyData.frequencyBodyAccelerationJerkMeanZ 'Computed mean of body acceleration jerk for
   Z-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.992
            Max:   0.158
           Mean:  -0.714
       Std.Dev.:   0.296
       Skewness:   0.670
       Kurtosis:  -0.677

============================================================================================

   tidyData.frequencyBodyAccelerationJerkStdX 'Computed standard deviation of body
   acceleration jerk for X-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.477
           Mean:  -0.612
       Std.Dev.:   0.399
       Skewness:   0.413
       Kurtosis:  -1.306

============================================================================================

   tidyData.frequencyBodyAccelerationJerkStdY 'Computed standard deviation of body
   acceleration jerk for Y-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.990
            Max:   0.350
           Mean:  -0.571
       Std.Dev.:   0.431
       Skewness:   0.393
       Kurtosis:  -1.386

============================================================================================

   tidyData.frequencyBodyAccelerationJerkStdZ 'Computed standard deviation of body
   acceleration jerk for Z-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:  -0.006
           Mean:  -0.756
       Std.Dev.:   0.256
       Skewness:   0.709
       Kurtosis:  -0.606

============================================================================================

   tidyData.frequencyBodyGyroMeanX 'Computed mean of body gravity velocity for X-axis and
   frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:   0.475
           Mean:  -0.637
       Std.Dev.:   0.346
       Skewness:   0.417
       Kurtosis:  -1.040

============================================================================================

   tidyData.frequencyBodyGyroMeanY 'Computed mean of body gravity velocity for Y-axis with
   and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.329
           Mean:  -0.677
       Std.Dev.:   0.331
       Skewness:   0.738
       Kurtosis:  -0.471

============================================================================================

   tidyData.frequencyBodyGyroMeanZ 'Computed mean of body gravity velocity for Z-axis with
   and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.492
           Mean:  -0.604
       Std.Dev.:   0.383
       Skewness:   0.445
       Kurtosis:  -1.128

============================================================================================

   tidyData.frequencyBodyGyroStdX 'Computed standard deviation of body gravity velocity for
   X-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.197
           Mean:  -0.711
       Std.Dev.:   0.272
       Skewness:   0.401
       Kurtosis:  -1.052

============================================================================================

   tidyData.frequencyBodyGyroStdY 'Computed standard deviation of body gravity velocity for
   Y-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.646
           Mean:  -0.645
       Std.Dev.:   0.362
       Skewness:   0.830
       Kurtosis:  -0.090

============================================================================================

   tidyData.frequencyBodyGyroStdZ 'Computed standard deviation of body gravity velocity for
   Z-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.522
           Mean:  -0.658
       Std.Dev.:   0.335
       Skewness:   0.631
       Kurtosis:  -0.449

============================================================================================

   tidyData.frequencyBodyAccelerationMagnitudeMean 'Computed mean of body acceleration
   magnitude with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.587
           Mean:  -0.537
       Std.Dev.:   0.450
       Skewness:   0.464
       Kurtosis:  -1.197

============================================================================================

   tidyData.frequencyBodyAccelerationMagnitudeStd 'Computed standard deviation of body
   acceleration magnitude for Y-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.988
            Max:   0.179
           Mean:  -0.621
       Std.Dev.:   0.352
       Skewness:   0.493
       Kurtosis:  -1.134

============================================================================================

   tidyData.frequencyBodyAccelerationJerkMagnitudeMean 'Computed mean of body acceleration
   jerk magnitude with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.538
           Mean:  -0.576
       Std.Dev.:   0.430
       Skewness:   0.424
       Kurtosis:  -1.293

============================================================================================

   tidyData.frequencyBodyAccelerationJerkMagnitudeStd 'Computed standard deviation jerk of
   body acceleration magnitude for Y-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.316
           Mean:  -0.599
       Std.Dev.:   0.408
       Skewness:   0.453
       Kurtosis:  -1.301

============================================================================================

   tidyData.frequencyBodyGyroMagnitudeMean 'Computed mean of body gravity velocity
   magnitude with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.204
           Mean:  -0.667
       Std.Dev.:   0.317
       Skewness:   0.582
       Kurtosis:  -0.793

============================================================================================

   tidyData.frequencyBodyGyroMagnitudeStd 'Computed standard deviation of body gravity
   velocity magnitude for Y-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.981
            Max:   0.237
           Mean:  -0.672
       Std.Dev.:   0.292
       Skewness:   0.493
       Kurtosis:  -0.955

============================================================================================

   tidyData.frequencyBodyGyroJerkMagnitudeMean 'Computed mean of body gravity velocity jerk
   magnitude with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.998
            Max:   0.147
           Mean:  -0.756
       Std.Dev.:   0.262
       Skewness:   0.957
       Kurtosis:   0.276

============================================================================================

   tidyData.frequencyBodyGyroJerkMagnitudeStd 'Computed standard deviation of body gravity
   velocity jerk magnitude for Y-axis with and frequency'

--------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.998
            Max:   0.288
           Mean:  -0.772
       Std.Dev.:   0.250
       Skewness:   1.137
       Kurtosis:   1.122

## Remarks

This codebook was create by Thomas Guenther, Software: R-Studio, memisc-package, edited by hand after auto generation, Created 07/2014.
