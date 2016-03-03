## ---------------------------------------------------------------------
## Getting and Cleaning Data Course Project
## ---------------------------------------------------------------------
## This R script performs the cleaning of the input data sets as
## indicated in the final assignment of course.
## The single steps are indicated below:
## Step 1 - Merge the training and the test sets to create one data set
## Step 2 - Extracts measurements mean() and std()
## Step 3 - Use descriptive names for activities
## Step 4 - Appropriately labels the data set with descriptive var names
## Step 5 - From the data set in step 4, creates a second, independent 
##          tidy data set with the average of each variable for each 
##          activity and each subject

## ---------------------------------------------------------------------
## Step 1 - Merge the training and the test sets to create one data set
## ---------------------------------------------------------------------

## 1.1 Read the test data sets
fpth <- file.path(getwd(),"UCI HAR Dataset/test")
ds_xtest <- read.table(file.path(fpth,"X_test.txt"))
ds_ytest <- read.table(file.path(fpth,"y_test.txt"))
ds_subjtest <- read.table(file.path(fpth,"subject_test.txt"))

## 1.2 Read the train data sets
fpth <- file.path(getwd(),"UCI HAR Dataset/train")
ds_xtrain <- read.table(file.path(fpth,"X_train.txt"))
ds_ytrain <- read.table(file.path(fpth,"y_train.txt"))
ds_subjtrain <- read.table(file.path(fpth,"subject_train.txt"))

## 1.3 Read the labels (activity and features)
fpth <- file.path(getwd(),"UCI HAR Dataset")
ds_act <- read.table(file.path(fpth,"activity_labels.txt"))
ds_feat <- read.table(file.path(fpth,"features.txt"))
names(ds_act)<-c("codact","activity")
names(ds_feat)<-c("codfeat","features")

## 1.4 Merge the training and test data sets
ds_x<-rbind(ds_xtrain,ds_xtest)
ds_y<-rbind(ds_ytrain,ds_ytest)
ds_subj<-rbind(ds_subjtrain,ds_subjtest)
ds_all<-cbind(ds_x,ds_y,ds_subj)

col_labels<-c(as.character(ds_feat$features),"codact","subject")
names(ds_all)<-col_labels

## ---------------------------------------------------------------------
## Step 2 - Extracts measurements mean() and std()
## ---------------------------------------------------------------------

## 2.1 regular expression
rexp <- grepl("mean\\(\\)|std\\(\\)|subject|codact", names(ds_all))


## 2.2 extract only columns with mean and std
ds_extr <- ds_all[,rexp]

## ---------------------------------------------------------------------
## Step 3 - Use descriptive names for activities
## ---------------------------------------------------------------------

## 3.1 merge resulting data frame with label activity by codact
ds_extr <- merge(ds_extr,ds_act)
ds_extr <- ds_extr[,-1]

## ---------------------------------------------------------------------
## Step 4 - Appropriately labels the data set with descriptive var names
## ---------------------------------------------------------------------

## 4.1 eliminate () from names
names(ds_extr)<-gsub("[()]","",names(ds_extr))
names(ds_extr)<-gsub("-",".",names(ds_extr))
## 4.2 change 
names(ds_extr)<-gsub("^t", "time", names(ds_extr))
names(ds_extr)<-gsub("^f", "frequency", names(ds_extr))
names(ds_extr)<-gsub("Acc", "Accelerometer", names(ds_extr))
names(ds_extr)<-gsub("Gyro", "Gyroscope", names(ds_extr))
names(ds_extr)<-gsub("Mag", "Magnitude", names(ds_extr))
names(ds_extr)<-gsub("BodyBody", "Body", names(ds_extr))



## ---------------------------------------------------------------------
## Step 5 - From the data set in step 4, creates a second, independent 
##          tidy data set with the average of each variable for each 
##          activity and each subject
## ---------------------------------------------------------------------

ds_out<-ddply(ds_extr, c("subject","activity"), numcolwise(mean))
#improve column names
ds_out_colnames<-names(ds_out)
ds_out_colnames<-sapply(ds_out_colnames, function (x) {
        if (!(x %in% c("subject","activity"))) {
            paste(x,".Mean", sep="")
        }
        else{
        x
        }
    })
names(ds_out)<-ds_out_colnames
write.table(ds_out, file = "run_analysis_output.txt", row.name=FALSE)
