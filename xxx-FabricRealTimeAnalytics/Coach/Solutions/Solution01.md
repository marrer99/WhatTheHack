<!-- REMOVE_ME # Challenge ${suffixNumber} - <Title of Challenge> - Coach's Guide  (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

# Challenge 01 - Ingesting the Data and Creating the Database - Coach's Guide

<!-- REPLACE_ME (this section will be removed by the automation script) -->

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

[< Previous Solution](./Solution-01.md) - **[Home](./README.md)** - [Next Solution >](./Solution-03.md)

<!-- REPLACE_ME (this section will be removed by the automation script) -->

## Notes & Guidance

Unfortunatley Fabric does not allow template automation for the items inside of it, so you will have to follow along with the students to create the example from scratch as they are doing.

The Learning Resource below have a useful tutorial to get you going if the steps laid out here are not enough.

1. Enter into Fabric and create a new workspace.
2. In the workspace create a new KQLDB.
3. Make sure the `OneLake Folder` setting it turned on. This will write the KQLDB data out to the OneLake in parquet format.
4. CLick get data and then Event Hubs.
5. Follow the instructions to connect to the Event Hub created in the setup.
6. Run a query on the database to verify the count of records is increasing.

## Learning Resources

- [Realtime Analytics in Fabric Tutorial](https://learn.microsoft.com/en-us/fabric/real-time-analytics/tutorial-introduction)
- [Creating a KQL Database](https://learn.microsoft.com/en-us/fabric/real-time-analytics/create-database)
- [Get Data from Event Hubs into KQL](https://learn.microsoft.com/en-us/fabric/real-time-analytics/get-data-event-hub)