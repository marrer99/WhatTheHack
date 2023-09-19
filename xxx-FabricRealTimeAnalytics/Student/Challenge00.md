# Challenge 00 - Prerequisites - Ready, Set, GO!

<!-- REMOVE_ME ${navigationLine} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->
<!-- If you are using and editing this template manually, ensure the navigation link below is updated to link to next challenge relative to the current challenge. The "Home" link should always link to the homepage of the hack which is the README.md in the hack's parent directory. -->

**[Home](../README.md)** - [Next Challenge >](./Challenge-01.md)

<!-- REPLACE_ME (this section will be removed by the automation script) -->

## Introduction

<!-- REMOVE_ME Thank you for participating in the ${nameOfHackArg} What The Hack. Before you can hack, you will need to set up some prerequisites. (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

Thank you for participating in the Fabric real time analytics WTH. Before you can hack, you will need to set up some prerequisites.

<!-- REPLACE_ME (this section will be removed by the automation script) -->

## Common Prerequisites

<!-- If you are editing this template manually, be aware that these links are only designed to work if this Markdown file is in the /xxx-HackName/Student/ folder of your hack. -->

- [Azure Subscription](../../000-HowToHack/WTH-Common-Prerequisites.md#azure-subscription)
- [Managing Cloud Resources](../../000-HowToHack/WTH-Common-Prerequisites.md#managing-cloud-resources)
  - [Azure Portal](../../000-HowToHack/WTH-Common-Prerequisites.md#azure-portal)
  - [Azure CLI](../../000-HowToHack/WTH-Common-Prerequisites.md#azure-cli)
    - [Note for Windows Users](../../000-HowToHack/WTH-Common-Prerequisites.md#note-for-windows-users)
    - [Azure PowerShell CmdLets](../../000-HowToHack/WTH-Common-Prerequisites.md#azure-powershell-cmdlets)
  - [Azure Cloud Shell](../../000-HowToHack/WTH-Common-Prerequisites.md#azure-cloud-shell)
- [Visual Studio Code](../../000-HowToHack/WTH-Common-Prerequisites.md#visual-studio-code)
  - [VS Code plugin for ARM Templates](../../000-HowToHack/WTH-Common-Prerequisites.md#visual-studio-code-plugins-for-arm-templates)

## Description

Here are the innstructions for installing the arm template. This will create:

- Event Hub namespace and Event Hub (EH)
- Azure Container Instance (ACI)

The EH will get created first, then the ACI. The ACI will be started with a container from the Docker Hub "cameronkahrsdocker/fabricwthdatapumpv2" which will automatically stream event to the the EH created in the first step.

---
Steps:

1. Login to the Azure portal and open the CLI (Command Line Interface)
2. Upload the "fabricwth_armtemplate.json" and the "fabricwth_parameters.json" to the storage connected to the CLI.
3. Navigate to those files in the command line.
4. Change the  `fabricwth_parameters.json` parameters file to add a prefix to the EventHubsNamespace and the AzureContainerInstance name. They must be globally unique so make sure you don't have the same as another person. PREFIX MUST BE LOWERCASE! REMOVE THE '<>' SYMBOLS!
4. Run 
    - `az group create --name <resource-group-name> --location westus3`
    - You pick a name for the resource group.
5. Run 
    - `az deployment group create --resource-group <resource-group-name> --template-file "fabricwth_armtemplate.json" --parameters "fabricwth_parameters.json"`
6. You should now have a resource group in your azure subscription with the EH and ACI resources.

## Success Criteria

To complete this challenge successfully, you should be able to:

- Verify that the ARM template has deployed the following resources in Azure:
  - Event Hub Namespace
  - Event Hub (verify it is ingesting data from the container)
  - Azure Container Instance (verify that it is running the docker container and data is streaming out)
