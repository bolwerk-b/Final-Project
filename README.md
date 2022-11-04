# Final-Project

## Purpose Of The Project:
The purpose of this project is to create an overview of the cost of a big mac from McDonalds and match that data against annual GDP of Nations to see if there is a correlation. The project will consist of two elements:

1. Regional Dashboard: Dashboard will provide a summary of each nations cost of a big mac vs. GDP.

2. Correlation model: the model will provide an analysis of whether the increase of gdp and the increase of the cost of a big mac are correlated.

Questions To Answer
How does the price of BigMac correlate with the GDP (worldwide) over time (2000-2021)?

which country(top 5) have the largest cost increase?

which country(top 5) have the smallest cost increase?

which region has the highest cost increase? 

which region has the lowest cost increase? 

How does the price correlate with the top and bottom 50 GDP’s?

## Sources:
[GDP Data (1960-2016)](https://www.kaggle.com/datasets/jonscheaffer/worldwide-gdp-history-19602016)
[GDP Data (1960-2020)](https://data.worldbank.org/indicator/NY.GDP.MKTP.CD)

Used to track historically GDP of Nations.

[Big Mac Data(2000-2022)](https://www.kaggle.com/datasets/vittoriogiatti/bigmacprice?select=BigmacPrice.csv)

Used to track the cost of the Big Mac in each country over time.

[Region(continent) Data](https://www.kaggle.com/datasets/andradaolteanu/country-mapping-iso-continent-region)

Used to correlate contries to their region/continent.

## Communications
All communications for this project were done via Slack and Zoom.

### Work completed for week 1: 
Ben - Created Repository, communications protocol, Questions to answer, ETL/data cleaning

Digamber - Created Data Model outline, Questions to answer

Lydia - Provided data sources and descriptions , Questions to answer

Kelsey - Created Database outline, Questions to answer

### Week2

# Machine Learning
1. Description of preliminary data preprocessing.

Data clean up and preprocessing was done in Jupyter notebook using Pandas. We investigating coorelation between BigMac prices and GDP's. There were two csv files used for the preprocessing one having the prices of BigMac as one of the columns and the other having GDP as a column. The two file were merged to contain data from 2000-2016, and data cleanup done to yield a finalized dataset (Final_Merged_CSV.csv).

2. Description of preliminary feature engineering and preliminary feature selection, including the decision-making process.

Feature selection: Using the finalized dataset we chose the GDP as the independant feature and dollar_price as the target
Feature engineering & decision-making process: We converted the GDP column into log10(GDP) as the raw values of GDP ranged from several 100 billion to several trillion USD. Converting into log10 makes the data more manageable. However, we do intent to keep the raw values of GDP through our preliminary round investigation. Other features that will be considered are gdp_growth, GDP_Per_Capita, geographical region and geographical sub_region.

3. Description of how data was split into training and testing set. 

We used the Sklearn train_test_split function to split the data 80:20 for training:testing

4. Explanation of model choice, including limitations and benefits

For machine learning Linear Regression would be our first choice as, both the target and the independant feature are continous. This is the simplest model and a good first choice. However there is a possibility that our gobal dataset may not be ideal for a linear analysis.
We have also considered 2nd order polynomial, and this may be a slightly better choice if the BigMac price and GDP's do not follow a linear trend. The model may be overfitting the data which could be a pitfall. 
Another consideration is the RandonForest Regression model. This model may have the capacity to accomodate our dataset. We can include multiple features to analyze the dataset. May help address the issue of overfitting with the 2nd order polynomial and may accomodate and outliers in our dataset.  
