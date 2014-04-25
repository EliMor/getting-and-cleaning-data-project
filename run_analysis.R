#Get column names
features = read.table('UCI HAR Dataset/features.txt')

#Get indicies of features with mean or standard deviation
mean_sd = grepl('mean',features[,2]) | grepl('std',features[,2])

#Create vector of column classes, assigning undesired columns to NULL
col_class = rep('NULL', length(mean_sd))
col_class[mean_sd] = 'numeric' 

#Import X data, only reading in features involving mean or sd
testX = read.table('UCI HAR Dataset/test/X_test.txt',col.names = features[,2],)
trainX = read.table('UCI HAR Dataset/train/X_train.txt',col.names = features[,2],colClasses=col_class)

#Merge X data
X = rbind(testX,trainX)
remove(testX,trainX)

##Merge Y data
testY = read.table('UCI HAR Dataset/test/Y_test.txt',col.names = 'Activity')
trainY = read.table('UCI HAR Dataset/train/Y_train.txt',col.names = 'Activity')
Y = rbind(testY,trainY)
remove(testY,trainY)

#Merge subject data
testSub = read.table('UCI HAR Dataset/test/subject_test.txt',col.names = 'Subject')
trainSub = read.table('UCI HAR Dataset/train/subject_train.txt',col.names = 'Subject')
Subject = rbind(testSub,trainSub)
remove(testSub,trainSub)

##Merge Subject, Y, and X into single data frame
data = cbind(Subject,Y,X)
remove(Subject,X,Y)
