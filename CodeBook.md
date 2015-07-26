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

| col| Column Name                      |Description|
|----|----------------------------------|-----------------------|
|  1 | activity 			| Activity label-String - can assume the 'values'   |
|  2 | subjectId  			| subjectID      - An identifier of the subject who carried out the experiment -  Integer   - int between 1 and 30  |
|  3 | tBodyAccmeanX			| Average body acceleration on the X Axis  |
|  4 | tBodyAccmeanY  	         	| Average body acceleration on the Y Axis  |         
|  5 | tBodyAccmeanZ			| Average body acceleration on the Z Axis  |
|  6 | tGravityAccmeanX     		| average gravity acceleration - X Axis    |  
|  7 | tGravityAccmeanY 		| average gravity acceleration - Y Axis    |
|  8 | tGravityAccmeanZ  		| average gravity acceleration - Z Axis    |
|  9 | tBodyAccJerkmeanX		| average time derivative (jerk) of body acceleration  X-axis    |
| 10 | tBodyAccJerkmeanY		| average time derivative (jerk) of body acceleration  Y-axis    |
| 11 | tBodyAccJerkmeanZ		| average time derivative (jerk) of body acceleration  Z-axis    |
| 12 | tBodyGyromeanX			| average body angular velocity on the X-Axis                   |
| 13 | tBodyGyromeanY			| average body angular velocity on the Y-Axis                   |
| 14 | tBodyGyromeanZ       		| average body angular velocity on the Z-Axis                   |
| 15 | tBodyGyroJerkmeanX		| average time derivative (jerk ) of angular velocity  X-axis   |
| 16 | tBodyGyroJerkmeanY        	| average jerk signal of angular velocity  Y-axis                      |
| 17 | tBodyGyroJerkmeanZ		| average jerk signal of angular velocity  Z-axis                      |
| 18 | tBodyAccMagmean     		| average body acceleration Magnitude  ( calculated using the Euclidean norm )        |
| 19 | tGravityAccMagmean		| average gravity acceleration Magnitude  ( calculated using the Euclidean norm )     |
| 20 | tBodyAccJerkMagmean       	| average Magnitude of the jerk (time derivative) of body acceleration                |
| 21 | tBodyGyroMagmean 		| average Magnitude of the angular velocity                                           |
| 22 | tBodyGyroJerkMagmean		| average Magnitude of the jerk (time derivative) of angular velocity                 | 
| 23 | fBodyAccmeanX      		| average of the Fast Fourier Transform (FFT) applied to body acceleration on the X-axis  |
| 24 | fBodyAccmeanY             	| average of the FFT applied to body acceleration on the Y-axis                           |
| 25 | fBodyAccmeanZ      		| average of the FFT applied to body acceleration on the Z-axis                           |
| 26 | fBodyAccmeanFreqX         	| weighted average of the frequency components of body acceleration - X-axis  |
| 27 | fBodyAccmeanFreqY        	| weighted average of the frequency components of body acceleration - Y-axis  |
| 28 | fBodyAcc_meanFreqZ       	| weighted average of the frequency components of body acceleration - Z-axis  |
| 29 | fBodyAccJerkmeanX        	| average of the FFT applied to the jerk (time derivative) body acceleration on the X-axis  |
| 30 | fBodyAccJerkmeanY        	| average of the FFT applied to the jerk signal of body acceleration on the Y-axis  |
| 31 | fBodyAccJerkmeanZ        	| average of the FFT applied to the jerk signal of body acceleration on the Z-axis  |
| 32 | fBodyAccJerkmeanFreqX    	| weighted average of the frequency components of the jerk signal of body acceleration X-axis  |
| 33 | fBodyAccJerkmeanFreqY    	| weighted average of the frequency components of the jerk signal of body acceleration Y-axis  |
| 34 | fBodyAccJerkmeanFreqZ    	| weighted average of the frequency components of the jerk signal of body acceleration Z-axis   |
| 35 | fBodyGyromeanX           	| average of the FFT applied to body angular velocity X-axis  |
| 36 | fBodyGyromeanY           	| average of the FFT applied to body angular velocity Y-axis  |
| 37 | fBodyGyromeanZ           	| average of the FFT applied to body angular velocity Z-axis  |
| 38 | fBodyGyromeanFreqX     	        | weighted average of the frequency components of body angular velocity X-axis |
| 39 | fBodyGyromeanFreqY       	| weighted average of the frequency components of body angular velocity Y-axis |
| 40 | fBodyGyromeanFreqZ       	| weighted average of the frequency components of body angular velocity Z-axis |
| 41 | fBodyAccMagmean          	| average of the FFT applied to the Magnitude of body acceleration   |
| 42 | fBodyAccMagmeanFreq      	| weighted average of the frequency components of the Magnitude of body acceleration       |
| 43 | fBodyAccJerkMagmean	 	| average of the FFT applied to the Magnitude of the jerk signal of body acceleration      |
| 44 | fBodyAccJerkMagmeanFreq 	        | weighted average of the frequency components of the Magnitude of body acceleration       |
| 45 | fBodyGyroMagmean	                | average of the FFT applied to the Magnitude of body angular velocity  |
| 46 | fBodyGyroMagmeanFreq	        | weighted average of the frequency components of the Magnitude of angular velocity        |
| 47 | fBodyGyroJerkMagmean	        | average of the FFT applied to the Magnitude of the jerk signal of body angular velocity  |
| 48 | fBodyGyroJerkMagmeanFreq	        | weighted average of the frequency components of the Magnitude of the jerk signal of body angular velocity  |
| 49 | tBodyAccstdX                     | standard deviation of body acceleration on the X Axis		|
| 50 | tBodyAccstdY             	| standard deviation of body acceleration on the Y Axis		|
| 51 | tBodyAccstdZ                     | standard deviation of body acceleration on the Z Axis		|
| 52 | tGravityAccstdX                  | standard deviation of gravity acceleration - X Axis		|
| 53 | tGravityAccstdY                  | standard deviation of gravity acceleration - Y Axis		|
| 54 | tGravityAccstdZ                  | standard deviation of gravity acceleration - Z Axis		|
| 55 | tBodyAccJerkstdX                 | standard deviation of time derivative of body acceleration (jerk) X-axis	|
| 56 | tBodyAccJerkstdY                 | standard deviation of time derivative of body acceleration (jerk) Y-axis	|
| 57 | tBodyAccJerkstdZ                 | standard deviation of time derivative of body acceleration (jerk) Z-axis	|
| 58 | tBodyGyrostdX                    | standard deviation of body angular velocity on the X-Axis 			|
| 59 | tBodyGyrostdY                    | standard deviation of body angular velocity on the Y-Axis			|
| 60 | tBodyGyrostdZ                    | standard deviation of body angular velocity on the Z-Axis			|
| 61 | tBodyGyroJerkstdX                | standard deviation of time derivative (jerk ) angular velocity  X-axis	|
| 62 | tBodyGyroJerkstdY                | standard deviation of average jerk of angular velocity  Y-axis 		|
| 63 | tBodyGyroJerkstdZ                | standard deviation of average jerk of angular velocity  Z-axis		|
| 64 | tBodyAccMagstd                   | standard deviation of body acceleration Magnitude ( calculated using the Euclidean norm )      | 
| 65 | tGravityAccMagstd                | standard deviation of gravity acceleration Magnitude  ( calculated using the Euclidean norm )  | 
| 66 | tBodyAccJerkMagstd               | standard deviation of Magnitude of the jerk (time derivative) of body acceleration		 |
| 67 | tBodyGyroMagstd                  | standard deviation of Magnitude of the angular velocity					 |
| 68 | tBodyGyroJerkMagstd              | standard deviation of Magnitude of the jerk (time derivative) of angular velocity  		 |	
| 69 | fBodyAccstdX                     | standard deviation of the Fast Fourier Transform (FFT) applied to body acceleration on the X-axis    |
| 70 | fBodyAccstdY                     | standard deviation of the FFT applied to body acceleration on the Y-axis			       |
| 71 | fBodyAccstdZ                     | standard deviation of the FFT applied to body acceleration on the Z-axis                             |
| 72 | fBodyAccJerkstdX                 | standard deviation of the FFT applied to the jerk (time derivative ) of body acceleration X-axis     |
| 73 | fBodyAccJerkstdY                 | standard deviation of the FFT applied to the jerk of body acceleration Y-axis                        |
| 74 | fBodyAccJerkstdZ                 | standard deviation of the FFT applied to the jerk of body acceleration Z-axis			       |
| 75 | fBodyGyrostdX                    | standard deviation of the FFT applied to the body angular velocity on the X-Axis		       |
| 76 | fBodyGyrostdY                    | standard deviation of the FFT applied to the body angular velocity on the Y-Axis                     |
| 77 | fBodyGyrostdZ                    | standard deviation of the FFT applied to the body angular velocity on the Z-Axis                     |
| 78 | fBodyAccMagstd                   | standard deviation of the FFT applied to the Magnitude of body acceleration                          |
| 79 | fBodyAccJerkMagstd               | standard deviation of the FFT applied to the Magnitude of the jerk of body acceleration              |
| 80 | fBodyGyroMagstd                  | standard deviation of the FFT applied to the Magnitude of the body angular velocity                  |
| 81 | fBodyGyroJerkMagstd              | standard deviation of the FFT applied to the Magnitude of the jerk of body angular velocity          |









































