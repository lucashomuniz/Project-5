# Feature Selection
# This code contains commands for feature selection
# Variable that controls the execution of the script
Azure <- FALSE

if(Azure){
  source("src/Tools.R")
  bikes <- maml.mapInputPort(1)
  bikes$dteday <- set.asPOSIXct(bikes)
}else{
  bikes <- bikes
}

# Creating a model to identify the most important attributes for the predictive model
require(randomForest)

# Evaluating the importance of all variables
modelo <- randomForest(cnt ~ . , data = bikes, ntree = 100, nodesize = 10, importance = TRUE)

# Removing collinear variables
modelo <- randomForest(cnt ~ . - mnth
                       - hr
                       - workingday
                       - isWorking
                       - dayWeek
                       - xformHr
                       - workTime
                       - holiday
                       - windspeed
                       - monthCount
                       - weathersit, 
                       data = bikes, 
                       ntree = 100, 
                       nodesize = 10,
                       importance = TRUE)

# Plotting the variables by degree of importance
varImpPlot(modelo)

# Salving Results
df_saida <- bikes[, c("cnt", rownames(modelo$importance))]

if(Azure) maml.mapOutputPort("df_saida ")
