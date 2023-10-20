<!-- REMOVE_ME # Challenge ${suffixNumber} - <Title of Challenge> (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
# Challenge 05 - Create two dimension tables and the store procedures to populate them
<!-- REPLACE_ME (this section will be removed by the automation script) -->

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
<!-- If you are using this template manually, ensure the navigation links below are updated to link to the previous and next challenges relative to the current challenge. The "Home" link should always link to the homepage of the hack which is the README.md in the hack's parent directory. -->
[< Previous Challenge](./Challenge04.md) - **[Home](../README.md)**
<!-- REPLACE_ME (this section will be removed by the automation script) -->


## Pre-requisites

- Stock Table populated in the Fabric warehouse 

## Description

You have been assigned the task of creating two dimensional tables to set the foundation for an analytics reporting solution. In this challenge, your objective is to establish two dimension tables: dim_Date and dim_Symbol.

dim_Date (DateKey, DayOfMonth, MonthName, Year):
    Your first goal is to develop a stored procedure to populate the dim_Date table. For each date in the prior month and the current month, you should create a corresponding record.

dim_Symbol (Symbol_SK, Symbol, Name, Market):
    Your next task is to create a stored procedure that will dynamically add records to the dim_Symbol table each time the stock ingestion pipeline is executed. This stored procedure should also be executed to identify and include any new stock symbols.

    For the "Name" column, you have the flexibility to populate it using any logical method, as long as the names are unique.

    In the "Market" column, you should ensure that each stock symbol is assigned to one of the following three markets: Nasdaq, SP500, or DJIA. Use any logical approach to categorize each stock symbol, making sure that at least one stock is assigned to each market.

Your goal is to create and maintain these two dimension tables to support the analytics reporting solution effectively.

## Success Criteria

To complete this challenge, verify that:
- You have dim_Date and dim_Symbol created and populated with data.
- You have a step added to the ingesting pipeline populating dim_Symbol


## Learning Resources
- [Creating dimension tables](https://learn.microsoft.com/en-us/fabric/data-warehouse/tables)
- [Creating a table](https://learn.microsoft.com/en-us/fabric/data-warehouse/create-table)
- [Creating a Fabric data pipeline](https://learn.microsoft.com/en-us/fabric/data-factory/tutorial-end-to-end-pipeline)


## Tips


## Additional Challenges
- - Create a dataflow gen2 to populate dim_Symbol instead of the store procedure