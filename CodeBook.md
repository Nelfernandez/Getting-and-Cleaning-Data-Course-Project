#####Reading files. This variables names correspond to each file to read
actlabels
features

#####This variables names correspond to each test file that was read
subject_test
X_test
y_test

#####This variables names correspond to each train file that was read
subject_train
X_train
y_train

#####Putting data in one data set
Xbind # Put X_train and X_test together
subjectbind # Put subject_train and subject_test  together
ybind # Put  y_train and y_test together

#####Giving column names
colnames(Xbind) <- features # Put "features" as a variable name at the top of Xbind
cnamesub <- ("Subject")
colnames(subjectbind) <- cnamesub # Put "Subject" as a variable name at the top of subjectbind
cnamey <- ("Activity")
colnames(ybind) <- cnamey # Put "Activity" as a variable name at the top of ybind

#####Creating one data set with Xbind, subjectbind, ybind
dataset

#####Merging with activity labels
actname
colnames(actlabels) <- actname # Put "Activity" as a name to actlabels
dataset # Merged data set with "Activity"

#####Paste columns
Activity <- paste(dataset[,1], dataset[,564], sep = " ") # Pasted column of activity number and activity name
dataset <- cbind(dataset, Activity) # cbinding to the complete data set
dataset <- dataset[,-c(1,564)] # Removing unwanted columns

# output 
dim(dataset)
[1] 10299   563

