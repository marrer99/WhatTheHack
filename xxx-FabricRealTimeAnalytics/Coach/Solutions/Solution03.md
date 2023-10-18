<!-- REMOVE_ME # Challenge ${suffixNumber} - <Title of Challenge> - Coach's Guide  (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

# Challenge 03 - Create the Realtime Reporting - Coach's Guide

<!-- REPLACE_ME (this section will be removed by the automation script) -->

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

[< Previous Solution](./Solution02.md) - **[Home](./Coach/README.md)**

<!-- REPLACE_ME (this section will be removed by the automation script) -->

## Setup Steps

1. Change Admin settings to allow 1 second page refresh
   - Capacity settings
   - PBI Workloads
2. Create PBI report
   - Setup auto page refresh

## Notes & Guidance

This challenge completes the hack by setting up a PowerBI report that shows the incoming data to the KQL database at real time. 

- Creating the PowerBI report: The easiest way to do so is from the KQL queryset:
   -  Navigate to the KQL Queryset made in the previous challenge
   -  On the `KQL Queryset` menu in the ribbon, select `Build Power BI Report`
   -  The report can be saved in the following pop-up, or edited in full screen after being saved. The one requirement, before exiting out of this pop-up, is clicking on the top right "File" dropdown menu and selecting "Save". Student should create the required visuals as per the challenge.
   -  Give the report a name and place it in workspace (recommended to be the same one that already contains the KQL database)
 
- Adjusting the page refresh settings (admin):
   - On the right hand side of Fabric's top navigation bar, select the settings icon.
   - Navigate to Admin portal -> Capacity settings -> Trial/Fabric Capacity (if the student has purchased a Fabric capacity it will be in the second option, if it is a free trial it will be on the first one)
   - Click on the name of the capacity in use and NOT on the "Actions" settings icon
   - From the PowerBI Workloads menu in the following screen, turn on Automatic Page Refresh and set a Minimum Refresh Interval of 1 second.
 
- Adjusting the page refresh settings (report):
   - Open the report from the workspace
   -  From the top navigation bar, select "Edit"
   -  On the second group of tabs, Visualizations, on the right side of the screen, click on the Page Format icon (paintbrush with sheet of paper)
   -  At the bottom of those options, open the Page refresh dropdown an enter your desired page refresh interval (1 second)
   -  Click on "show details" to check how often the report page is refreshing

- Create the graph
   - Create a line graph with the following settings:
      - Legend: Stock Symbol
      - X-axis: Timestamp
      - Y-axis: Stock Price
      - Edit the filters on the visual so it only displays the previous one minute of information

