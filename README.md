# Forecasting Food

The data dashboard challenge for the Winter 2023 BIS 412 Advanced Data Visualization course. The challenge uses data from the U.S. Department Of Agriculture Economic Research Service (USDA ERS, 2022) to visualize historic records of food prices and forecast predictions.

-   📊 Challenge created by and made for the BIS 412 [Advanced Data Visualization](https://github.com/UWB-Adv-Data-Vis) course at the [University of Washington Bothell](https://www.uwb.edu/).

-   ✍️ Authored by [Sharmarke M.](https://github.com/Sharmake-CS), [Justin L.](https://github.com/Justin2003), [Marc O.](https://github.com/MOctavo), [Evan C.](https://github.com/Chothepro14), [Wes H.](https://github.com/whuynh2), and [Yucheng L.](https://github.com/YuchengLiuUW)

-   🔍 Challenge review committee: [Justin L.](https://github.com/Justin2003), [Rim W.](https://github.com/rwolde), [Sindhuja G.](https://github.com/singundeti), and [Amanda A.](https://github.com/amandaaguzar)

-   🛠️ Edited and supervised by Prof. [Caleb Trujillo](https://github.com/calebtru).

## Learning objectives 

In this assignment you will demoonstrate your ability to:

*    Prepare data by appropriately formatting it for analysis, summarizing, and filtering. For example, organize real-world data using a standard file format (CSV) and organizational approaches (Tidy).
*    Answer meaningful research questions using the tools in one or more software packages to work with authentic data.
*    Be capable of running, modifying, and sharing scripts to accomplish analyze data and visualize in one scripting language (R).
*    Manage project development to store, organize, and track code using digital collaboration tools for reproducibility (GitHub).
*    Create a data dashboard for the web to disseminate findings and visualization (Shiny)
*    Describe the rationale, methods, results, and broader social context of your student-led project that used data to answer an interesting question.
*    Describe and use different types of critical and scientific thinking to develop inquiry into selected projects and critique visualizations.

## Challenge Description

The challenge is to create a dashboard that visualizes the change in pricing over the years 1974-2022 within the food industry and the forecasts for 2023. Our goal is to design an accessible platform that represents useful information for farmers, processors, wholesalers, consumers, and policymakers to assist in decision-making about the future of pricing and its impacts on our agricultural economy. 

To meet this challenge, teams should address the following tasks:

-   Display comparisons of successive years in historic records of the consumer price index for each category of food
-   Display categories of food speculated to change in the future using forecasting information  for the consumer price index.
-   Visually identify the category of food fluctuating the most in pricing according to the consumer price index at user-selected time ranges
-   Visually identify the year that showed the largest changes in the consumer price index for user-selected categories of food

Additional challenge tasks if you complete the first four:
-   Create a second dashboard that repeats the measures and displays the producer price index historic changes and forecasts
-   Combine the information about notable changes in pricing that occur with major economic, social, and agricultural events into the data displays where appropriate.

## Data source

U.S. Department of Agriculture, Economic Research Service (2022). [*Food Price Outlook*](https://www.ers.usda.gov/data-products/food-price-outlook/)
Four spreadsheets are included in the GitHub repo from this source for both CPI and PPI.
You can consider using the API to USDA if you want to request developers permissions.

*  [API](https://www.ers.usda.gov/developer/data-apis/arms-data-api/)
*  [R package](https://cran.r-project.org/web/packages/rarms/index.html)

## Background

The two data sets that we have chosen contain food price information from 1974-2021 and 2020-2023 respectively. These data were provided by the USDA, Economic Research Service (ERS) Food Price Outlook (FPO) and gathered in cooperation with the U.S. Department of Labor, Bureau of Labor Statistics (BLS), and other government organizations since food price forecasts rely on information about workers, land use, farmers, ranchers, industry, transportation, and many other disciplines. The forecasting of food can provide useful signals to farmers, processors, wholesalers, consumers, and policymakers that can have ripple effects on the economy (MacLachlan & Sweitzer, 2023). The method to forecast the consumer price index (CPI) uses a vertical price transmission approach with a pass-through model of the producer price index (PPI) (Kuhns *et al.*, 2015; MacLachlan, Chelius, & Short, 2022). The details of the procedures and rationale for constructing the forecast are provided on the web page. The article *How USDA Forecasts Retail Food Price Inflation* does not seem to have any detailed information about any data limitations; it only mentions the phrase "data limitations" but does not go in-depth about the limitations. There seems to be no missing data on either of the two data sets we are using. The website has additional information including links to articles with similar topics and links for information about Consumer Price Index, Producer Price Index, Historical Data, and Legacy Data. Other articles discuss Food Markets & Prices, Food Prices, Expenditures, and Establishments, Food Consumption & Demand, and many more.

## Proposed Plan

The plan for the first week includes the following:

* Processing the datasets into usable data tables or Tibbles, extracting useful data, and removing useless rows and columns.
* Identifying the most suitable audience groups.
* Making a draft of the chart by hand where we will plan out the layout and design of the dashboard.


During class, we will gather some feedback to revise next week.

* In the second week, we will create several starting visual charts with different styles without consideration of the appearance and layout.
* We will focus on what kind of chart is best for expressing our data by considering different audience groups and using data to generate the most general visualization chart.
* We will present our diagrams in class to gather feedback
* Make changes.

In the third week, we will use the feedback data collected from the previous week to modify the visualization charts, and then integrate them into the Shiny dashboard.

* During this process, we will focus on considering the visual appearance, usability, and layout.
* Correct the integrated dashboard and eliminate errors as much as possible
* Get feedback in class.

In the final week, we are going to:

* Revise the dashboard, delete any unneeded information, and fix any final design issues on the dashboard.
* Test the dashboard for ease of use.
* Get some final feedback
* Publish the final dashboard.

## Sources

-   Kuhns, A., Leibtag, E., Volpe, R., & Roeger, E. (2015). *How USDA Forecasts Retail Food Price Inflation* (No. 1488-2016-123294). Retrieved February 4, 2023, from <https://www.ers.usda.gov/webdocs/publications/47621/52935_tb1940.pdf?v=818.3>

-   MacLachlan, M. J., Chelius, C. A., & Short, G. (2022). Time-Series Methods for Forecasting and Modeling Uncertainty in the Food Price Outlook. *Amber Waves: The Economics of Food, Farming, Natural Resources, and Rural America, 2022*(Technical Bulletin Number (TB-1957)).

-   U.S. Department of Agriculture, Economic Research Service (2022). *Food Price Outlook.* <https://www.ers.usda.gov/data-products/food-price-outlook/>
