#Step 1
#Merges the training and the test sets to create one data set.

#reding in the test data
sub_test=read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test=read.table("./UCI HAR Dataset/test/X_test.txt")
y_test=read.table("./UCI HAR Dataset/test/y_test.txt")

#combining the test data
test=cbind(sub_test,x_test,y_test)

#reading in the train data
sub_train=read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train=read.table("./UCI HAR Dataset/train/X_train.txt")
y_train=read.table("./UCI HAR Dataset/train/y_train.txt")

#combining the train data
train=cbind(sub_train,x_train,y_train)

#combining the test and train data, which completes step 1
combined=rbind(test,train)


#Step 4
#Appropriately labels the data set with descriptive variable names. 

#datailed explanation as to why i am doing step 4 before 2 and 3 is
#provided in the readme but to summerize doing this step now makes it 
# much easier for me to perform step 2 and 3 which will become more 
#evident when we see those steps below

#reading in the features data
features=read.table("./UCI HAR Dataset/features.txt")

#using the features files to label the dataset with descriptive names
colnames(combined)=c("Subject_id",as.character(features$V2),"Activities")


#Step 2
#Extracts only the measurements on the mean and standard deviation
#for each measurement. 

#using the grep function to match the names of column containing the word
#mean or std i have extreacted those measurements, i have also 
#extracted the subject_id and the activites column
combined=combined[,c( 1,grep('.*mean.*|.*std.*', names(combined)),563)] 


#Step 3
#Uses descriptive activity names to name the activities in the data set

#reading the activity labels table
labels=read.table("./UCI HAR Dataset/activity_labels.txt")

#replacing the activities id with the activity names
combined$Activities<-labels[match(combined$Activities, labels$V1),2]


#Step 5
#Creates a second, independent tidy data set with the average
#of each variable for each activity and each subject.

#creating the tidy date using aggregate function
tidy_data = aggregate(combined[2:80], by=list(combined$Subject_id,
                            combined$Activities),FUN=mean, na.rm=TRUE)

#We need to rename the columns to reflect what they actually are
names(tidy_data)=paste("avg_sid_act_",names(tidy_data),sep="")


#cleaning up the column names
colnames(tidy_data)[1]="Subject_id"
colnames(tidy_data)[2]="Activities"

#finally we write the tidy data to a txt file
write.table(tidy_data,"tidy_data.txt",row.names=FALSE)