## Working directory is ~/UCI HAR Dataset, test and train data are in /test and /train subdirectories
##setwd("C:/Cindy/Courses/DataScience/GettingAndCleaningData/Project/UCI HAR Dataset")

## Read in files for column and row names
features<-read.table("features.txt")
activities<-read.table("activity_labels.txt")
names(activities)<-c("ActivityID","Activity")

## Read in main training files
subTrain<-read.table("train/subject_train.txt")
xTrain<-read.table("train/x_train.txt")
yTrain<-read.table("train/y_train.txt")

## Set columnnames, find names containing mean or std, and copy to tidyTrain
names(xTrain)<-features[,2]
pickvars<-grep("mean",features[,2])
pickvars<-c(pickvars,grep("std",features[,2]))
tidyTrain<-xTrain[,sort(pickvars)]
## Add TestTrain flag, Subject, and ActivityID as first columns
tidyTrain<-cbind(TestTrain="Train",Subject=subTrain[,1],ActivityID=yTrain[,1],tidyTrain)
tidyTrain<-merge(activities,tidyTrain)

## Read in main test files
subTest<-read.table("test/subject_test.txt")
xTest<-read.table("test/x_test.txt")
yTest<-read.table("test/y_test.txt")

## Set columnnames, find names containing mean or std, and copy to tidyTest
names(xTest)<-features[,2]
tidyTest<-xTest[,sort(pickvars)]
## Add TestTest flag, Subject, and ActivityID as first columns
tidyTest<-cbind(TestTrain="Test",Subject=subTest[,1],ActivityID=yTest[,1],tidyTest)
tidyTest<-merge(activities,tidyTest)

## Combine Train and Test data
tidyData<-rbind(tidyTrain,tidyTest)

## write output for Project submission
## Use dplyr (already installed) to group and summarize the data for step 5
library(dplyr)
tbltidyData<-tbl_df(tidyData)
grouptidy<-group_by(tbltidyData,Activity,Subject,TestTrain)

## revise column names before summarize - remove hyphens and parens, capitalize MEAN and STD
newnames<-names(grouptidy)
newnames<-gsub("\\(\\)","",newnames)
newnames<-gsub("mean","MEAN",newnames)
newnames<-gsub("std","STD",newnames)
names(grouptidy)<-newnames
sumTidy<-summarise_each(grouptidy, funs(mean),-(1:4))
write.table(sumTidy,"sumTidy.txt",row.names=FALSE)
## to read it back into R
## read.table("sumTidy.txt",header=TRUE)











