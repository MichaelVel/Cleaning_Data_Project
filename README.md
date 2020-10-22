# Cleaning_Data_Project

## Files 

The repository includes the following files:
- 'README.md'
- 'CodeBook.md': The code book describing the variables of the tidydataset
- 'run_analysis.R' : The script that generates the tidydataset
- 'tidy_dataset.txt': The final tidy data set.  

## The script

the script is divided into four parts: 

*- 1. Downloading files and loading the Tidyverse package:*
  
  The files to perform the analysis are downloading from the url provides 
  by the course assignment, but if you already have the 'UCI HAR Dataset' 
  folder in your Working Directory, you can skip this part. 
  
  Also, the script needs the tidyverse package to work, if you don't have it
  please make the installation. 
  
*- 2. Merging the train and test datasets:*

  In this part are load the train and test tables of the dataset, and are 
  labeled with the names provides by the autors in the 'features.txt' file.
  
  Three columns are added to each table: the subjects, and activity labels for 
  each measurement and a group label to indicate if the measurement is from the 
  training data or the test data. 
  
  The tables are joined with the full_join function. 
  
*- 3. Subsetting by the mean and the standard deviation variables:*

  Only the variables that have the strings "mean()" and "std()" in the 
  merged dataset are selected to generate the final dataset. 
  
*- 4. Creating the final, tidy data set:*
  
  Finally, the dataset is grouped by the subjects, activity and group columns
  and then is passed to the summarise_all function to obtain the tidy dataset.
   
  the output of the script is a 'tidy_dataset.txt file in the working directory, 
  also the object 'Second_dataset' present in the global enviroment is passed to
  the View function. 
  
  The final dataset can be loaded to r with: 
  
  read.table("tidy_dataset.txt", header = TRUE)  
  
# Bibliography 
  The dataset used to perform the analysis come from:
  - Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a       Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain.   Dec 2012
  
