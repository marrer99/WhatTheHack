<!-- REMOVE_ME # Challenge ${suffixNumber} - <Title of Challenge> (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
# Challenge 03 - Create the Realtime Reporting
<!-- REPLACE_ME (this section will be removed by the automation script) -->

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
<!-- If you are using this template manually, ensure the navigation links below are updated to link to the previous and next challenges relative to the current challenge. The "Home" link should always link to the homepage of the hack which is the README.md in the hack's parent directory. -->
[< Previous Challenge](./Challenge02.md) - **[Home](../README.md)**
<!-- REPLACE_ME (this section will be removed by the automation script) -->


## Pre-requisites

- Stock Table in the KQLDB
- KQL Queryset with transformations 

## Description

You've been tasked with creating some real time reporting using Power BI based on the data that is contantly being generated every second. In this challenge, you must bring in the data from the KQL database/queryset to PowerBI. You need to create visualizations that represent the incoming data, but you will also need to modify some settings to ensure that this is truly real-time reporting. 

## Success Criteria

To complete this challenge, verify that:
- You have a PowerBI report displaying the data from the Stock table.
    - Line Graph showing the previous minute of data of each stocks price
- Your report page is auto-refreshing every second with the data your KQL DB is ingesting continiously.

## Learning Resources
- [Power BI Realtime Settings](https://learn.microsoft.com/en-us/power-bi/create-reports/desktop-automatic-page-refresh)
- [Creating a real-time dataset in the Fabric portal](https://learn.microsoft.com/en-us/fabric/real-time-analytics/create-powerbi-report)
- [Creating a real-time dataset in Power BI Dekstop](https://learn.microsoft.com/en-us/fabric/real-time-analytics/power-bi-data-connector)

## Tips
- Use a Card that has the count of the number of records to help ensure data is being contantly updated in the report.
- To get to the Fabric capacity settings you can go to the `Admin Portal` in Power BI and then on the far right click on `Fabric Capacity`. In there the `Automatic page refresh` setting should be under `Power BI Workloads`
<!-- far easier to do the creating the dataset in the portal than PBI Desktop, but that tip may be giving too much away -->

## Additional Challenges
- Get creative with the Power BI report! What kind of visuals can you create?