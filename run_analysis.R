#run_analysis.R

#Get column names
features = read.table('UCI HAR Dataset/features.txt')

#Get indicies of features with mean or standard deviation
mean_sd = grepl('mean\\(',features[,2]) | grepl('std\\(',features[,2])

#Make syntatically valid variable names
variables = gsub('-','_',features[,2])
variables = gsub('\\(|\\)','',variables)

#Create vector of column classes, assigning undesired columns to NULL
##This is so read.table will only read in desired columns and ignore rest.
col_class = rep('NULL', length(mean_sd))
col_class[mean_sd] = 'numeric'
remove(mean_sd)

#Import X data, only reading in features involving mean or sd
testX = read.table('UCI HAR Dataset/test/X_test.txt',col.names = variables,colClasses=col_class)
trainX = read.table('UCI HAR Dataset/train/X_train.txt',col.names = variables,colClasses=col_class)
remove(features)
remove(col_class)

#Merge X data
X = rbind(testX,trainX)
remove(testX,trainX)

#Merge Y data
testY = read.table('UCI HAR Dataset/test/Y_test.txt',col.names = 'Activity')
trainY = read.table('UCI HAR Dataset/train/Y_train.txt',col.names = 'Activity')
Y = rbind(testY,trainY)
remove(testY,trainY)

#Merge subject data
testSub = read.table('UCI HAR Dataset/test/subject_test.txt',col.names = 'Subject')
trainSub = read.table('UCI HAR Dataset/train/subject_train.txt',col.names = 'Subject')
Subject = rbind(testSub,trainSub)
remove(testSub,trainSub)

#Merge Subject, Y, and X into single data frame
data = cbind(Subject,Y,X)
remove(Subject,X,Y)

#Replace activity value with  activity description
activity_names = read.table('UCI HAR Dataset/activity_labels.txt',col.names = c('Activity','Activity_Label'))
data = merge(activity_names,data)[,-1]
remove(activity_names)

#Generate tidy data frame with the average of each variable for each activity and each subject
tidy_data = aggregate(. ~ Subject + Activity_Label, data=data, FUN=mean)

#Save tidy data to text file
write.table(tidy_data, file = 'UCI HAR Dataset/tidy_data.txt', row.names=F)