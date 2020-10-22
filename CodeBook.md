
# Code Book

There are  69 variables in the final dataset:

The first three variables are factorial variables:

1 subjects : the label of the subjects who participated on the experiment. 
2 activity : the activities that the subjects performed 
3 group    : the group to which each subject was assigned 

The remaining variables where obtained by averaging the variables selected
from the original dataset for each subject and each activity.  

The variables selected from the original dataset are the mean() and std() of 
the signals: 

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ   
tBodyAccMag  
tGravityAccMag   
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag   
fBodyAcc-XYZ  
fBodyAccJerk-XYZ   
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag   
fBodyGyroMag  
fBodyGyroJerkMag    

where:
 't'  is used to denote time domain signals  
 'f'  is used to denote frequency domain signals    
 '-XYZ' is used to denote 3 different signals in the X, Y and Z directions 
 'Acc'  is used to denote acceleration 
 'Gyro' is used to denote angular velocity  
 'Mag'  is used to denote magnitude  

All the variables from the original dataset are normalized and bounded
within [-1,1].  The complete list of variables is described below: 

4 tbodyacc-mean()-x 
5 tbodyacc-mean()-y 
6 tbodyacc-mean()-z 
7 tbodyacc-std()-x 
8 tbodyacc-std()-y 
9 tbodyacc-std()-z 
10 tgravityacc-mean()-x 
11 tgravityacc-mean()-y 
12 tgravityacc-mean()-z 
13 tgravityacc-std()-x 
14 tgravityacc-std()-y 
15 tgravityacc-std()-z 
16 tbodyaccjerk-mean()-x 
17 tbodyaccjerk-mean()-y 
18 tbodyaccjerk-mean()-z 
19 tbodyaccjerk-std()-x 
20 tbodyaccjerk-std()-y 
21 tbodyaccjerk-std()-z 
22 tbodygyro-mean()-x 
23 tbodygyro-mean()-y 
24 tbodygyro-mean()-z 
25 tbodygyro-std()-x 
26 tbodygyro-std()-y 
27 tbodygyro-std()-z 
28 tbodygyrojerk-mean()-x 
29 tbodygyrojerk-mean()-y 
30 tbodygyrojerk-mean()-z 
31 tbodygyrojerk-std()-x 
32 tbodygyrojerk-std()-y 
33 tbodygyrojerk-std()-z 
34 tbodyaccmag-mean() 
35 tbodyaccmag-std() 
36 tgravityaccmag-mean() 
37 tgravityaccmag-std() 
38 tbodyaccjerkmag-mean() 
39 tbodyaccjerkmag-std() 
40 tbodygyromag-mean() 
41 tbodygyromag-std() 
42 tbodygyrojerkmag-mean() 
43 tbodygyrojerkmag-std() 
44 fbodyacc-mean()-x 
45 fbodyacc-mean()-y 
46 fbodyacc-mean()-z 
47 fbodyacc-std()-x 
48 fbodyacc-std()-y 
49 fbodyacc-std()-z 
50 fbodyaccjerk-mean()-x 
51 fbodyaccjerk-mean()-y 
52 fbodyaccjerk-mean()-z 
53 fbodyaccjerk-std()-x 
54 fbodyaccjerk-std()-y 
55 fbodyaccjerk-std()-z 
56 fbodygyro-mean()-x 
57 fbodygyro-mean()-y 
58 fbodygyro-mean()-z 
59 fbodygyro-std()-x 
60 fbodygyro-std()-y 
61 fbodygyro-std()-z 
62 fbodyaccmag-mean() 
63 fbodyaccmag-std() 
64 fbodybodyaccjerkmag-mean() 
65 fbodybodyaccjerkmag-std() 
66 fbodybodygyromag-mean() 
67 fbodybodygyromag-std() 
68 fbodybodygyrojerkmag-mean() 
69 fbodybodygyrojerkmag-std() 

 
