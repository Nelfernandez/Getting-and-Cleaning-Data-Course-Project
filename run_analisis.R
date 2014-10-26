actlabels <- read.table(file = "activity_labels.txt", header = FALSE)
features <- read.table(file = "features.txt", header = FALSE)

subject_test <- read.table(file = "subject_test.txt")
X_test <- read.table(file = "X_test.txt", header = FALSE)
y_test <-  read.table(file = "y_test.txt", header = FALSE)

subject_train <- read.table(file = "subject_train.txt")
X_train <- read.table(file = "X_train.txt", header = FALSE)
y_train <- read.table(file = "y_train.txt", header = FALSE)

Xbind <- rbind(X_train,X_test)
subjectbind <- rbind(subject_train, subject_test)
ybind <- rbind(y_train, y_test)

colnames(Xbind) <- features
cnamesub <- ("Subject")
colnames(subjectbind) <- cnamesub
cnamey <- ("Activity")
colnames(ybind) <- cnamey

dataset <- cbind(Xbind, subjectbind, ybind)

