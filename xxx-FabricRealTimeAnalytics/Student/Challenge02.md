<!-- REMOVE_ME # Challenge ${suffixNumber} - <Title of Challenge> (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
# Challenge 02 - Transforming the Data
<!-- REPLACE_ME (this section will be removed by the automation script) -->

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
<!-- If you are using this template manually, ensure the navigation links below are updated to link to the previous and next challenges relative to the current challenge. The "Home" link should always link to the homepage of the hack which is the README.md in the hack's parent directory. -->
[< Previous Challenge](./Challenge-X-1.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-X+1.md)
<!-- REPLACE_ME (this section will be removed by the automation script) -->


## Pre-requisites

* Ingest the Event Hub data into Fabric KQL Database successfully
* Have Stock Table ready

## Introduction

You've been tasked with creating some real time reporting using Power BI based on the data that is contantly being generated every second. In this challenge, you will learn how to query and transform the data with Fabric. 

## Description
In this challenge, you need to get the price difference and price difference percent between stock price and its previous price at different timestamps in Stock Table. The data in the new table should be in ascending time stamp order.


## Success Criteria

To complete this challenge successfully, you should be able to:
- Create a KQL Queryset
- Query the original Stock Table in ascending time stamp order
- Calculate the stock price difference and price difference percent at each timestamp

## Learning Resources

- [Query data in a KQL queryset](https://learn.microsoft.com/en-us/fabric/real-time-analytics/kusto-query-set)
- [Customize results in the KQL Queryset results grid](https://learn.microsoft.com/en-us/fabric/real-time-analytics/customize-results)


## Tips

- You should add two columns in Stock Table: one for "pricedifference", and one for "percentpricedifference"
- You can keep the price difference to two decimal places, and keep the price difference percent to four decimal places

## Advanced Challenges (Optional)

Too comfortable?  Eager to do more?  Try these additional challenges!

- Group "symbol" column by stock
- Find out each stock at what time has the biggest price difference
