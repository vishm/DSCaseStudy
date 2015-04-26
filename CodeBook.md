CodeBook
========

- [Question](#thequestion)
- [Source Data](#SourceData)
- [Data Variables](#variables)


###<a name="thequestion"/></a>Question

Data cleaning excerise, reformatting large dataset into smaller cleaner version for asking further questions.

###<a name="sourcedata"></a>Source Data

The source  [dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
has been used for this study, is the collection of measurement data that has been collected from 30 individuals / subject_ids of the age 19-48yrs during 6 activities. The measured accelerometer and gyroscope data has been gathered through a Samsung Galaxy SII  that has been strapped to the waist of the subjects.

The zipped dataset contains further details on the source data collected and the individual fields (see features_info.txt).

###Data cleansing process

The main objective for this operation is to construct single unified dataset based on the training and test dataset from the raw data. There are many measurements within the raw dataset, but we are interested in the following elements:

- Single dataset the training and test dataset.
- Subject ID and Acivity as variables/labels within the dataset making for easy analysis.
- All variables are in lowercase
- For each of the measured features, we only require mean and standard deviation values.

###<a name="variables"></a>Data Variables


The single resultant dataset contains:

- subject_id - ID of the subject that the record of measurement pertains to.
- activity - activity undertaken when measurement was gathered. This will be one of the following "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"

this is then followed by the mean() and std() or the following measures.

tbodyacc-xyz</br>
tgravityacc-xyz</br>
tbodyaccjerk-xyz</br>
tbodygyro-xyz</br>
tbodygyrojerk-xyz</br>
tbodyaccmag</br>
tgravityaccmag</br>
tbodyaccjerkmag</br>
tbodygyromag</br>
tbodygyrojerkmag</br>
fbodyacc-xyz</br>
fbodyaccjerk-xyz</br>
fbodygyro-xyz</br>
fbodyaccmag</br>
fbodyaccjerkmag</br>
fbodygyromag</br>
fbodygyrojerkmag</br>

<cite>The following description of the variables is from features_info.txt from the source dataset</cite>

###Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ</br>
tGravityAcc-XYZ</br>
tBodyAccJerk-XYZ</br>
tBodyGyro-XYZ</br>
tBodyGyroJerk-XY</br>Z
tBodyAccMag</br>
tGravityAccMag</br>
tBodyAccJerkMag</br>
tBodyGyroMag</br>
tBodyGyroJerkMag</br>
fBodyAcc-XYZ</br>
fBodyAccJerk-XYZ</br>
fBodyGyro-XYZ</br>
fBodyAccMag</br>
fBodyAccJerkMag</br>
fBodyGyroMag</br>
fBodyGyroJerkMag</br>
