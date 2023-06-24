# Correlation Analysis
# This code contains commands for correlation analysis.
# Variable that controls the execution of the script
Azure <- FALSE

if(Azure){
  source("src/Tools.R")
  bikes <- maml.mapInputPort(1)
  bikes$dteday <- set.asPOSIXct(bikes)
}else{
  bikes <- bikes
}

View(bikes)

# Defining the columns for the correlation analysis
cols <- c("mnth", "hr", "holiday", "workingday",
          "weathersit", "temp", "hum", "windspeed",
          "isWorking", "monthCount", "dayWeek", 
          "workTime", "xformHr", "cnt")

# Correlation Methods
# Pearson - coefficient used to measure the degree of relationship between two variables with linear relationship
# Spearman - non-parametric test, to measure the degree of relationship between two variables
# Kendall - non-parametric test, to measure the strength of dependence between two variables

# Vector with correlation methods
metodos <- c("pearson", "spearman")

# Applying the correlation methods with the color() function
cors <- lapply(metodos, function(method) 
  (cor(bikes[, cols], method = method)))

head(cors)

# Preparing the plot
require(lattice)
plot.cors <- function(x, labs){
  diag(x) <- 0.0 
  plot( levelplot(x, 
                  main = paste("Correlation Plot using Method", labs),
                  scales = list(x = list(rot = 90), cex = 1.0)) )
}

# Correlation Map
Map(plot.cors, cors, metodos)

# Output in Azure ML
if(Azure) maml.mapOutputPort('bikes')