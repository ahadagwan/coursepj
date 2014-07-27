	Data Dictonary - tidy data for Human Activity Recognition

##VARIABLES for run_analysis.R

sub_test: contains the table for subject test data
x_test: contain the table for the x test file
y_test: contains the test data for the y test which is the activities id file

test: combination of all the test files

sub_train: contains the table for subject train data
x_train: contain the table for the x train file
y_train: contains the train data for the y test which is the activities id file

train: combination of all the train files


combined: combination of the train and test dataset



features:contains the features dataset

##after the following command, combined changes to
combined=combined[,c( 1,grep('.*mean.*|.*std.*', names(combined)),563)] 

combined: contains only the mean and std columns


labels:contains the dataset for the activity labels

tidy_data: contains the tidy data formed after the aggregate function




##TIDY DATA columns


 [1] "Subject_id"    Range for 1:30
	
Each row identifies the subject who performed the activity for each window sample
	                             
 [2] "Activities"   
	Range: WALKING, WALKING_UPSTAIRS,  WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

These are the range of activities, that we need to determine are being performed


ALL SUBSIQUENT VALUES ARE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITIES AND EACH SUBJECT_ID.

ALL OF THE FOLLOWING VALUES ARE OF THE TYPE DOUBLE and range from    -0.9976661 to 0.9745087
     
                         
 [3] "avg_sid_act_tBodyAcc-mean()-X"              

Time Body accelerometer for x axis mean of these values and then avg of each variable for each activity and each subject

 [4] "avg_sid_act_tBodyAcc-mean()-Y" 

Time Body accelerometer for y axis mean of these values and then avg of each variable for each activity and each subject
             
 [5] "avg_sid_act_tBodyAcc-mean()-Z"  

Time Body accelerometer for z axis mean of these values and then avg of each variable for each activity and each subject
            
 [6] "avg_sid_act_tBodyAcc-std()-X"  

Time Body accelerometer for x axis Standard deviation of these values and then avg of each variable for each activity and each subject
             
 [7] "avg_sid_act_tBodyAcc-std()-Y"  

Time Body accelerometer for y axis Standard deviation of these values and then avg of each variable for each activity and each subject
             
 [8] "avg_sid_act_tBodyAcc-std()-Z"  

Time Body accelerometer for z axis Standard deviation of these values and then avg of each variable for each activity and each subject
             
 [9] "avg_sid_act_tGravityAcc-mean()-X"  

Time Gravity accelerometer for x axis mean of these values and then avg of each variable for each activity and each subject
         
[10] "avg_sid_act_tGravityAcc-mean()-Y"   

Time Gravity accelerometer for y axis mean of these values and then avg of each variable for each activity and each subject

        
[11] "avg_sid_act_tGravityAcc-mean()-Z"           

Time Gravity accelerometer for z axis mean of these values and then avg of each variable for each activity and each subject


[12] "avg_sid_act_tGravityAcc-std()-X"  

Time Gravity accelerometer for x axis Standard deviation of these values and then avg of each variable for each activity and each subject
            
[13] "avg_sid_act_tGravityAcc-std()-Y"  

Time Gravity accelerometer for x axis Standard deviation of these values and then avg of each variable for each activity and each subject
             
[14] "avg_sid_act_tGravityAcc-std()-Z"   

Time Gravity accelerometer for x axis Standard deviation of these values and then avg of each variable for each activity and each subject
            
[15] "avg_sid_act_tBodyAccJerk-mean()-X"  

Time Body accelerometer Jerk signals for x axis mean of these values and then avg of each variable for each activity and each subject        
        
[16] "avg_sid_act_tBodyAccJerk-mean()-Y"     

Time Body accelerometer Jerk signals for y axis mean of these values and then avg of each variable for each activity and each subject        
          
[17] "avg_sid_act_tBodyAccJerk-mean()-Z"          

Time Body accelerometer Jerk signals for z axis mean of these values and then avg of each variable for each activity and each subject        
     
[18] "avg_sid_act_tBodyAccJerk-std()-X"   

Time Body accelerometer Jerk signals for x axis Standard Deviation of these values and then avg of each variable for each activity and each subject        
             
[19] "avg_sid_act_tBodyAccJerk-std()-Y"   

Time Body accelerometer Jerk signals for x axis Standard Deviation of these values and then avg of each variable for each activity and each subject        
             
        
[20] "avg_sid_act_tBodyAccJerk-std()-Z"           

Time Body accelerometer Jerk signals for x axis Standard Deviation of these values and then avg of each variable for each activity and each subject        
             

[21] "avg_sid_act_tBodyGyro-mean()-X"  

Time Body gyroscope for x axis mean of these values and then avg of each variable for each activity and each subject        
                   
[22] "avg_sid_act_tBodyGyro-mean()-Y" 

Time Body gyroscope for y axis mean of these values and then avg of each variable for each activity and each subject        
                         
[23] "avg_sid_act_tBodyGyro-mean()-Z"             

Time Body gyroscope for z axis mean of these values and then avg of each variable for each activity and each subject        
             
[24] "avg_sid_act_tBodyGyro-std()-X" 

Time Body gyroscope for x axis Standard Deviation of these values and then avg of each variable for each activity and each subject        
                          
[25] "avg_sid_act_tBodyGyro-std()-Y"      

Time Body gyroscope for y axis Standard Deviation of these values and then avg of each variable for each activity and each subject        
                                  
[26] "avg_sid_act_tBodyGyro-std()-Z"              

Time Body gyroscope for z axis Standard Deviation of these values and then avg of each variable for each activity and each subject        
                          
[27] "avg_sid_act_tBodyGyroJerk-mean()-X" 
        

Time Body gyroscope Jerk signals  for x axis mean of these values and then avg of each variable for each activity and each subject        
              
[28] "avg_sid_act_tBodyGyroJerk-mean()-Y"      
        

Time Body gyroscope Jerk signals  for y axis mean of these values and then avg of each variable for each activity and each subject        
                 
[29] "avg_sid_act_tBodyGyroJerk-mean()-Z"         
        

Time Body gyroscope Jerk signals  for z axis mean of these values and then avg of each variable for each activity and each subject        
              
[30] "avg_sid_act_tBodyGyroJerk-std()-X" 
        

Time Body gyroscope Jerk signals  for x axis Standard Deviation of these values and then avg of each variable for each activity and each subject        
                       
[31] "avg_sid_act_tBodyGyroJerk-std()-Y"  
        

Time Body gyroscope Jerk signals  for y axis Standard Deviation of these values and then avg of each variable for each activity and each subject        
                      
[32] "avg_sid_act_tBodyGyroJerk-std()-Z"  
        

Time Body gyroscope Jerk signals  for z axis Standard Deviation of these values and then avg of each variable for each activity and each subject        
                      
[33] "avg_sid_act_tBodyAccMag-mean()"   

Time Body accelerometer magnitude mean of these values and then avg of each variable for each activity and each subject        
                            
[34] "avg_sid_act_tBodyAccMag-std()"    

Time Body accelerometer magnitude Standard Deviation of these values and then avg of each variable for each activity and each subject        
                              
[35] "avg_sid_act_tGravityAccMag-mean()"   

Time Gravity accelerometer magnitude mean of these values and then avg of each variable for each activity and each subject        
                           
[36] "avg_sid_act_tGravityAccMag-std()"  
        
Time Gravity accelerometer magnitude Standard Deviation of these values and then avg of each variable for each activity and each subject        
    
[37] "avg_sid_act_tBodyAccJerkMag-mean()"
    
Time Body accelerometer Jerk Signal magnitude mean of these values and then avg of each variable for each activity and each subject        
                                 
[38] "avg_sid_act_tBodyAccJerkMag-std()"    

Time Body accelerometer magnitude Jerk Signal  Standard Deviation of these values and then avg of each variable for each activity and each subject        
                              
      
[39] "avg_sid_act_tBodyGyroMag-mean()"  

Time Body Gyroscope magnitude mean of these values and then avg of each variable for each activity and each subject        
                                     
[40] "avg_sid_act_tBodyGyroMag-std()"   

Time Body Gyroscope magnitude Standard Deviation of these values and then avg of each variable for each activity and each subject        
                    
[41] "avg_sid_act_tBodyGyroJerkMag-mean()"  

Time Body Gyroscope magnitude Jerk Signal mean of these values and then avg of each variable for each activity and each subject        
                
[42] "avg_sid_act_tBodyGyroJerkMag-std()"  

Time Body Gyroscope magnitude Jerk signla Standard Deviation of these values and then avg of each variable for each activity and each subject        


##Below All values below are a result of applying Fast Fourier Transform (FFT) to the signals described above producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). then the mean or standard deviatin or mean frequency of these values over x,y,z axis and then finally we take the avg of each variable for each activity and each subject

[43] "avg_sid_act_fBodyAcc-mean()-X"              
[44] "avg_sid_act_fBodyAcc-mean()-Y"              
[45] "avg_sid_act_fBodyAcc-mean()-Z"              
[46] "avg_sid_act_fBodyAcc-std()-X"               
[47] "avg_sid_act_fBodyAcc-std()-Y"               
[48] "avg_sid_act_fBodyAcc-std()-Z"               
[49] "avg_sid_act_fBodyAcc-meanFreq()-X"          
[50] "avg_sid_act_fBodyAcc-meanFreq()-Y"          
[51] "avg_sid_act_fBodyAcc-meanFreq()-Z"          
[52] "avg_sid_act_fBodyAccJerk-mean()-X"          
[53] "avg_sid_act_fBodyAccJerk-mean()-Y"          
[54] "avg_sid_act_fBodyAccJerk-mean()-Z"          
[55] "avg_sid_act_fBodyAccJerk-std()-X"           
[56] "avg_sid_act_fBodyAccJerk-std()-Y"           
[57] "avg_sid_act_fBodyAccJerk-std()-Z"           
[58] "avg_sid_act_fBodyAccJerk-meanFreq()-X"      
[59] "avg_sid_act_fBodyAccJerk-meanFreq()-Y"      
[60] "avg_sid_act_fBodyAccJerk-meanFreq()-Z"      
[61] "avg_sid_act_fBodyGyro-mean()-X"             
[62] "avg_sid_act_fBodyGyro-mean()-Y"             
[63] "avg_sid_act_fBodyGyro-mean()-Z"             
[64] "avg_sid_act_fBodyGyro-std()-X"              
[65] "avg_sid_act_fBodyGyro-std()-Y"              
[66] "avg_sid_act_fBodyGyro-std()-Z"              
[67] "avg_sid_act_fBodyGyro-meanFreq()-X"         
[68] "avg_sid_act_fBodyGyro-meanFreq()-Y"         
[69] "avg_sid_act_fBodyGyro-meanFreq()-Z"         
[70] "avg_sid_act_fBodyAccMag-mean()"             
[71] "avg_sid_act_fBodyAccMag-std()"              
[72] "avg_sid_act_fBodyAccMag-meanFreq()"         
[73] "avg_sid_act_fBodyBodyAccJerkMag-mean()"     
[74] "avg_sid_act_fBodyBodyAccJerkMag-std()"      
[75] "avg_sid_act_fBodyBodyAccJerkMag-meanFreq()" 
[76] "avg_sid_act_fBodyBodyGyroMag-mean()"        
[77] "avg_sid_act_fBodyBodyGyroMag-std()"         
[78] "avg_sid_act_fBodyBodyGyroMag-meanFreq()"    
[79] "avg_sid_act_fBodyBodyGyroJerkMag-mean()"    
[80] "avg_sid_act_fBodyBodyGyroJerkMag-std()"     
[81] "avg_sid_act_fBodyBodyGyroJerkMag-meanFreq()"
