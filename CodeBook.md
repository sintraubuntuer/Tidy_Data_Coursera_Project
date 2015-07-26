Code Book
===================

As described in the README.md file the present work is based on a previous work and dataset

Regarding the original dataset :

* The variables used in the dataset come from an experiment we already described in the file README.md
and were obtained in the following way :
 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  *


** Our tidy dataset uses the following rules and variables :

Given that a feature list file  was provided with the original dataset including feature labels we chose not to alter the labels except for removing parenthesis "(" and ")" and dashes "-" and substituting "BodyBody" for "Body" 


The classes of the columns of our dataframe are :

activity is a character variable (string) which can assume one of the values 
 " WALKING" ,"WALKING_UPSTAIRS" ,  "WALKING_DOWNSTAIRS" ,  "SITTING" , "STANDING" ,  "LAYING"

subjectId  is an integer between 1 and 30 -   (an identifier of the subject who carried out the experiment)

all other variables are numeric() variables on the interval [-1,1]


a list of all the variables  , and their description :

| col| Column Name                      |Description|   variable type
|----|----------------------------------|-----------------------|
|  1 | activity 			| Activity label-String - can assume the 'values'   |   character  |
|  2 | subjectId  			| subjectID      - An identifier of the subject who carried out the experiment -  Integer   - int between 1 and 30  |   integer  |
|  3 | tBodyAccmeanX			| Average body acceleration on the X Axis  |   numeric  |
|  4 | tBodyAccmeanY  	         	| Average body acceleration on the Y Axis  |   numeric  |
|  5 | tBodyAccmeanZ			| Average body acceleration on the Z Axis  |   numeric  |
|  6 | tGravityAccmeanX     		| average gravity acceleration - X Axis    |   numeric  |
|  7 | tGravityAccmeanY 		| average gravity acceleration - Y Axis    |   numeric  |
|  8 | tGravityAccmeanZ  		| average gravity acceleration - Z Axis    |   numeric  |
|  9 | tBodyAccJerkmeanX		| average time derivative (jerk) of body acceleration  X-axis    |   numeric  |
| 10 | tBodyAccJerkmeanY		| average time derivative (jerk) of body acceleration  Y-axis    |   numeric  |
| 11 | tBodyAccJerkmeanZ		| average time derivative (jerk) of body acceleration  Z-axis    |   numeric  |
| 12 | tBodyGyromeanX			| average body angular velocity on the X-Axis                    |   numeric  |
| 13 | tBodyGyromeanY			| average body angular velocity on the Y-Axis                    |   numeric  |
| 14 | tBodyGyromeanZ       		| average body angular velocity on the Z-Axis                   |   numeric  |
| 15 | tBodyGyroJerkmeanX		| average time derivative (jerk ) of angular velocity  X-axis   |   numeric  |
| 16 | tBodyGyroJerkmeanY        	| average jerk signal of angular velocity  Y-axis                      |   numeric  |
| 17 | tBodyGyroJerkmeanZ		| average jerk signal of angular velocity  Z-axis                      |   numeric  |
| 18 | tBodyAccMagmean     		| average body acceleration Magnitude  ( calculated using the Euclidean norm )        |   numeric  |
| 19 | tGravityAccMagmean		| average gravity acceleration Magnitude  ( calculated using the Euclidean norm )     |   numeric  |
| 20 | tBodyAccJerkMagmean       	| average Magnitude of the jerk (time derivative) of body acceleration                |   numeric  |
| 21 | tBodyGyroMagmean 		| average Magnitude of the angular velocity                                           |   numeric  |
| 22 | tBodyGyroJerkMagmean		| average Magnitude of the jerk (time derivative) of angular velocity                 |   numeric  | 
| 23 | fBodyAccmeanX      		| average of the Fast Fourier Transform (FFT) applied to body acceleration on the X-axis  |   numeric  |
| 24 | fBodyAccmeanY             	| average of the FFT applied to body acceleration on the Y-axis                           |   numeric  |
| 25 | fBodyAccmeanZ      		| average of the FFT applied to body acceleration on the Z-axis                           |   numeric  |
| 26 | fBodyAccmeanFreqX         	| weighted average of the frequency components of body acceleration - X-axis  |   numeric  |
| 27 | fBodyAccmeanFreqY        	| weighted average of the frequency components of body acceleration - Y-axis  |   numeric  |
| 28 | fBodyAcc_meanFreqZ       	| weighted average of the frequency components of body acceleration - Z-axis  |   numeric  |
| 29 | fBodyAccJerkmeanX        	| average of the FFT applied to the jerk (time derivative) body acceleration on the X-axis  |   numeric  |
| 30 | fBodyAccJerkmeanY        	| average of the FFT applied to the jerk signal of body acceleration on the Y-axis  |   numeric  |
| 31 | fBodyAccJerkmeanZ        	| average of the FFT applied to the jerk signal of body acceleration on the Z-axis  |   numeric  |
| 32 | fBodyAccJerkmeanFreqX    	| weighted average of the frequency components of the jerk signal of body acceleration X-axis  |   numeric  |
| 33 | fBodyAccJerkmeanFreqY    	| weighted average of the frequency components of the jerk signal of body acceleration Y-axis  |   numeric  |
| 34 | fBodyAccJerkmeanFreqZ    	| weighted average of the frequency components of the jerk signal of body acceleration Z-axis   |   numeric  |
| 35 | fBodyGyromeanX           	| average of the FFT applied to body angular velocity X-axis  |   numeric  |
| 36 | fBodyGyromeanY           	| average of the FFT applied to body angular velocity Y-axis  |   numeric  |
| 37 | fBodyGyromeanZ           	| average of the FFT applied to body angular velocity Z-axis  |   numeric  |
| 38 | fBodyGyromeanFreqX     	        | weighted average of the frequency components of body angular velocity X-axis |   numeric  |
| 39 | fBodyGyromeanFreqY       	| weighted average of the frequency components of body angular velocity Y-axis |   numeric  |
| 40 | fBodyGyromeanFreqZ       	| weighted average of the frequency components of body angular velocity Z-axis |   numeric  |
| 41 | fBodyAccMagmean          	| average of the FFT applied to the Magnitude of body acceleration   |   numeric  |
| 42 | fBodyAccMagmeanFreq      	| weighted average of the frequency components of the Magnitude of body acceleration       |   numeric  |
| 43 | fBodyAccJerkMagmean	 	| average of the FFT applied to the Magnitude of the jerk signal of body acceleration      |   numeric  |
| 44 | fBodyAccJerkMagmeanFreq 	        | weighted average of the frequency components of the Magnitude of body acceleration       |   numeric  |
| 45 | fBodyGyroMagmean	                | average of the FFT applied to the Magnitude of body angular velocity  |   numeric  |
| 46 | fBodyGyroMagmeanFreq	        | weighted average of the frequency components of the Magnitude of angular velocity        |   numeric  |
| 47 | fBodyGyroJerkMagmean	        | average of the FFT applied to the Magnitude of the jerk signal of body angular velocity  |   numeric  |
| 48 | fBodyGyroJerkMagmeanFreq	        | weighted average of the frequency components of the Magnitude of the jerk signal of body angular velocity  |   numeric  |
| 49 | tBodyAccstdX                     | standard deviation of body acceleration on the X Axis		|   numeric  |
| 50 | tBodyAccstdY             	| standard deviation of body acceleration on the Y Axis		|   numeric  |
| 51 | tBodyAccstdZ                     | standard deviation of body acceleration on the Z Axis		|   numeric  |
| 52 | tGravityAccstdX                  | standard deviation of gravity acceleration - X Axis		|   numeric  |
| 53 | tGravityAccstdY                  | standard deviation of gravity acceleration - Y Axis		|   numeric  |
| 54 | tGravityAccstdZ                  | standard deviation of gravity acceleration - Z Axis		|   numeric  |
| 55 | tBodyAccJerkstdX                 | standard deviation of time derivative of body acceleration (jerk) X-axis	|   numeric  |
| 56 | tBodyAccJerkstdY                 | standard deviation of time derivative of body acceleration (jerk) Y-axis	|   numeric  |
| 57 | tBodyAccJerkstdZ                 | standard deviation of time derivative of body acceleration (jerk) Z-axis	|   numeric  |
| 58 | tBodyGyrostdX                    | standard deviation of body angular velocity on the X-Axis 			|   numeric  |
| 59 | tBodyGyrostdY                    | standard deviation of body angular velocity on the Y-Axis			|   numeric  |
| 60 | tBodyGyrostdZ                    | standard deviation of body angular velocity on the Z-Axis			|   numeric  |
| 61 | tBodyGyroJerkstdX                | standard deviation of time derivative (jerk ) angular velocity  X-axis	|   numeric  |
| 62 | tBodyGyroJerkstdY                | standard deviation of average jerk of angular velocity  Y-axis 		|   numeric  |
| 63 | tBodyGyroJerkstdZ                | standard deviation of average jerk of angular velocity  Z-axis		|   numeric  |
| 64 | tBodyAccMagstd                   | standard deviation of body acceleration Magnitude ( calculated using the Euclidean norm )      |   numeric  |
| 65 | tGravityAccMagstd                | standard deviation of gravity acceleration Magnitude  ( calculated using the Euclidean norm )  |    numeric  |
| 66 | tBodyAccJerkMagstd               | standard deviation of Magnitude of the jerk (time derivative) of body acceleration		 |   numeric  |
| 67 | tBodyGyroMagstd                  | standard deviation of Magnitude of the angular velocity					 |   numeric  |
| 68 | tBodyGyroJerkMagstd              | standard deviation of Magnitude of the jerk (time derivative) of angular velocity  		 |   numeric  |	
| 69 | fBodyAccstdX                     | standard deviation of the Fast Fourier Transform (FFT) applied to body acceleration on the X-axis    |   numeric  |
| 70 | fBodyAccstdY                     | standard deviation of the FFT applied to body acceleration on the Y-axis			       |   numeric  |
| 71 | fBodyAccstdZ                     | standard deviation of the FFT applied to body acceleration on the Z-axis                             |   numeric  |
| 72 | fBodyAccJerkstdX                 | standard deviation of the FFT applied to the jerk (time derivative ) of body acceleration X-axis     |   numeric  |
| 73 | fBodyAccJerkstdY                 | standard deviation of the FFT applied to the jerk of body acceleration Y-axis                        |   numeric  |
| 74 | fBodyAccJerkstdZ                 | standard deviation of the FFT applied to the jerk of body acceleration Z-axis			       |   numeric  |
| 75 | fBodyGyrostdX                    | standard deviation of the FFT applied to the body angular velocity on the X-Axis		       |   numeric  |
| 76 | fBodyGyrostdY                    | standard deviation of the FFT applied to the body angular velocity on the Y-Axis                     |   numeric  |
| 77 | fBodyGyrostdZ                    | standard deviation of the FFT applied to the body angular velocity on the Z-Axis                     |   numeric  |
| 78 | fBodyAccMagstd                   | standard deviation of the FFT applied to the Magnitude of body acceleration                          |   numeric  |
| 79 | fBodyAccJerkMagstd               | standard deviation of the FFT applied to the Magnitude of the jerk of body acceleration              |   numeric  |
| 80 | fBodyGyroMagstd                  | standard deviation of the FFT applied to the Magnitude of the body angular velocity                  |   numeric  |
| 81 | fBodyGyroJerkMagstd              | standard deviation of the FFT applied to the Magnitude of the jerk of body angular velocity          |   numeric  |









































