## This code book describes the variables, the data, and any transformations or work that you performed to clean up the data 

#####Reading files. This variables names correspond to each file that was read
######actlabels
######features

#####This variables names correspond to each test file that was read
######subject_test
######X_test
######y_test

#####This variables names correspond to each train file that was read
######subject_train
######X_train
######y_train

#####Putting data in one data set
######Xbind * Put X_train and X_test together
######subjectbind * Put subject_train and subject_test  together
######ybind * Put  y_train and y_test together

#####Giving column names
######colnames(Xbind) <- features * Put "features" as a variable name at the top of Xbind
######cnamesub <- ("Subject")
######colnames(subjectbind) <- cnamesub * Put "Subject" as a variable name at the top of subjectbind
######cnamey <- ("Activity")
######colnames(ybind) <- cnamey * Put "Activity" as a variable name at the top of ybind

#####Creating one data set with Xbind, subjectbind, ybind
######dataset

