<!-- REMOVE_ME # Challenge ${suffixNumber} - <Title of Challenge> (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
# Challenge 04 - Create a Fabric Warehouse to ingest data from the KQL DB near real-time 
<!-- REPLACE_ME (this section will be removed by the automation script) -->

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
<!-- If you are using this template manually, ensure the navigation links below are updated to link to the previous and next challenges relative to the current challenge. The "Home" link should always link to the homepage of the hack which is the README.md in the hack's parent directory. -->
[< Previous Challenge](./Challenge03.md) - **[Home](../README.md)**
<!-- REPLACE_ME (this section will be removed by the automation script) -->


## Pre-requisites

- Stock Table in the KQLDB

## Description

Your assignment involves the creation of a near real-time ingestion engine utilizing a Fabric Warehouse Pipeline. This engine is designed to ingest data that is continuously generated on a second-by-second basis. 

In this challenge, your primary goal is to establish a connection between the Kusto Query Language (KQL) database or queryset and a table within the warehouse. This will involve the creation of the table to represent the incoming data and the development of a pipeline responsible for ingesting this data into the newly created table.

## Success Criteria

To successfully complete this challenge, ensure the following:

-   A table is in your Fabric warehouse containing the stock data, ingested from the KQL database.
-   A pipeline is set up to ingest data every 5 minutes, specifically capturing records added since the last execution of the pipeline.
-   A table is created to maintain track of the previous execution timestamp
        - IngestSourceInfo (ObjectName,WaterMark)


## Learning Resources
- [Creating a Fabric data pipeline](https://learn.microsoft.com/en-us/fabric/data-factory/tutorial-end-to-end-pipeline)
- [Creating a table](https://learn.microsoft.com/en-us/fabric/data-warehouse/create-table)
- [Scheduling and Monitoring pipelines](https://learn.microsoft.com/en-us/fabric/data-factory/pipeline-runs)

## Tips


## Additional Challenges