# ✅ PROJECT-5

This experiment aims to create a predictive model to estimate bicycle rental demand, demonstrating the process of building a regression model. We will use a dataset to train the model and predict the 
number of bicycles rented in a specific hour ("COUNT (CNT)" variable, ranging from 1 to 977). During the process, the Feature Selection technique was applied, which consists of selecting the most relevant
variables for building the model, resulting in a simplification that facilitates its interpretation, reduces training time and improves generalization, avoiding overfitting.

Keywords: R Language, Big Data, Data Analysis, Linear Regression, Boosted Decision Tree Regression, Machine Learning, Bikes, Optimization, Predictive Model, Rent Forecast.

# PROCESS

In this experiment, we first used the linear regression algorithm as part of the machine learning development process to estimate bicycle rental demand. The linear regression algorithm allowed the construction of
an initial predictive model, using a data set for training. Subsequently, Feature Selection techniques were applied to improve the model, selecting the most relevant variables. However, this combined approach of 
linear regression and Feature Selection did not result in an optimized model, which had a very low coefficient of determination.

![image](https://github.com/lucashomuniz/Project-5/assets/123151332/3e76bdc3-6119-49fd-ab43-c509935b9968)

After realizing that the first algorithm used, linear regression, did not obtain satisfactory results, it was decided to adopt a different approach for the development of machine learning. Thus, it was decided to
use the Boosted Decision Tree Regression algorithm. This choice was due to its ability to deal with complex relationships between variables and improve the predictive capacity of the model. Through 
Boosted Decision Tree Regression, it was possible to obtain a more accurate and efficient model for forecasting bicycle rental demand, allowing for more informed decisions and optimizing the service offered.

![image](https://github.com/lucashomuniz/Project-5/assets/123151332/d9ff1e8f-d096-4cd9-9d94-3dd89aff945d)

In the machine learning development process, it is important to consider choosing the right algorithm to achieve more accurate and efficient results. While Linear Regression is a simpler algorithm, 
Boosted Decision Tree Regression is a more complex and optimized option. By using this improved Decision Tree algorithm, you can learn more deeply about the correlations between your data, resulting in superior
performance and better prediction results. This careful selection of the algorithm guarantees a more robust approach capable of delivering more accurate and valuable analyzes for the problem in question.

The residual histogram plot reveals that most of the differences between the predicted and observed values by the machine learning model using the Boosted Decision Tree Regression algorithm are small, indicating 
a reasonable predictability with an acceptable degree of error. However, there are significant residuals that move away from the zero value, pointing to more significant errors in certain cases. These residuals 
can be caused by variables not considered, unforeseen external influences or limitations of the algorithm itself. Therefore, it is necessary to perform an in-depth analysis of these outliers, identify their 
possible causes and evaluate the inclusion of additional variables to improve the predictive capacity of the model. With this refined approach, it will be possible to optimize performance and make the model more 
accurate and reliable in its predictions.

![image](https://github.com/lucashomuniz/Project-5/assets/123151332/aa5139cb-a6df-4a11-a75e-7a6cba1074b3)

There are several ways to optimize the machine learning model. The first option is to adjust the parameters of the Boosted Decision Tree Regression algorithm, which requires a deep understanding of its 
functionalities. The second option is to create a custom script to optimize the algorithm based on mathematical and statistical techniques. The third option involves strategic improvements in the Data Munging 
process, making specific changes. Finally, the fourth option is to use the Tune Model Hyperparameters, which allows testing different combinations of hyperparameters for different algorithms, with 
hyperparameters being specific configurations of the algorithm that affect its performance. These options offer different approaches to optimizing the model and maximizing its accuracy and efficiency.

# DATA SOURCERS

The “Bike Rental UCI” dataset will be used to build and train the model in this experiment. This dataset is based on real data from the company Capital Bikeshare, which operates bicycle rentals in the city of 
Washington DC, in the USA. The dataset contains 17,379 observations and 17 variables, representing the number of bicycles rented within specific hours of the day, in the years 2011 and 2012. Weather conditions 
(such as temperature, humidity and wind speed) were included in the dataset and the dates were categorized like holidays and days of the week.

Dataset: https://archive.ics.uci.edu/ml/datasets/Bike+Sharing+Dataset
