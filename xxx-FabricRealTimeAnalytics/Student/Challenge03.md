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

- Have your Stock Table ready and available on the KQL database, including the transformations on Challenge 2

## Description

You've been tasked with creating some real time reporting using Power BI based on the data that is contantly being generated every second. In this challenge, you must bring in the data from the KQL database to PowerBI. You need to create visualizations that represent the incoming data, but you will also need to modify some settings to ensure that this is truly real-time reporting. 

## Success Criteria

To complete this challenge, verify that:
- You have a PowerBI report displaying the data from the Stock table.
- Your report page is auto-refreshing every second with the data your KQL DB is ingesting continiously. (Using a Count of Price card visual can help you check)

## Learning Resources
[Power BI realtime settings](https://learn.microsoft.com/en-us/power-bi/create-reports/desktop-automatic-page-refresh)

## Tips (step by step instructions)
These resources provide step by step instructions. Only use them if you have already attempted the challenge through you own exploring and trial and error. The above learning resource gives a brief explanation of the concept but does not provide the whole solution.

[Visualize Real Time data with PowerBI | Fabric](https://learn.microsoft.com/en-us/fabric/real-time-analytics/create-powerbi-report)

[Use data from a KQL Database with PowerBI | Fabric](https://learn.microsoft.com/en-us/fabric/real-time-analytics/power-bi-data-connector)


## Advanced Challenges (Optional)
