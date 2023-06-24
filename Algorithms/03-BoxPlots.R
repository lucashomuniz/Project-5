# Analyzing BoxPlots
# This code contains commands for analyzing variables using BoxPlot
# Variable that controls the execution of the script
Azure <- FALSE

if(Azure){
  source("src/Tools.R")
  bikes <- maml.mapInputPort(1)
  bikes$dteday <- set.asPOSIXct(bikes)
}else{
  bikes <- bikes
}

# Converting dayWeek variable to ordered factor and plotting in time order
bikes$dayWeek <- fact.conv(bikes$dayWeek)

# Bike demand vs potential predictor variables
labels <- list("Boxplots - Demand for Bikes per Hour",
               "Boxplots - Demand for Bikes by Station",
               "Boxplots - Demanda de Bikes por Dia Útil",
               "Boxplots - Demand for Bikes by Day of the Week")

xAxis <- list("hr", "weathersit", "isWorking", "dayWeek")

# Function to create the boxplots
plot.boxes  <- function(X, label){ 
  ggplot(bikes, aes_string(x = X, y = "cnt", group = X)) + 
    geom_boxplot( ) + 
    ggtitle(label) +
    theme(text = element_text(size = 18)) 
  }

require(ggplot2)
Map(plot.boxes, xAxis, labels)

# Output in Azure ML
if(Azure) maml.mapOutputPort('bikes')
