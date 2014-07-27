##This document explains the run_analysis.R script

###Step1: Merges the training and the test sets to create one ###data set.

We read all the relevent txt files provided for the test data 
and create tables using them 

We them combine them to for one complete test dataset

We repeat the same steps above for the train data and create a train dataset

Finally we combine the train and the test dataset into one dataset

###Step4: Appropriately labels the data set with descriptive ###variable names.

We now jump to the 4th step before doing the 2nd or 3rd step because labeling the dataset with descriptive names makes it much easier for us to extract certain columns for step 2nd, i know the TA warned against doing these outof order but this is not the step he was talking about,doing this step out of order doesnt have any impact on the overall solution because all we are doing in this step is giving column names.

We have been provided with a very good file called features which already contains descriptive names for all the columns, we could use more descriptive names but i feel there needs to be limit to the length of a variable name which is already being reached with the names provided in the features file, if try and expand the names any futher it would just make the data untidy

so after reading the features in a table we convert them to characters and then apply them and a couple of extra for subect_id and activities as the column names for the combined table, hence completing step 4

###Step2: Extracts only the measurements on the mean and ###standard deviation for each measurement. 

Now as the TA mentioned in the discussion forum that determining which column contained mean was a matter of interpretation i have considered the columns which contain mean() at the end and also meanfrequency()

Since our column names are quite simple we created a simple regex which checks for anything follwed the word mean follwed by anything OR anything followed by the word std followed by anything, this is not the most exact regular expression for extraction but in this case it works. 

We use the grep function to check the regex against the column names.In addition to the column matching the regex we also extract the column containing the Subject_id and the activities column

###Step3: Uses descriptive activity names to name the activities in the data set

We have been given a file called activity_labels, which contains the descriptive names of the activities against against the id for the activity, we read this file into a table

We then use the match function to check the activity id in our combined table against the activity id in the labels table and based of that we replace the ids in  the combined table with the activity names


###Step5: Creates a second, independent tidy data set with the 
###average of each variable for each activity and each ###subject.

First we calculate the average of each variable for each activity and each subject using the aggregate function

Now we need to rename the columns to reflect what the values it actually contains, more detailed information about the column is available in the code book

we just clean up a couple of columns names.

Finally we write the tidy data to a file, it would be much better if we could write it to a fixed width file, for reading in the txt format but coursera doesnt accept that file type



###IMPORTANT 
when reading the tidy data file please use header= TRUE, in read.table(mention in the rubics) as shown below

x=read.table("tidy_data.txt",header=TRUE)

this is used to indicate the first row contains
column names


