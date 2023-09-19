<!-- REMOVE_ME # Challenge ${suffixNumber} - <Title of Challenge> (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
# Challenge 01 - Ingesting the Data and Creating the Database
<!-- REPLACE_ME (this section will be removed by the automation script) -->

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
<!-- If you are using this template manually, ensure the navigation links below are updated to link to the previous and next challenges relative to the current challenge. The "Home" link should always link to the homepage of the hack which is the README.md in the hack's parent directory. -->
[< Previous Challenge](./Challenge-X-1.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-X+1.md)
<!-- REPLACE_ME (this section will be removed by the automation script) -->

## Introduction

You've been tasked with creating some real time reporting using Power BI based on the data that is contantly being generated every second.

## Description

In this challenge, you will create an data ingestion stream from the Event Hub to Fabric and create a way to store that data inside of Fabric that is conducive to real time reporting. You will also need to make sure the data is being stored in the Fabric OneLake.

## Success Criteria

To complete this challenge successfully, you should be able to:
- Create a data ingestion method for the Event Hub into Fabric
- Create a database to store the Event Hub data
- Verify that data from the Event Hub is entering Fabric and being stored in the OneLake.

## Learning Resources

- [Realtime Analytics in Fabric Tutorial](https://learn.microsoft.com/en-us/fabric/real-time-analytics/tutorial-introduction)
- [Creating a KQL Database](https://learn.microsoft.com/en-us/fabric/real-time-analytics/create-database)
- [Get Data from Event Hubs into KQL](https://learn.microsoft.com/en-us/fabric/real-time-analytics/get-data-event-hub)


## Tips

- You may find it easier to create the database first, before creating the ingestion stream.
- You can query the database to see how many records it has in total, then query it again moments later to verify that there was an increase in records, since this application generates about seven records every second.
- A KQL database does not automatically store it's data in the Fabric OneLake. There is a setting you will need to change to do that.
