library(dplyr)

# Load and reform source data, extracting out just the "mean" and "standard 
# deviation" data that has been record during the various measure of activites
# return back clean dataset
loadData <- function(folder, datasettype) {    
    data_folder <- sprintf("%s/%s", folder, datasettype)
    
    
    # Load the tests Subject ID, where each data row relates to an observation 
    # per individual
    subjectfilename <- sprintf("%s/subject_%s.txt",data_folder, datasettype)
    data <- read.table(subjectfilename, header=FALSE,  colClasses="factor", 
                       col.names=c("subject_id"))
    subject<- tbl_df(data)    
    
    # Load the data captured form multiple individuals across many exercises
    xdatafilename <- sprintf("%s/X_%s.txt",data_folder, datasettype)
    x_train <- tbl_df(read.table(xdatafilename))     
    
    # by default read.table will read content as factor, hence need to force
    # to character read
    features_filename <- sprintf("%s/features.txt",folder)
    column_names <- tolower(read.table(features_filename, colClasses="character", 
                                header=FALSE)$V2)

    
    # find the columns that contain mean or standard deviation data
    # and filter the X_ dataset removing all other measurements
    valid_cols <- grepl( "mean\\(\\)", column_names) | grepl( "std\\(\\)", 
                                                              column_names)
    index <- 1:length(column_names)
    x_train <- select(x_train, index[valid_cols])
    colnames(x_train) <- column_names[valid_cols]
    
    
    activity_filename <- sprintf("%s/activity_labels.txt",folder)
    actvity_names <- tbl_df(read.csv(activity_filename, header = FALSE, 
                                     sep = " "))
    
    # Load ID of acivity undertaken, and replace ID within "activity name"
    ydatafilename <- sprintf("%s/y_%s.txt",data_folder, datasettype)
    y_train <- tbl_df(read.table(ydatafilename))     
    y_train <- left_join(y_train, actvity_names, by = "V1")
    y_train <- rename(y_train, activity = V2)
    
    
    # join/merge all the dataset    
    all <- 
        bind_cols(subject, x_train) %>% 
        bind_cols(select(y_train, activity))
    
    
    all
}


load_merged_train_test_dataset <- function(folder) {
    train <- loadData(folder, "train")
    test <- loadData(folder, "test")
    
    merged <- dplyr::bind_rows(train,test)
    
    merged
}

