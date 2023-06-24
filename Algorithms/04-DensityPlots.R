# Analyzing Density Plots
# This code contains commands for analyzing variables using Density Plots
# Variable that controls the execution of the script
Azure <- FALSE

if(Azure){
  source("src/Tools.R")
  bikes <- maml.mapInputPort(1)
  bikes$dteday <- set.asPOSIXct(bikes)
}else{
  bikes <- bikes
}

# Visualizing the relationship between predictor variables and bike demand
labels <- c("Demand for Bikes vs Temperature",
            "Demand for Bikes vs Humidity",
            "Bike Demand vs Wind Speed",
            "Demand for Bikes vs Time")

xAxis <- c("temp", "hum", "windspeed", "hr")

# Function for Density Plots
plot.scatter <- function(X, label){ 
  ggplot(bikes, aes_string(x = X, y = "cnt")) + 
    geom_point(aes_string(colour = "cnt"), alpha = 0.1) + 
    scale_colour_gradient(low = "green", high = "blue") + 
    geom_smooth(method = "loess") + 
    ggtitle(label) +
    theme(text = element_text(size = 20)) 
  }

require(ggplot2)
Map(plot.scatter, xAxis, labels)

# Exploring the interaction between time and day, on weekdays and weekends
labels <- list("Box plots - Demand for Bikes at 09:00 for \n weekdays and weekends",
               "Box plots - Demand for Bikes at 18:00 for \n weekdays and weekends")

Times <- list(9, 18)

plot.box2 <- function(time, label){ 
  ggplot(bikes[bikes$hr == time, ], aes(x = isWorking, y = cnt, group = isWorking)) + 
    geom_boxplot( ) + ggtitle(label) +
    theme(text = element_text(size = 18)) }

require(ggplot2)
Map(plot.box2, Times, labels)

# Output in Azure ML
if(Azure) maml.mapOutputPort('bikes')
