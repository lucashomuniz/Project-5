# Data Collection and Transformation
# This code contains commands to filter and transform bike rental data,
# data that is in our dataset.
# Variable that controls the execution of the script
Azure <- FALSE

# Execution according to the value of the Azure variable
if(Azure){
  source("src/Tools.R")
  bikes <- maml.mapInputPort(1)
  bikes$dteday <- set.asPOSIXct(bikes)
}else{
  source("src/Tools.R")
  bikes <- read.csv("bikes.csv", sep = ",", header = TRUE, stringsAsFactors = FALSE )
  
  # Select the variables to be used
  cols <- c("dteday", "mnth", "hr", "holiday",
            "workingday", "weathersit", "temp",
            "hum", "windspeed", "cnt")
  
  # Creating a subset of the data
  bikes <- bikes[, cols]
  
  # Transform the date object
  bikes$dteday <- char.toPOSIXct(bikes)
  
  # This line above generates two NA values
  # This line below fixes
  bikes <- na.omit(bikes)
  
  # Normalize numeric predictor variables 
  cols <- c("temp", "hum", "windspeed") 
  bikes[, cols] <- scale(bikes[, cols])  
}

# Create a new variable to indicate the day of the week (workday)
bikes$isWorking <- ifelse(bikes$workingday & !bikes$holiday, 1, 0)  

# Add a column with the number of months, which will help create the model
bikes <- month.count(bikes)

# Create an ordered factor for the day of the week, starting with Monday
# This factor is converted to numerical order to be compatible with Azure ML data types
bikes$dayWeek <- as.factor(weekdays(bikes$dteday))

# If the weekday names are in Portuguese in the bikes$dayWeek column,
# run Block1 below, otherwise run Block2 with English names.
# Execute one block or the other.
str(bikes$dayWeek)

# If your operating system is in English, run the command below.
bikes$dayWeek <- as.numeric(ordered(bikes$dayWeek, 
                                    levels = c("Monday", 
                                               "Tuesday", 
                                               "Wednesday", 
                                               "Thursday", 
                                               "Friday", 
                                               "Saturday", 
                                               "Sunday")))

# Now the days of the week must be as numerical values
# If they are as NA values, go back and verify that you followed the instructions above.
str(bikes$dayWeek)
str(bikes)

# Add a variable with unique values for time of day on weekdays and weekend days
# With this we differentiate the hours on weekdays from the hours on weekend days
bikes$workTime <- ifelse(bikes$isWorking, bikes$hr, bikes$hr + 24) 

# Transform the time values at dawn, when the demand for bicycles is practically zero
bikes$xformHr <- ifelse(bikes$hr > 4, bikes$hr - 5, bikes$hr + 19)

# Add a variable with unique values for the time of day for weekdays and weekend days
# considering hours of dawn
bikes$xformWorkHr <- ifelse(bikes$isWorking, bikes$xformHr, bikes$xformHr + 24) 

# The work we've done so far is also called Feature Engineering or Attribute Engineering
View(bikes)

# Output in Azure ML
if(Azure) maml.mapOutputPort('bikes')
