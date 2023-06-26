# ✅ PROJECT-5

This project focuses on creating a predictive model to estimate bicycle rental demand. The aim is to build a regression model that can predict the number of bicycles rented in a specific hour. To accomplish this, a dataset was used to train the model, with the target variable being the "COUNT (CNT)" which represents the number of bicycles rented. During the process of building the regression model, a technique called Feature Selection was applied. This technique involves selecting the most relevant variables from the dataset to be used in building the model. By doing so, the model becomes simpler to interpret, reduces training time, and improves its generalization capabilities while avoiding overfitting.


This project was developed in parallel using both the R programming language and Microsoft Azure Machine Learning Studio. This suggests that the project team utilized both tools to explore and analyze the dataset, build and train the regression model and the Boosted Decision Tree Regression, evaluating ther performances. R language provides a powerful and flexible environment for statistical analysis and modeling, while Azure Machine Learning Studio offers a cloud-based platform for building and deploying machine learning models. By leveraging these tools, the team could benefit from the strengths of each platform and choose the most suitable one based on their requirements and preferences. This approach demonstrates the versatility and adaptability of the project, as it was able to leverage different tools to achieve the desired outcome.


Keywords: R Language, Microsoft Azure Big Data, Data Analysis, Linear Regression, Boosted Decision Tree Regression, Machine Learning, Bikes, Optimization, Predictive Model, Rent Forecast.

# PROCESS

The project is done step by step as follows: Clear definition of the business problem to be solved. This involves identifying the questions that need to be answered or the decisions that must be made based on the available data. After defining the problem, the next step is to collect the relevant data for analysis. This may include extracting data from diverse sources such as databases or publicly available datasets.
With the data collected, it is necessary to carry out data munging, that is, cleaning and preparing the data. This may involve removing missing values, handling outliers, and transforming variables to prepare the data for analysis. After data munging, the data can be loaded into an analysis tool, such as Azure ML, which supports the R language. This will allow you to perform advanced manipulations and analysis on the data. It is then important to perform additional cleaning and transformation on the data, if necessary, to prepare it for exploratory analysis and modeling. This can include removing irrelevant columns, handling outliers, encoding categorical variables, and normalizing the data.


A correlation analysis must be performed to understand relationships between variables. This will help identify which variables are most correlated with the target variable or with each other. You can use statistical techniques, such as the correlation matrix or Pearson's correlation coefficient, to assess the strength and direction of these relationships. If the data has a temporal dimension, specific exploratory analysis is required to understand trends and patterns over time. This can include creating time series graphs such as timelines or scatter plots. In addition, boxplots and density plots can be constructed to visualize data distribution and variability. For the selection of variables, the RandomForest model can be used, which is a machine learning technique based on decision trees. It can be used to identify the most relevant variables for the predictive model.


<img width="798" alt="Screenshot 2023-06-26 at 15 45 42" src="https://github.com/lucashomuniz/Project-5/assets/123151332/afa9b5c1-b0bc-426a-b45c-1f11165f2c07">


Another approach is filter based feature selection, which involves applying statistical metrics to select the most important variables. With the selected variables, it is possible to build the predictive model. This involves choosing the most suitable machine learning algorithm and setting the corresponding parameters. Next, the predictive model needs to be trained using the available data. This involves feeding the model the training data and adjusting its parameters so that it can learn from patterns in the data. After training the model, it is important to look for ways to improve its performance. This may include optimizing model hyperparameters such as learning rate, number of trees, or maximum tree depth, for example. Once the model has been refined, it is possible to create an "R" module in Azure ML to perform the implementation and training of the model in a scalable and managed infrastructure.


After training the model, it is necessary to verify the computation of residuals, which are the differences between the values predicted by the model and the actual values of the test data. This will allow you to assess the quality of the model and identify potential issues such as bias or lack of proper fit. The interpretation of residuals is an important step to understand the adequacy of the model to the data and to identify possible improvements or necessary adjustments. Model optimization involves looking for ways to further improve its performance. This can include exploring different machine learning algorithms, combining models, or applying advanced optimization techniques such as Bayesian optimization. Finally, when completing the project, it is recommended to make a suggestion for future optimizations. This could include collecting more data, incorporating additional sources of information, periodically updating the model with new data, or exploring deep learning techniques to improve the model's predictive ability.


<img width="528" alt="Screenshot 2023-06-26 at 15 51 49" src="https://github.com/lucashomuniz/Project-5/assets/123151332/50ec1031-c421-4b49-b1e7-6b781dd7b3ff">


Microsoft Azure Machine Learning offers a cloud-based platform with scalable computing resources, seamless integration with other Azure services, and automated machine learning capabilities for model selection and tuning. It provides tools for managing experiments, tracking performance, and version control, facilitating reproducibility and collaboration. With simplified model deployment, monitoring, and extensive library support, it enables efficient development and integration of machine learning workflows. Azure Machine Learning ensures security and compliance, while promoting collaboration and knowledge sharing among team members. Overall, it is a powerful platform for developing, deploying, and managing machine learning models in the cloud.


![Screenshot 2023-06-24 at 11 21 38](https://github.com/lucashomuniz/Project-5/assets/123151332/9299bf49-98ec-4f51-9189-bc4f0f4f48b2)


In this experiment, we first used the linear regression algorithm as part of the machine learning development process to estimate bicycle rental demand. The linear regression algorithm allowed the construction of
an initial predictive model, using a data set for training. Subsequently, Feature Selection techniques were applied to improve the model, selecting the most relevant variables. However, this combined approach of 
linear regression and Feature Selection did not result in an optimized model, which had a very low coefficient of determination.


![image](https://github.com/lucashomuniz/Project-5/assets/123151332/f3256d30-7873-4bbc-a851-07a87564a9ab)


After realizing that the first algorithm used, linear regression, did not obtain satisfactory results, it was decided to adopt a different approach for the development of machine learning. Thus, it was decided to
use the Boosted Decision Tree Regression algorithm. This choice was due to its ability to deal with complex relationships between variables and improve the predictive capacity of the model. Through 
Boosted Decision Tree Regression, it was possible to obtain a more accurate and efficient model for forecasting bicycle rental demand, allowing for more informed decisions and optimizing the service offered.


![image](https://github.com/lucashomuniz/Project-5/assets/123151332/0b4860de-1ca4-4f1e-a214-e9804dad007b)


In the machine learning development process, it is important to consider choosing the right algorithm to achieve more accurate and efficient results. While Linear Regression is a simpler algorithm, 
Boosted Decision Tree Regression is a more complex and optimized option. By using this improved Decision Tree algorithm, you can learn more deeply about the correlations between your data, resulting in superior
performance and better prediction results. This careful selection of the algorithm guarantees a more robust approach capable of delivering more accurate and valuable analyzes for the problem in question.


![Screenshot 2023-06-24 at 11 20 29](https://github.com/lucashomuniz/Project-5/assets/123151332/0a74449a-5728-473a-a52b-c2688e7a6cb1)


The residual histogram plot reveals that most of the differences between the predicted and observed values by the machine learning model using the Boosted Decision Tree Regression algorithm are small, indicating 
a reasonable predictability with an acceptable degree of error. However, there are significant residuals that move away from the zero value, pointing to more significant errors in certain cases. These residuals 
can be caused by variables not considered, unforeseen external influences or limitations of the algorithm itself. Therefore, it is necessary to perform an in-depth analysis of these outliers, identify their 
possible causes and evaluate the inclusion of additional variables to improve the predictive capacity of the model. With this refined approach, it will be possible to optimize performance and make the model more 
accurate and reliable in its predictions.


For future projects, there are several ways to optimize the machine learning model. The first option is to adjust the parameters of the Boosted Decision Tree Regression algorithm in the Microsoft Azure Machine Learning, which requires a deep understanding of its functionalities. The second option is to create a custom script to optimize the algorithm based on mathematical and statistical techniques. The third option involves strategic improvements in the Data Munging process, making specific changes. Finally, the fourth option is to use the Tune Model Hyperparameters, which allows testing different combinations of hyperparameters for different algorithms, with hyperparameters being specific configurations of the algorithm that affect its performance. These options offer different approaches to optimizing the model and maximizing its accuracy and efficiency.

# DATA SOURCERS

The “Bike Rental UCI” dataset will be used to build and train the model in this experiment. This dataset is based on real data from the company Capital Bikeshare, which operates bicycle rentals in the city of 
Washington DC, in the USA. The dataset contains 17,379 observations and 17 variables, representing the number of bicycles rented within specific hours of the day, in the years 2011 and 2012. Weather conditions 
(such as temperature, humidity and wind speed) were included in the dataset and the dates were categorized like holidays and days of the week.

Dataset: https://archive.ics.uci.edu/ml/datasets/Bike+Sharing+Dataset
