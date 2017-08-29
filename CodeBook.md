## Code Book

This Code Book describes the data used to complete the Peer-Graded Assignment for the Getting and Cleaning Data course, as well as the processing required to create the tidy data set.

### Overview

A group of 30 volunteers between 19 and 48 years performed six different activities (walking, walking upstairs, walking downstairs, sitting, standing and laying) while wearing a smartphone (Samsung Galaxy S II). The smartphone's embedded accelerometer and gyroscope, various data about the subjects' movements was captured.

### Explanation of each file
The zip folder downloaded contains the files
* `features_info.txt`: Shows information about the variables used on the feature vector.
* `features.txt`: Lists all 561 features.
* `activity_labels.txt`: Links the class labels with their activity name.
* `X_train.txt`: contains the training data set consisting of 7352 observations of the 561 features.
* `subject_train.txt`: Each row identifies the subject who performed the activity for each window observation in `X_train.txt`.
* `y_train.txt`: contains the training labels denoting the ID of the activity related to each of the observations in `X_train.txt`.

* `X_test.txt`: contains the test data set.
* `subject_test.txt`: the test labels denoting the ID of the volunteer related to each of the observations in `X_test.txt`.
* `y_test.txt`: contains the ID of the activity related to each of the observations in `X_test.txt`.

The `README.txt` file contains more information about the tests and associated files. 

Note: During this process the Inertia Signal files were not used and are not described in this code book. 

### Analysis Steps

1. The code checks to determine whether the datafile has already been downloaded and extracted; if not, this step is completed.

2. Activity and Feature info is then loaded from the `activity_labels.txt` and `features.txt` files.

3. Columns that contain means or standard deviation values are identified in the dataset, and their column labels are cleaned up. 

4. The datasets are then loaded with only the means and standard deviations kept. 

5. The test and train datasets are then merged into one data set.

6. The Activity and Subject columns are converted into Factors.

7. These factors are then used to create a new file called `tidy.txt` which contains the clean tidied data with the average of each variable for each activity and each subject.