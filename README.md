Getting-and-Cleaning-Data-Course-Project
========================================


#### Reading files
######actlabels <- read.table(file = "activity_labels.txt", header = FALSE)
######features <- read.table(file = "features.txt", header = FALSE)

#### Reading files from test 
######subject_test <- read.table(file = "subject_test.txt")
######X_test <- read.table(file = "X_test.txt", header = FALSE)
######y_test <-  read.table(file = "y_test.txt", header = FALSE)

#### Reading files from train
######subject_train <- read.table(file = "subject_train.txt")
######X_train <- read.table(file = "X_train.txt", header = FALSE)
######y_train <- read.table(file = "y_train.txt", header = FALSE)

#### After reading data it's necessary to bind all the data read from test and train
#### Merging data
######Xbind <- rbind(X_train,X_test)
######subjectbind <- rbind(subject_train, subject_test)
######ybind <- rbind(y_train, y_test)

#### Column names
######colnames(Xbind) <- features
######cnamesub <- ("Subject")
######colnames(subjectbind) <- cnamesub
######cnamey <- ("Activity")
######colnames(ybind) <- cnamey

#### Creating one data set
######dataset <- cbind(Xbind, subjectbind, ybind)

### dataset created with 10299 rows and 563 columns 
