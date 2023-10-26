# Challenge 05 - Creating and populating Dimensions Tables

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
<!-- If you are using and editing this template manually, ensure the navigation link below is updated to link to next challenge relative to the current challenge. The "Home" link should always link to the homepage of the hack which is the README.md in the hack's parent directory. -->

**[Home](../README.md)** - [Next Solution >](./Solution06.md)

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
1. Run :  <../Resources/Warehouse solution files/ETL.sp_Dim_Date_Load.sql>
2. Exec ETL.sp_Dim_Date_Load 
    Parameters: 
        @BeginDate: Previous month first date
        @EndDate: Next month last date
3. Run: <../Resources/Warehouse solution files/ETL.sp_Dim_Symbol_Load.sql>
3. Add a stored procedure activity
    name: Populate Symbols Dimension
    settings:
      stored procedure name: ETL.sp_Dim_Symbol_Load
4. Connect for each activity on success output to the newly added stored procedure activity


---


## Success Criteria

To complete this challenge successfully, you should be able to:

- Verify table dbo.dim_Date is populated
- Verify table dbo.dim_Symbol is populated