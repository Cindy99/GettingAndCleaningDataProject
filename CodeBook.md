Codebook for sumTidy.txt

data.frame':    180 obs. of  82 variables:
Activity           	: Factor w/ 6 levels 
			1 WALKING

			2 WALKING_UPSTAIRS

			3 WALKING_DOWNSTAIRS

			4 SITTING

			5 STANDING
			6 LAYING



Subject               : Integer from 1 to 30
	Identifies each of 30 subjects.  
	Nine subjects (2,4,9,10,12,13,18,20, and 24) were in the Test group
	The remaining 21 subjects (1,3,5,6,7,8,11,14,15,16,17,19,21,22,23,25,26,27,28,29, and 30) were in the Train group.

TestTrain             : Factor w/ 2 levels "Test","Train"


The remaining 79 variables contain the means of all values for each variable pertaining to means or standard deviations, which were reported in the rawdata (X_train.txt and X_test.txt), grouped by Activity and Subject.  All are numeric, with values between -1 and 1.  This is a listing of all the remaining variable names:

tBodyAccMEANX               
tBodyAccMEANY               
tBodyAccMEANZ               
tBodyAccSTDX                
tBodyAccSTDY                
tBodyAccSTDZ                
tGravityAccMEANX            
tGravityAccMEANY            
tGravityAccMEANZ            
tGravityAccSTDX             
tGravityAccSTDY             
tGravityAccSTDZ             
tBodyAccJerkMEANX           
tBodyAccJerkMEANY           
tBodyAccJerkMEANZ           
tBodyAccJerkSTDX            
tBodyAccJerkSTDY            
tBodyAccJerkSTDZ            
tBodyGyroMEANX              
tBodyGyroMEANY              
tBodyGyroMEANZ              
tBodyGyroSTDX               
tBodyGyroSTDY               
tBodyGyroSTDZ               
tBodyGyroJerkMEANX          
tBodyGyroJerkMEANY          
tBodyGyroJerkMEANZ          
tBodyGyroJerkSTDX           
tBodyGyroJerkSTDY           
tBodyGyroJerkSTDZ           
tBodyAccMagMEAN             
tBodyAccMagSTD              
tGravityAccMagMEAN          
tGravityAccMagSTD           
tBodyAccJerkMagMEAN         
tBodyAccJerkMagSTD          
tBodyGyroMagMEAN            
tBodyGyroMagSTD             
tBodyGyroJerkMagMEAN        
tBodyGyroJerkMagSTD         
fBodyAccMEANX               
fBodyAccMEANY               
fBodyAccMEANZ               
fBodyAccSTDX                
fBodyAccSTDY                
fBodyAccSTDZ                
fBodyAccMEANFreqX           
fBodyAccMEANFreqY           
fBodyAccMEANFreqZ           
fBodyAccJerkMEANX           
fBodyAccJerkMEANY           
fBodyAccJerkMEANZ           
fBodyAccJerkSTDX            
fBodyAccJerkSTDY            
fBodyAccJerkSTDZ            
fBodyAccJerkMEANFreqX       
fBodyAccJerkMEANFreqY       
fBodyAccJerkMEANFreqZ       
fBodyGyroMEANX              
fBodyGyroMEANY              
fBodyGyroMEANZ              
fBodyGyroSTDX               
fBodyGyroSTDY               
fBodyGyroSTDZ               
fBodyGyroMEANFreqX          
fBodyGyroMEANFreqY          
fBodyGyroMEANFreqZ          
fBodyAccMagMEAN             
fBodyAccMagSTD              
fBodyAccMagMEANFreq         
fBodyBodyAccJerkMagMEAN     
fBodyBodyAccJerkMagSTD      
fBodyBodyAccJerkMagMEANFreq 
fBodyBodyGyroMagMEAN        
fBodyBodyGyroMagSTD         
fBodyBodyGyroMagMEANFreq    
fBodyBodyGyroJerkMagMEAN    
fBodyBodyGyroJerkMagSTD     
fBodyBodyGyroJerkMagMEANFreq

=======================================================================================================================================
A description of the meaning of the variables is listed below.  This text is copied from the features_info.txt file which was included with the rawdata download.  The data in sumTidy above has been summarized across Activity and Subject.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
	<<NOTE for sumTidy - only mean() and std() variables were utilized for this analysis>>
mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
