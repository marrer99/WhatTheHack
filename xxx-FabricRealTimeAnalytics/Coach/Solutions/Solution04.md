# Challenge 04 - Create a Fabric Warehouse to ingest data from the KQL DB near real-time

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
<!-- If you are using and editing this template manually, ensure the navigation link below is updated to link to next challenge relative to the current challenge. The "Home" link should always link to the homepage of the hack which is the README.md in the hack's parent directory. -->

**[Home](../README.md)** - [Next Solution >](./Solution05.md)

<!-- REPLACE_ME (this section will be removed by the automation script) -->

## Introduction

<!-- REMOVE_ME Thank you for participating in the ${nameOfHackArg} What The Hack. Before you can hack, you will need to set up some prerequisites. (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

Thank you for participating in the Fabric real time analytics WTH. Before you can hack, you will need to set up some prerequisites.

<!-- REPLACE_ME (this section will be removed by the automation script) -->

## Common Prerequisites

<!-- If you are editing this template manually, be aware that these links are only designed to work if this Markdown file is in the /xxx-HackName/Student/ folder of your hack. -->

- [Azure Subscription](../../../000-HowToHack/WTH-Common-Prerequisites.md#azure-subscription)
- [Managing Cloud Resources](../../../000-HowToHack/WTH-Common-Prerequisites.md#managing-cloud-resources)
  - [Azure Portal](../../../000-HowToHack/WTH-Common-Prerequisites.md#azure-portal)
  - [Azure CLI](../../../000-HowToHack/WTH-Common-Prerequisites.md#azure-cli)
    - [Note for Windows Users](../../../000-HowToHack/WTH-Common-Prerequisites.md#note-for-windows-users)
    - [Azure PowerShell CmdLets](../../../000-HowToHack/WTH-Common-Prerequisites.md#azure-powershell-cmdlets)
  - [Azure Cloud Shell](../../../000-HowToHack/WTH-Common-Prerequisites.md#azure-cloud-shell)
- [Visual Studio Code](../../../000-HowToHack/WTH-Common-Prerequisites.md#visual-studio-code)
  - [VS Code plugin for ARM Templates](../../../000-HowToHack/WTH-Common-Prerequisites.md#visual-studio-code-plugins-for-arm-templates)

## Description

Steps 
- Create a Fabric Warehouse
- Run : <../Resources/Warehouse solution files/Create stocks and metadata tables.sql>
- Run : <../Resources/Warehouse solution files/ETL.sp_IngestSourceInfo_Update.sql>
- Create Data pipeline
  Note: All activities to get created in this pipeline are connected in serial order on sucess output , including the ones inside For Each activity

 1. Click on GetData/New Data Pipeline , name it : PL_Refresh_DWH

 2. Add a Lookup activity to the canvas, 
      name: Get WaterMark
      Settings: 
        Query:  SELECT * FROM [ETL].[IngestSourceInfo] WHERE IsActiveFlag = 'Y'
        First Row Only: UnCheck

 3. Add For Each Activity 
    Settings: 
      items: @activity('Get WaterMark').output.value
    3.1  Add a Copy Data activity      
      Source: KQL Database
      KQL Database: Choose Stockmarket_KQLDB created on previous challenges
      Query: 
        @concat('stocks 
          | where todatetime(timestamp) >= todatetime(''', item().WaterMark,''') 
          | order by timestamp asc
          | extend datestamp = substring(timestamp,0,10) 
          | project symbol, timestamp, price, datestamp 
          | take 500000 ' )
      Destination: 
        Table: StocksPrices
        Pre-copy script : Delete stg.StocksPrices
    3.2  Add a Lookup Activity
          Name: Get New WaterMark
          Settings:
            Query: @concat('Select Max(timestamp) as WaterMark from stg.', item().ObjectName)
    3.3 Add a store procedure activity
        name: Update WaterMark
        settings:
          stored procedure name: ETL.sp_IngestSourceInfo_Update
          Parameters:
            ObjectName: @item().ObjectName
            WaterMark: @activity('Get New WaterMark').output.firstRow.WaterMark

  4. Configure Pipeline Schedule to run every 5 minutes


## Success Criteria

- Verify table stg.StocksPrices is created and populated
- Verify table ETL.IngestSourceInfo is created and populate, also verify the WaterMark column is getting updated
- Verify pipeline successfully runs every 5 minutes 
