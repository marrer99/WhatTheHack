<!-- REMOVE_ME # Challenge ${suffixNumber} - <Title of Challenge> - Coach's Guide  (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

# Challenge 07 - Create the Analytics Reporting

<!-- REPLACE_ME (this section will be removed by the automation script) -->

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

[< Previous Solution](./Solution06.md) - **[Home](../README.md)**

<!-- REPLACE_ME (this section will be removed by the automation script) -->

## Setup Steps

2. Create PBI report
   - Setup auto page refresh every 5 minutes

## Notes & Guidance

This challenge completes the hack by setting up a PowerBI report that shows the incoming data to the KQL database at real time. 

- Adjusting the page refresh settings (report):
   - Open the report from the workspace
   -  From the top navigation bar, select "Edit"
   -  On the second group of tabs, Visualizations, on the right side of the screen, click on the Page Format icon (paintbrush with sheet of paper)
   -  At the bottom of those options, open the Page refresh dropdown an enter your desired page refresh interval (5 minutes)
   -  Click on "show details" to check how often the report page is refreshing

- Create the graph
   - Create a line graph with the following settings:
      - Legend: Stock Symbol
      - X-axis: Timestamp
      - Y-axis: Max Stock Price
- Create a line graph with the following settings:
      - Legend: Stock Symbol
      - X-axis: Timestamp
      - Y-axis: Min Stock Price      
- Add two slicers to the canvas
    - Market
    - Stock Symbol


