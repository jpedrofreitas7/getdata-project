library(reshape2)

setwd("C:/Users/João/Documents/Coursera/3.getdata/project")

# fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# download.file(fileUrl, destfile = "./projectdata.zip")
# list.files()

##
features <- read.table(file = "./UCI HAR Dataset/features.txt", col.names = c("id","label"), nrows = 561)
activitylabels <- read.table(file = "./UCI HAR Dataset/activity_labels.txt", col.names = c("id","label"))

##
xtrain <- read.table(file = "./UCI HAR Dataset/train/X_train.txt", nrows = 7352)
ytrain <- read.table(file = "./UCI HAR Dataset/train/y_train.txt", nrows = 7352, col.names = "activity")
subjecttrain <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt", nrows = 7352)
xtest <- read.table(file = "./UCI HAR Dataset/test/X_test.txt", nrows = 2947)
ytest <- read.table(file = "./UCI HAR Dataset/test/y_test.txt", nrows = 2947, col.names = "activity")
subjecttest <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt", nrows = 2947)

##
df <- rbind(cbind(subjecttrain, xtrain, ytrain), cbind(subjecttest, xtest, ytest))
names(df) <- c("subject", as.character(features$label), "activity")
df$activity <- factor(as.character(df$activity), labels = sub("_","",tolower(activitylabels$label)))

# grep("mean", features$Name) #Ocurrences of the pattern
# grep("\\<corn\\>", features) #Occurrences of the word

# occurences <- sort(c(grep("mean", features$Name), grep("std", features$Name)))
HAR <- df[,grep(paste(c("subject","[mM]ean", "[sS]td", "activity"),collapse="|"), names(df))]
names(HAR) <- tolower(gsub("[-()\\,]","", names(HAR)))
molten <- melt(HAR, id = c("subject", "activity"))
tidyHAR <- dcast(data = molten, formula = subject + activity ~ variable, fun.aggregate = mean)

# write.table(HAR, file = "HAR.txt", row.name=FALSE)
write.table(tidyHAR, file = "tidyHAR.txt", row.name=FALSE)
