<!-- REMOVE_ME # Challenge ${suffixNumber} - <Title of Challenge> (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
# Challenge 06 - Create a fact table and the store procedures to populate it
<!-- REPLACE_ME (this section will be removed by the automation script) -->

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
<!-- If you are using this template manually, ensure the navigation links below are updated to link to the previous and next challenges relative to the current challenge. The "Home" link should always link to the homepage of the hack which is the README.md in the hack's parent directory. -->
[< Previous Challenge](./Challenge05.md) - **[Home](../README.md)**
<!-- REPLACE_ME (this section will be removed by the automation script) -->


## Pre-requisites

- Stock Table populated in the Fabric warehouse 
- dim_Date and dim_Symbol populated in the Fabric warehouse 


## Description

Your task involves the creation of a fact table that stores daily stock pricing data. In this challenge, your primary objective is to establish the structure of the fact table and develop a stored procedure for data population.

fact_Stocks_Daily_Prices(StocksDailyPrice_SK,Symbol_SK,PriceDateKey,MinPrice,MaxPrice)

This fact table serves as the central pivot in your star schema. Symbol_SK and PriceDateKey act as foreign keys that link to the dimensions you created in a prior step, while StocksDailyPrice_SK serves as a row surrogate key.

Your aim is to create and maintain this fact table effectively to support the analytics reporting solution.

## Success Criteria

To successfully complete this challenge, you should ensure the following:

- The fact_Stocks_Daily_Prices table is created and populated with relevant data.
- You have incorporated a step within the data ingestion pipeline to populate the fact_Stocks_Daily_Prices table.
- You have added three tables ( 2 dimensions and 1 fact table) to default dataset and created the relationships connecting them and hiding any attribute in the     tables that are not business related, like SK, etc


## Learning Resources
- [Ingesting data using SQL](https://learn.microsoft.com/en-us/fabric/data-warehouse/ingest-data-tsql#creating-a-new-table-with-the-result-of-a-query-by-using-create-table-as-select-ctas)
- [Creating a fact table](https://learn.microsoft.com/en-us/fabric/data-warehouse/tables)
- [Creating a table](https://learn.microsoft.com/en-us/fabric/data-warehouse/create-table)
- [Creating default dataset](https://learn.microsoft.com/en-us/fabric/data-warehouse/datasets)


## Tips

## Additional Challenges
- Create a dataflow gen2 to populate the fact table instead of the store procedure