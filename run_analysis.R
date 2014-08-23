run_analysis <- function(){

##checks to see if data is available
    if(!file.exists("./UCI HAR Dataset")){
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "getdata_projectfiles_UCI HAR Dataset.zip")
        unzip("getdata_projectfiles_UCI HAR Dataset.zip")
    }

##load files into R
    settest <- read.table("UCI HAR Dataset/test/X_test.txt")
    settrain <- read.table("UCI HAR Dataset/train/X_train.txt")

##creates one table with both sets of data
    settotal <- rbind(settest, settrain)

##gives the table column names
    features <- read.table("UCI HAR Dataset/features.txt", colClasses = "character")
    names(settotal) <- c(features[,2])

##subset "totalset" table based on if mean ("mean") or standard deviation ("std") are in the column name
    bymean <- grep("mean", features[, 2])
    bystd <- grep("std", features[, 2])
    settotal <- settotal[, c(bymean, bystd)]

##adds descriptive activity names to name the activites in the table
    activitytest <- read.csv("UCI HAR Dataset/test/y_test.txt", header = FALSE)
    activitytrain <- read.csv("UCI HAR Dataset/train/y_train.txt", header = FALSE)
    activitytotal <- unlist(rbind(activitytest, activitytrain))
    activitydescriptions <- read.table("UCI HAR Dataset/activity_labels.txt")   
    for (i in 1:6){
        activitytotal <- gsub(activitydescriptions[i, 1], activitydescriptions[i, 2], activitytotal)
    }
    activitytotal <- as.data.frame(activitytotal)
    names(activitytotal)[1] <- "activitytype"
    settotal <- cbind(activitytotal, settotal)


##creates more descriptive variable names
    names(settotal) <- tolower(names(settotal))
    names(settotal) <- gsub("^t", "time", names(settotal))
    names(settotal) <- gsub("^f", "frequency", names(settotal))
    names(settotal) <- gsub("x$", "xaxis", names(settotal))
    names(settotal) <- gsub("y$", "yaxis", names(settotal))
    names(settotal) <- gsub("z$", "zaxis", names(settotal))
    names(settotal) <- gsub("acc", "acceleration", names(settotal))
    names(settotal) <- gsub("gyro", "gyroscope", names(settotal))

##adds subject number to table
    subjecttest <- read.csv("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
    subjecttrain <- read.csv("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
    subjecttotal <- rbind(subjecttest, subjecttrain)
    names(subjecttotal)[1] <- "subjectnumber"
    settotal <- cbind(subjecttotal, settotal)

##create an empty data frame to subset the data by each activity and subject
    activitysubjectdf <- data.frame()    

##subset by subject number    
    for(i in 1:30){
        bysubject <- subset(settotal, settotal$subjectnumber == i)
##and activity type       
        for(j in 1:6){
            byactivity <- subset(bysubject, bysubject$activitytype == activitydescriptions[j, 2])

##get the average of each column and bind to dataframe            
            meanssubsetted <- as.list(colMeans(byactivity[, 3:81]))
            outcomesubsetted <- as.data.frame(append(byactivity[1, 1:2], meanssubsetted))
            activitysubjectdf <- rbind(activitysubjectdf, outcomesubsetted)
        }
    
    }
write.table(activitysubjectdf, "gettingandcleaningdataproject.txt", sep="\t", row.name = FALSE)
}