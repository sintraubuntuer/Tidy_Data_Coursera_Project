
library(dplyr)

## read the features file that has two columns - feature_id and feature 
features_df <- read.table("UCI\ HAR\ Dataset/features.txt"   , header=FALSE ,  stringsAsFactors = FALSE, sep=" ", col.names=c("feature_id","feature"))

## read the activities file that has two columns - activityId and activity labels 
## ( "WALKING" ,  "WALKING_UPSTAIRS" ,  "WALKING_DOWNSTAIRS" ,  "SITTING" , "STANDING" ,  "LAYING" ) 
activities_df <- read.table("UCI\ HAR\ Dataset/activity_labels.txt"   , header=FALSE ,  stringsAsFactors = FALSE, sep=" ", col.names=c("activityId","activity"))
activities_df$activityId = factor(activities_df$activityId)


###################################################################################
## Train set
###################################################################################

## read the train set  - each observation is a 561 feature vector
trainSet_df <- read.table("UCI\ HAR\ Dataset/train/X_train.txt")
#str(trainSet_df)

## read the subject number for each observation (train set)
subjectTrain_df <- read.table("UCI\ HAR\ Dataset/train/subject_train.txt" , col.names=c("subjectId"))

## read the activity data of each observation (train set)
activityTrain_df <- read.table("UCI\ HAR\ Dataset/train/y_train.txt" , col.names=c("activityId"))

##column bind the subject number vector and activity number vector on the trainSet
trainSet_df <- cbind(trainSet_df , subjectTrain_df, activityTrain_df )
## convert subjectId and activityId to factor variables
trainSet_df$activityId <- factor(trainSet_df$activityId)


###################################################################################
## Test set
###################################################################################

## read the test set - each observation is a 561 feature vector 
testSet_df <- read.table("UCI\ HAR\ Dataset/test/X_test.txt")
#str(testSet_df)

## read the subject number for each observation (test set)
subjectTest_df <- read.table("UCI\ HAR\ Dataset/test/subject_test.txt" , col.names=c("subjectId"))

## read the activity data of each observation (train set)
activityTest_df <- read.table("UCI\ HAR\ Dataset/test/y_test.txt" , col.names=c("activityId"))


testSet_df <- cbind(testSet_df , subjectTest_df, activityTest_df )
testSet_df$activityId <- factor(testSet_df$activityId)


###################################################################################
## Merge the Train and Test Sets 
####################################################################################

total_df <- bind_rows(list(trainSet_df, testSet_df))




#######################################################################################
## Get the row indexes on the features table regarding mean and std measurements
## and subsets total_df dataframe columns based on those indexes
########################################################################################

v_means <- features_df[grep("mean",features_df$feature, ignore.case=TRUE) , "feature_id"]
v_angle <- features_df[grep("angle",features_df$feature, ignore.case=TRUE) , "feature_id"]
#exclude  angle
v_means <- setdiff(v_means , v_angle)

v_stds <- features_df[grep("std",features_df$feature, ignore.case=TRUE) , "feature_id"]

v_means_stds <- unique(c(v_means, v_stds))

## keep also the last two colums - subjectID and activityID
v_keep_cols <- c(v_means_stds , ncol(total_df)-1 , ncol(total_df))

## subset total_df dataframe in order to keep just the measurements on the mean and standard deviation
total_df <- total_df[ ,v_keep_cols ]




#####################################################################################
##left join  total_df and activity_df  to 'add' activity labels to the data frame
#####################################################################################

total_df <- left_join(total_df, activities_df, by = "activityId")


######################################################################################
## renames the columns
######################################################################################
## get the column names related to the 561 feature vector 
## and then use the  features dataframe to rename the columns with the approriate feature labels
## removing parenthesis and dashes and substituting "BodyBody" for "Body"

name_cols <- names(total_df)
new_names <- character()

for ( str_name in name_cols) {

    if (substring(str_name , 1,1) == "V") {     ##  if column name starts with a "V" 
        str_name_ <- substring(str_name , 2)    ## "strip out the "V" from the column name   
        nr <- as.numeric(str_name_)
        str_feature <- features_df[ features_df$feature_id == nr , "feature"]    ## search for the feature label on the feature data frame
        ## remove parenthesis and dash 
        for (ch in c( "(" , ")" , "-")) str_feature <- gsub(ch , "",  str_feature ,fixed=TRUE )
        ## substitute "BodyBody" for "Body"
        str_feature <- gsub("BodyBody" , "Body",  str_feature ,fixed=TRUE )

        new_names <- c(new_names , str_feature)     ## appends the feature label to the new_names vector
    } else {
        new_names <- c(new_names , str_name)        ## if column name didn't start with a "V" appends the old column name to the new_names vector
    }      
}

names(total_df) <- new_names      # rename the column names of the data frame with the new_names vector


#####################################################################################
## summarises calculating the average of each variable for each activity and subject
#######################################################################################

summary_df <- group_by(total_df, activity, subjectId)

# for each column summarise by calculating the average for each subject and activity
summary_df <- summarise_each(summary_df , funs(mean), -activityId )
summary_df <- as.data.frame(summary_df)
summary_df <- arrange(summary_df, activity, subjectId)

## Write summary_df to a txt file 
write.table(summary_df, file = "tidy_data_UCI_HAR.txt", sep = " " , row.names=FALSE)


