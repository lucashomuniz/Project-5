# ✅ PROJECT-5

The project you described focuses on creating a predictive model to estimate bicycle rental demand. The aim is to build a regression model that can predict the number of bicycles rented in a specific hour. To accomplish this, a dataset was used to train the model, with the target variable being the "COUNT (CNT)" which represents the number of bicycles rented. During the process of building the regression model, a technique called Feature Selection was applied. This technique involves selecting the most relevant variables from the dataset to be used in building the model. By doing so, the model becomes simpler to interpret, reduces training time, and improves its generalization capabilities while avoiding overfitting.

It's worth noting that the project was developed in parallel using both the R programming language and Microsoft Azure Machine Learning Studio. This suggests that the project team utilized both tools to explore and analyze the dataset, build and train the regression model, and evaluate its performance. R language provides a powerful and flexible environment for statistical analysis and modeling, while Azure Machine Learning Studio offers a cloud-based platform for building and deploying machine learning models. By leveraging these tools, the team could benefit from the strengths of each platform and choose the most suitable one based on their requirements and preferences. This approach demonstrates the versatility and adaptability of the project, as it was able to leverage different tools to achieve the desired outcome.

Keywords: R Language, Microsoft Azure Big Data, Data Analysis, Linear Regression, Boosted Decision Tree Regression, Machine Learning, Bikes, Optimization, Predictive Model, Rent Forecast.

# PROCESS

In this experiment, we first used the linear regression algorithm as part of the machine learning development process to estimate bicycle rental demand. The linear regression algorithm allowed the construction of
an initial predictive model, using a data set for training. Subsequently, Feature Selection techniques were applied to improve the model, selecting the most relevant variables. However, this combined approach of 
linear regression and Feature Selection did not result in an optimized model, which had a very low coefficient of determination.

![image](https://github.com/lucashomuniz/Project-5/assets/123151332/dfb4e2ee-4353-4aab-881c-2311e1e8a216)

After realizing that the first algorithm used, linear regression, did not obtain satisfactory results, it was decided to adopt a different approach for the development of machine learning. Thus, it was decided to
use the Boosted Decision Tree Regression algorithm. This choice was due to its ability to deal with complex relationships between variables and improve the predictive capacity of the model. Through 
Boosted Decision Tree Regression, it was possible to obtain a more accurate and efficient model for forecasting bicycle rental demand, allowing for more informed decisions and optimizing the service offered.

![image](https://github.com/lucashomuniz/Project-5/assets/123151332/46bc8cc4-9bac-40f5-8c2b-bf2e03b6a236)

In the machine learning development process, it is important to consider choosing the right algorithm to achieve more accurate and efficient results. While Linear Regression is a simpler algorithm, 
Boosted Decision Tree Regression is a more complex and optimized option. By using this improved Decision Tree algorithm, you can learn more deeply about the correlations between your data, resulting in superior
performance and better prediction results. This careful selection of the algorithm guarantees a more robust approach capable of delivering more accurate and valuable analyzes for the problem in question.

The residual histogram plot reveals that most of the differences between the predicted and observed values by the machine learning model using the Boosted Decision Tree Regression algorithm are small, indicating 
a reasonable predictability with an acceptable degree of error. However, there are significant residuals that move away from the zero value, pointing to more significant errors in certain cases. These residuals 
can be caused by variables not considered, unforeseen external influences or limitations of the algorithm itself. Therefore, it is necessary to perform an in-depth analysis of these outliers, identify their 
possible causes and evaluate the inclusion of additional variables to improve the predictive capacity of the model. With this refined approach, it will be possible to optimize performance and make the model more 
accurate and reliable in its predictions.

![image](https://github.com/lucashomuniz/Project-5/assets/123151332/ca5e91f7-fe1e-462c-b8ee-04cf0534b669)

There are several ways to optimize the machine learning model. The first option is to adjust the parameters of the Boosted Decision Tree Regression algorithm, which requires a deep understanding of its 
functionalities. The second option is to create a custom script to optimize the algorithm based on mathematical and statistical techniques. The third option involves strategic improvements in the Data Munging 
process, making specific changes. Finally, the fourth option is to use the Tune Model Hyperparameters, which allows testing different combinations of hyperparameters for different algorithms, with 
hyperparameters being specific configurations of the algorithm that affect its performance. These options offer different approaches to optimizing the model and maximizing its accuracy and efficiency.

Microsoft Azure Machine Learning offers a cloud-based platform with scalable computing resources, seamless integration with other Azure services, and automated machine learning capabilities for model selection and tuning. It provides tools for managing experiments, tracking performance, and version control, facilitating reproducibility and collaboration. With simplified model deployment, monitoring, and extensive library support, it enables efficient development and integration of machine learning workflows. Azure Machine Learning ensures security and compliance, while promoting collaboration and knowledge sharing among team members. Overall, it is a powerful platform for developing, deploying, and managing machine learning models in the cloud.

![image](https://github.com/lucashomuniz/Project-5/assets/123151332/39aa49f1-a3e1-4b07-98b4-08c45927957e)

# DATA SOURCERS

The “Bike Rental UCI” dataset will be used to build and train the model in this experiment. This dataset is based on real data from the company Capital Bikeshare, which operates bicycle rentals in the city of 
Washington DC, in the USA. The dataset contains 17,379 observations and 17 variables, representing the number of bicycles rented within specific hours of the day, in the years 2011 and 2012. Weather conditions 
(such as temperature, humidity and wind speed) were included in the dataset and the dates were categorized like holidays and days of the week.

Dataset: https://archive.ics.uci.edu/ml/datasets/Bike+Sharing+Dataset
