# Code book for Coursera Getting and Cleaning Data course project
This code book indicates all the variables and summaries calculated. The tidy data set is located in the `tidy_data.txt` file of this repository.
See the README.md file of this repository for background information on this data set.

The structure of the data set is described in the Data section, its variables are listed in the Variables section, and the transformations that were carried out to obtain the data set based on the source data are presented in the Transformations section.

## Data
The tidy_data.txt data file is a text file, containing space-separated values.
The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables.

## Variables
Each row contains, for a given subject and activity, 79 averaged signal measurements.
### Identifiers

| identifier | description | 
| ------------- | ------------- | 
| subjectId     | subject identifier, integer, ranges from 1 to 30|
| activity <br/><br/><br/><br/><br/><br/><br/><br/><br/> | activity identifier, string with 6 possible values <br/> <ul><li>WALKING: subject was walking</li><li>WALKING_UPSTAIRS: subject was walking upstairs</li><li>WALKING_DOWNSTAIRS: subject was walking downstairs</li><li>SITTING: subject was sitting</li><li>STANDING: subject was standing</li><li>LAYING: subject was laying</li></ul>|

## Average of measurements
All measurements are floating-point values, normalised and bounded within [-1,1].
Prior to normalisation, acceleration measurements (variables containing Accelerometer) were made in g's (9.81 m.s⁻²) and gyroscope measurements (variables containing Gyroscope) were made in radians per second (rad.s⁻¹).
Magnitudes of three-dimensional signals (variables containing Magnitude) were calculated using the Euclidean norm.

The measurements are classified in two domains:
* Time-domain signals (variables prefixed by timeDomain), resulting from the capture of accelerometer and gyroscope raw signals.
* Frequency-domain signals (variables prefixed by frequencyDomain), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

### Time-domain signals

Body acceleration in the X, Y and Z directions

| Average | Standard deviation |
| ------------- | ------------- | 
| timeDomainBodyAccelerometerMeanX<br/>timeDomainBodyAccelerometerMeanY<br/>timeDomainBodyAccelerometerMeanZ | timeDomainBodyAccelerometerStDevX<br/>timeDomainBodyAccelerometerStDevY<br/>timeDomainBodyAccelerometerStDevZ |

Gravity acceleration in the X, Y and Z directions

| Average | Standard deviation |
| ------------- | ------------- | 
timeDomainGravityAccelerometerMeanX<br/>timeDomainGravityAccelerometerMeanY<br/>timeDomainGravityAccelerometerMeanZ | timeDomainGravityAccelerometerStDevX<br/>timeDomainGravityAccelerometerStDevY<br/>timeDomainGravityAccelerometerStDevZ |  

Body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions

| Average | Standard deviation |
| ------------- | ------------- |
| timeDomainBodyAccelerometerJerkMeanX<br/>timeDomainBodyAccelerometerJerkMeanY<br/>timeDomainBodyAccelerometerJerkMeanZ | timeDomainBodyAccelerometerJerkStDevX<br/>timeDomainBodyAccelerometerJerkStDevY<br/>timeDomainBodyAccelerometerJerkStDevZ |

Body angular velocity in the X, Y and Z directions

| Average | Standard deviation |
| ------------- | ------------- | 
| timeDomainBodyGyroscopeMeanX<br/>timeDomainBodyGyroscopeMeanY<br/>timeDomainBodyGyroscopeMeanZ | timeDomainBodyGyroscopeStDevX<br/>timeDomainBodyGyroscopeStDevY<br/>timeDomainBodyGyroscopeStDevZ |

Body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions

| Average | Standard deviation |
| ------------- | ------------- |
|timeDomainBodyGyroscopeJerkMeanX<br/>timeDomainBodyGyroscopeJerkMeanY<br/>timeDomainBodyGyroscopeJerkMeanZ | timeDomainBodyGyroscopeJerkStDevX<br/>timeDomainBodyGyroscopeJerkStDevY<br/>timeDomainBodyGyroscopeJerkStDevZ |

Magnitude of body acceleration

| Average | Standard deviation |
| ------------- | ------------- | 
| timeDomainBodyAccelerometerMagnitudeMean | timeDomainBodyAccelerometerMagnitudeStDev |

Magnitude of gravity acceleration

| Average | Standard deviation |
| ------------- | ------------- | 
| timeDomainGravityAccelerometerMagnitudeMean | timeDomainGravityAccelerometerMagnitudeStDev | 

Magnitude of body acceleration jerk (derivation of the acceleration in time)

| Average | Standard deviation |
| ------------- | ------------- | 
| timeDomainBodyAccelerometerJerkMagnitudeMean | timeDomainBodyAccelerometerJerkMagnitudeStDev | 

Magnitude of body angular velocity

| Average | Standard deviation |
| ------------- | ------------- | 
| timeDomainBodyGyroscopeMagnitudeMean | timeDomainBodyGyroscopeMagnitudeStDev |

Magnitude of body angular velocity jerk (derivation of the angular velocity in time)

| Average | Standard deviation |
| ------------- | ------------- | 
| timeDomainBodyGyroscopeJerkMagnitudeMean | timeDomainBodyGyroscopeJerkMagnitudeStDev |


### Frequency-domain signals
Body acceleration in the X, Y and Z directions

| Average |Weighted Average| Standard deviation | 
| ------------- | ------------- | ------------- |  
| frequencyDomainBodyAccelerometerMeanX<br/>frequencyDomainBodyAccelerometerMeanY<br/>frequencyDomainBodyAccelerometerMeanZ | frequencyDomainBodyAccelerometerMeanFrequencyX<br/>frequencyDomainBodyAccelerometerMeanFrequencyY<br/>frequencyDomainBodyAccelerometerMeanFrequencyZ | frequencyDomainBodyAccelerometerStDevX<br/>frequencyDomainBodyAccelerometerStDevY<br/>frequencyDomainBodyAccelerometerStDevZ |

Body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions

| Average |Weighted Average| Standard deviation | 
| ------------- | ------------- | ------------- |  
| frequencyDomainBodyAccelerometerJerkMeanX<br/> frequencyDomainBodyAccelerometerJerkMeanY<br/> frequencyDomainBodyAccelerometerJerkMeanZ | frequencyDomainBodyAccelerometerJerkMeanFrequencyX<br/> frequencyDomainBodyAccelerometerJerkMeanFrequencyY<br/> frequencyDomainBodyAccelerometerJerkMeanFrequencyZ | frequencyDomainBodyAccelerometerJerkStDevX<br/>frequencyDomainBodyAccelerometerJerkStDevY<br/>frequencyDomainBodyAccelerometerJerkStDevZ | 

Body angular velocity in the X, Y and Z directions

| Average |Weighted Average| Standard deviation | 
| ------------- | ------------- | ------------- |  
|frequencyDomainBodyGyroscopeMeanX<br/> frequencyDomainBodyGyroscopeMeanY<br/> frequencyDomainBodyGyroscopeMeanZ | frequencyDomainBodyGyroscopeMeanFrequencyX<br/> frequencyDomainBodyGyroscopeMeanFrequencyY<br/> frequencyDomainBodyGyroscopeMeanFrequencyZ | frequencyDomainBodyGyroscopeStDevX<br/> frequencyDomainBodyGyroscopeStDevY<br/> frequencyDomainBodyGyroscopeStDevZ |

Magnitude of body acceleration

| Average |Weighted Average| Standard deviation | 
| ------------- | ------------- | ------------- |  
|frequencyDomainBodyAccelerometerMagnitudeMean | frequencyDomainBodyAccelerometerMagnitudeMeanFrequency | frequencyDomainBodyAccelerometerMagnitudeStDev |

Magnitude of body acceleration jerk (derivation of the acceleration in time)

| Average |Weighted Average| Standard deviation | 
| ------------- | ------------- | ------------- |  
|frequencyDomainBodyAccelerometerJerkMagnitudeMean | frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency | frequencyDomainBodyAccelerometerJerkMagnitudeStDev |

Magnitude of body angular velocity

| Average |Weighted Average| Standard deviation | 
| ------------- | ------------- | ------------- |  
|frequencyDomainBodyGyroscopeMagnitudeMean |  frequencyDomainBodyGyroscopeMagnitudeMeanFrequency | frequencyDomainBodyGyroscopeMagnitudeStDev |

Magnitude of body angular velocity jerk (derivation of the angular velocity in time)

| Average |Weighted Average| Standard deviation | 
| ------------- | ------------- | ------------- |  
|frequencyDomainBodyGyroscopeJerkMagnitudeMean | frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency | frequencyDomainBodyGyroscopeJerkMagnitudeStDev |

## Transformations

The zip file containing the source data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The following transformations were applied to the source data:

1. The training and test sets were merged to create one data set.
2. The measurements on the mean and standard deviation (i.e. signals containing the strings mean and std) were extracted for each measurement, and the others were discarded.
3. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see Identifiers section).
4. The variable names were replaced with descriptive variable names (e.g. tBodyAcc-mean()-X was expanded to timeDomainBodyAccelerometerMeanX), using the following set of rules:
   * Special characters (i.e. (, ), ., and -) were removed
   * The initial f and t were expanded to frequencyDomain and timeDomain respectively.
   * Acc, Gyro, Mag, Freq, mean, and std were replaced with Accelerometer, Gyroscope, Magnitude, Frequency, Mean, and StDev respectively.
   * Replaced (supposedly incorrect as per source's features_info.txt file) BodyBody with Body.
5. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above were implemented by the run_analysis.R R script .
