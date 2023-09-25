<!-- REMOVE_ME # Challenge ${suffixNumber} - <Title of Challenge> - Coach's Guide  (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

# Challenge 03 - \Create the Realtime Reporting - Coach's Guide

<!-- REPLACE_ME (this section will be removed by the automation script) -->

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

[< Previous Solution](./Solution-01.md) - **[Home](./README.md)** - [Next Solution >](./Solution-03.md)

<!-- REPLACE_ME (this section will be removed by the automation script) -->

## Notes & Guidance

This challenge completes the hack by setting up a PowerBI report that shows the incoming data to the KQL database at real time. 

- Creating the PowerBI report: The easiest way to do so is from the KQL database:
   -  Within the left "Data tree" menu of the KQL Database, navigate to Tables -> Stocks (or the name of the table at the time of ingestion)
   -  On the "Table" menu in the ribbon, select "Build PowerBI Report"
   -  The report can be created in the following pop-up, or edited in full screen after being created. The one requirement, before exiting out of this pop-up, is clicking on the top right "File" dropdown menu and selecting "Save". The student should select an adequate visualization that conveys helpful information about the data, but there is no "right answer" to how the report should look.
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

