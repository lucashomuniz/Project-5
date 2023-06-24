# Time Series Analysis
# This code contains commands for time series analysis
# Variable that controls the execution of the script
Azure <- FALSE

if(Azure){
  source("src/Tools.R")
  bikes <- maml.mapInputPort(1)
  bikes$dteday <- set.asPOSIXct(bikes)
}else{
  bikes <- bikes
}

# Assessing bike rental demand over time
# Constructing a time series plot for some given times
# on weekdays and weekend days.
times <- c(7, 9, 12, 15, 18, 20, 22) 

# Time Series Plot
tms.plot <- function(times){
  ggplot(bikes[bikes$workTime == times, ], aes(x = dteday, y = cnt)) + 
    geom_line() +
    ylab("Bikes Quantity") +
    labs(title = paste("Demand for Bikes ", as.character(times), ":00", sep = "")) +
    theme(text = element_text(size = 20))
}

require(ggplot2)
lapply(times, tms.plot)

# Output in Azure ML
if(Azure) maml.mapOutputPort('bikes')
