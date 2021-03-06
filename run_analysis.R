#attempt to download the zip file from the internet, only if the corresponding directory is not already available
#in the working directory
#returns the name of the directory with the data.
#all that logic is encapsulated into the following function
readyMyData <- function () {
  #url where the file is
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  #zip file name
  myZipFileName = "ds.zip"
  #only download if not exists on current working dir
  if (!file.exists(myZipFileName)) {
    print("About to download file from internet")
    download.file(fileUrl, myZipFileName)
  }
  dataDirName <- "UCI HAR Dataset"
  if(!file.exists(dataDirName)) { 
    print("Unzipping the file")
    unzip(myZipFileName, exdir = ".") 
    }
  dataDirName
}

#download, unzip and return the directory
#if files already there, they won't be downloaded/unzipped again
directory <- readyMyData()
##Now lets read the labels...
actLbls <- read.table(paste0(directory,"/activity_labels.txt"))
#and convert them to strings
actLbls[,2] <- as.character(actLbls[,2])
feats <- read.table(paste0(directory, "/features.txt"))
#convert to strings
feats[,2] <- as.character(feats[,2])

# now using regex, just get the mean and std feats
meanStdFeats <- grep(".*std.*|.*mean.*", feats[,2])
#tidy data: all lowercase
meanStdFeats.names <- tolower(feats[meanStdFeats,2])
meanStdFeats.names <- gsub('-mean', 'mean', meanStdFeats.names)
meanStdFeats.names <- gsub('-std', 'std', meanStdFeats.names)
meanStdFeats.names <- gsub('[-()]', '', meanStdFeats.names)

##helper function to read the dataset bye type
##type is either train or test
##if passed another value it will fail
readDatasetByType <- function  (type) {
  if (type!="train" & type != "test") { stop("Invalid type, it has to be either train o test")}
  subjectData <- read.table(paste0(directory, "/", type, "/subject_", type, ".txt"));
  xData <- read.table(paste0(directory, "/", type, "/x_", type, ".txt"))[meanStdFeats]
  yData       <- read.table(paste0(directory, "/", type, "/y_", type, ".txt")); 
  #bind them all into a single table
  cbind(subjectData, yData, xData)
}

#Load the train set
trainDataSets = readDatasetByType("train")
testDataSets = readDatasetByType("test")

completeData <- rbind(trainDataSets, testDataSets)
colnames(completeData) <- c("subject", "activity", meanStdFeats.names)
#factor out to use labels instead of numbers
completeData$activity <- factor(completeData$activity, levels = actLbls[,1], labels = actLbls[,2])
completeData$subject <- as.factor(completeData$subject)
#needed for useful functions
library(reshape2)
##calculate mean
completeData.melted <- melt(completeData, id = c("subject", "activity"))
completeData.mean <- dcast(completeData.melted, subject + activity ~ variable, mean)
#finally writes the tidy file
write.table(completeData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
