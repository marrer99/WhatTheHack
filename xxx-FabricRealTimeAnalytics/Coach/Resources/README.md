Instructions for installing the arm template. This will create:

- Event Hub namespace and Event Hub (EH)
- Azure Container Instance (ACI)

The EH will get created first, then the ACI. The ACI will be started with a container from the Docker Hub "cameronkahrsdocker/fabricwthdatapumpv2" which will automatically stream event to the the EH created in the first step.

---
Steps:

1. Login to the Azure portal and open the CLI (Command Line Interface)
2. Upload the "fabricwth_armtemplate.json" and the "fabricwth_parameters.json" to the storage connected to the CLI.
3. Navigate to those files in the command line.
4. Change the  `fabricwth_parameters.json` parameters file to add a prefix to the EventHubsNamespace and the AzureContainerInstance name. They must be globally unique so make sure you don't have the same as another person. PREFIX MUST BE LOWERCASE! REMOVE THE <> SYMBOLS!
4. Run 
    - `az group create --name <resource-group-name> --location westus3`
    - You pick a name for the resource group.
5. Run 
    - `az deployment group create --resource-group <resource-group-name> --template-file "fabricwth_armtemplate.json" --parameters "fabricwth_parameters.json"`
6. You should now have a resource group in your azure subscription with the EH and ACI resources.
---
Error Handling:

If for some reason the docker container no longer exists, you can either:

1. Just run the " main.py"python script locally on your machine and input the EH connection string and EH name to get the data to stream.
2. Recreate the docker container with the files in the "Docker Files" folder and push it to Docker Hub. Change the ARM template to refrence the new docker hub link.