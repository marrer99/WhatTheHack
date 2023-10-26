# Challenge 06 - Create a fact table and the store procedures to populate it

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
<!-- If you are using and editing this template manually, ensure the navigation link below is updated to link to next challenge relative to the current challenge. The "Home" link should always link to the homepage of the hack which is the README.md in the hack's parent directory. -->

**[Home](../README.md)** - [Next Solution >](./Solution07.md)

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
1. Run: <../Resources/Warehouse solution files/Create Views.sql>

2. Run : <../Resources/Warehouse solution files/ETL.sp_Fact_Stocks_Daily_Prices_Load.sql> 
    
3. Add a stored procedure activity
    name: Populate Fact Stocks Prices
    settings:
      stored procedure name: ETL.sp_Fact_Stocks_Daily_Prices_Load

4. Connect Populate Symbols Dimension on success output to the newly added stored procedure activity

5. Open Warehouse and navigate to Model
    - Hide all non business related attributes
    - Hide extra tables, views, keeping visible essentials attributes in the two dimensions and the fact table
    - Create relationships from the fact table to the dimensions

## Success Criteria

To complete this challenge successfully, you should be able to:

- Verify table dbo.Fact_Stocks_Daily_Prices is getting populated
- Verify pipeline successfully runs every 5 minutes 
- Verify only dimensions and the fact table are visible for reporting
- Verify 1-* relationships between dimensions and the fact table

