# Final-Project.

**Presentation:** <a href= "https://docs.google.com/presentation/d/1cd-4GkkITFEI98uPthiW-l5D1tL2eT2MpLtqE6v5fKk/edit?usp=sharing">Here is our final presentation.</a>

### Purpose Of The Project:
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

### Data Sources:
[GDP Data (1960-2016)](https://www.kaggle.com/datasets/jonscheaffer/worldwide-gdp-history-19602016)
[GDP Data (1960-2020)](https://data.worldbank.org/indicator/NY.GDP.MKTP.CD)

Used to track historically GDP of Nations.

[Big Mac Data(2000-2022)](https://www.kaggle.com/datasets/vittoriogiatti/bigmacprice?select=BigmacPrice.csv)

Used to track the cost of the Big Mac in each country over time.

[Region(continent) Data](https://www.kaggle.com/datasets/andradaolteanu/country-mapping-iso-continent-region)

Used to correlate contries to their region/continent.


### Database
We created a local database application to store our data utilizing pgAdmin, SQL, and Python.

After loading our data into pgAdmin, we were able to use SQL to link our data to our local database.

![price](https://user-images.githubusercontent.com/107373721/200097569-1b15c384-9c29-4f5b-82f1-2727b16f0b56.png)


### Machine Learning
The final Machine Learning code is included in the "machine learning" folder

[Machine_Learning_Final](https://github.com/bolwerk-b/Final-Project/blob/digamber-code/machine%20learning/Machine_Learning_models-final.ipynb)



1. Description of preliminary data preprocessing.

Data clean up and preprocessing was done in Jupyter notebook using Pandas. We investigating coorelation between BigMac prices and GDP's. There were two csv files used for the preprocessing one having the prices of BigMac as one of the columns and the other having GDP as a column. The two file were merged to contain data from 2000-2016, and data cleanup done to yield a finalized dataset (Final_Merged_CSV.csv).

2. Description of preliminary feature engineering and preliminary feature selection, including the decision-making process.

Feature selection: 

Using the finalized dataset we chose the GDP as the independant feature and dollar_price as the target for the Linear Regression model. For the RandomForest Regression we included "year", "gdp_growth", "GDP_Per_Capita", and "GDP" as features and "dollar_price" as the target 

Feature engineering & decision-making process: 

We converted the GDP column into log10(GDP) as the raw values of GDP ranged from several 100 billion to several trillion USD. Converting into log10 makes the data more manageable. However, we do intent to keep the raw values of GDP through our preliminary round investigation. Other numerical features such as gdp_growth, GDP_Per_Capita, and year were retained for RandomForest Regression. Feature that were strings such as geographical region and geographical sub_region were dropped for RandomForest Regression analysis.

We have also split the dataset into subset by regions and further sub-divided the regions into countries. Cursory investigation indicated that two different regresion models can be applied to different subset of the  based on accuracy. 

3. Description of how data was split into training and testing set. 

We used the Sklearn train_test_split function to split the data 80:20 for training:testing

4. Explanation of model choice, including limitations and benefits

For machine learning Linear Regression would be our first choice as, both the target and the independant feature are continous. This is the simplest model and a good first choice. However there is a possibility that our gobal dataset may not be ideal for a linear analysis.
We experimented with 2nd order polynomial, and this would have been a slightly better choice if the BigMac price and GDP's do not follow a linear trend. The model may be overfitting the data which could be a pitfall. Due to this reason we have discontinued use of this model 
RandonForest Regression model is a acceptable choice as this model has the capacity to accomodate our dataset. We can include multiple features to analyze the dataset. May help address the issue of overfitting with the 2nd order polynomial and may accomodate and outliers in our dataset.  

5. Description of accuracy scores

For those cases where we have employed the Linear Regression Model we have used R-square as a metric for accuracy. We chose 3 countries a models for Linear Regression with R-square values of 0.91 for the best fitted dataset.
For cases where we employed RandomForest Regression we used RMSE and mean relative error as an indicator of accuracy. Currently, the mean relative error for the entire dataset is ~11%. 


### Dashboard

In our Dashboard we will be highlighting Two Key Items:
1. Country Big Mac price(by Year)
2. Country GDP (by Year)

The purpose of this section is to provide insight into the dashboard creation process:
- Tool selection and storyboarding
- Analyze our data using data visualization
- Create the dashboard

### Process of Creating The Dashboard

The dashboard will include utilizing Tableau Public.

![Tableau](/dashboard/Tableau_Logo.png)

**1. Create the Storyboard**

Once our team determined our plan, we created a [Storyboard Framework](https://docs.google.com/presentation/d/1OWhGaB8OzmPcQ8QowJzmXAlEXA2OyeFz4E1aONp65aU/edit?usp=sharingDashboard).

**2. Creating The Dashboard**

In Tableau, we started with generating charts to show Burger Price over time sorted by country as well as region.

![Burger Price by year - Country](/dashboard/avg-burger-price-by-year-country.png)

![Burger Price by year - Region](/dashboard/avg-burger-price-by-year-region.png)

![World Burger Average Prices 2000 vs 2016](/dashboard/burger-price-dashboard.png)

**3. The Dashboard**

![Project Dashboard](https://public.tableau.com/views/BigMacPricesvsCountryGDPDashboard/avgcontrypricebyyear2016bar?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)


### Tasks Completed
