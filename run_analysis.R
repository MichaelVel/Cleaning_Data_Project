## Downloading files 

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "UCI_HAR_Dataset.zip")
unzip("UCI_HAR_Dataset.zip")

## This script needs the Tidyverse Package, so if you don't have it, please 
## install it: install.package("tidyverse")

library(tidyverse)

## 1 ## Merging train and test datasets  

 ## 1.1 ## Adding the subject and activity variables to the train dataset  
names <- as.character(read.table("./UCI HAR Dataset/features.txt")[,2])

train <- read_table("./UCI HAR Dataset/train/X_train.txt", col_names = names)
train_subjects <- scan("./UCI HAR Dataset/train/subject_train.txt")
train_activity <- scan("./UCI HAR Dataset/train/y_train.txt", what = character())
train_activity <- train_activity %>% 
  str_replace_all(c("1" = "Walking", "2" = "Walking_upstairs", "3" = "Walking_downstairs",
                    "4" = "Sitting", "5" = "Standing", "6" = "Laying"))

train <- train %>%  mutate(subjects = train_subjects, activity = train_activity, 
                           group = "train" )

 ## 1.2 ## Adding the subject and activity variables to the test dataset  

test <-  read_table("./UCI HAR Dataset/test/X_test.txt", col_names = names)
test_subjects <- scan("./UCI HAR Dataset/test/subject_test.txt")
test_activity <- scan("./UCI HAR Dataset/test/y_test.txt", what = character())
test_activity <- test_activity %>% 
  str_replace_all(c("1" = "Walking", "2" = "Walking_upstairs", "3" = "Walking_downstairs",
                    "4" = "Sitting", "5" = "Standing", "6" = "Laying"))

test <- test %>%  mutate(subjects = test_subjects, activity= test_activity,
                         group = "test")

 ## 1.3 ## Merging and order the dataset by the subjects

rm(test_activity, test_subjects, train_activity, train_subjects, url)

rm(test_activity, test_subjects, train_activity, train_subjects)

Full_dataset<- full_join(train, test)
Full_dataset <-arrange(Full_dataset, subjects)

## 2 ## Subsetting by the mean and the standard deviation variables 
     ## for each measurement 

Full_dataset <- Full_dataset %>% select(subjects, activity, group, 
                                str_which(names, pattern = "mean\\(|std\\(")) 

## 3 ## Label the data set with descriptive names 

names_dataset <- names(Full_dataset)
names_dataset <- names_dataset %>% str_to_lower() %>% str_remove("\\(\\)") %>%
  str_replace_all(c("acc" = "_acceleration", "gyro" = "_angular_velocity",
                    "-" = "_", "mag"= "_magnitude", "jerk" = "_jerk" ))
Full_dataset <- rename_at(Full_dataset,  vars(1:69), ~names_dataset)

## 4 ## Creating the second, tidy data set

rm(test, train, names, names_dataset)
Full_dataset <- Full_dataset %>% group_by(subjects, activity, group)
Second_dataset <- Full_dataset %>% summarise_all(mean)

write.table(Second_dataset, file= "tidy_dataset.txt", row.names = FALSE)

View(Second_dataset)

write.table(Second_dataset, file= "tidy_dataset.txt")







