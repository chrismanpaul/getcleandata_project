# load packages

library(mosaic)
library(stringr)

#load data files

features <- read.table("features.txt", sep = "", colClasses = c("integer", 
                                                                "character"), 
                       col.names = c("number", "name"))
act_labels <- read.table("activity_labels.txt", sep = "", 
                         colClasses = c("integer", "character"))
subject_test <- read.table("test/subject_test.txt", sep = "")
x_test <- read.table("test/X_test.txt", sep = "")
y_test <- read.table("test/y_test.txt", sep = "")
subject_train <- read.table("train/subject_train.txt", sep = "")
x_train <- read.table("train/X_train.txt", sep = "")
y_train <- read.table("train/y_train.txt", sep = "")

#combine subject and activity (the y data) with feature output, add column
#labels and merge test and train sets

total_test <- cbind(subject_test,y_test,x_test)
total_train <- cbind(subject_train,y_train,x_train)
total_col_names <- c("subject","activity",features[,2])
colnames(total_test) <- total_col_names
colnames(total_train) <- total_col_names

total_data <- rbind(total_test, total_train)


#select the columns that contain mean or standard deviation data (along with 
#subject and activity).  Also inserting names for activities, rather than their 
#corresponding numbers

i <- grep("mean", total_col_names)
j <- grep("std", total_col_names)
select_columns <- c(1,2,i,j)
selected_data <- total_data[,select_columns]
activities <- act_labels[,2]
selected_data <- mutate(selected_data, activity = activities[activity])

#maybe something to rename the variables better in here

new_names <- colnames(selected_data)
new_names <- str_replace_all(new_names, "[-]", "_")
new_names <- str_replace_all(new_names, "[()]", "")
colnames(selected_data) <- new_names

#now determine the average for each variable for each subject and activity.
#this will be done by determing all the unique subject/activity combinations, 
#and then creating an empty matrix with the number of rows equal to that (180), 
#and the number of columns equal to the number of columns in selected_data (81).
#We will then loop through all the unique subject/activity combinations, subsetting
#the data and finding the column averages for that subsetted data, writing the 
#averages to our placeholder matrix.  At the end we will convert the placeholder
#matrix into a data frame and assignt he correct column names.

identifiers <- cbind(selected_data$subject, selected_data$activity)
cases <- unique(identifiers)
empties <- vector("numeric", 81*180)
empty_matrix <- matrix(empties, nrow = 180, ncol = 68)
empty_matrix[,1:2] <- cases
for (num in 1:180) {
    temp_data <- filter(selected_data, subject == empty_matrix[num,1] & 
                            activity == empty_matrix[num,2])
    temp_avs <- apply(temp_data[,3:81],2,mean)
    empty_matrix[num,3:81] <- temp_avs
}
case_averages <- data.frame(empty_matrix)
colnames(case_averages) <- colnames(selected_data)

#we will now write out the new tidy average data set to a file

write.table(case_averages, "gcdata_proj_tidy_output.txt", row.name = FALSE)

