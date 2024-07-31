#!/bin/zsh

# list all available locations.
az account list-locations -o table

# list all resource groups available
az group list -o table

# create storage account in the default location
az storage account create -n mdtest4321 -g DataAcademy2024

# create storage account in the uksouth region
az storage account create -n mdtest4321 -g DataAcademy2024 -l uksouth

# same as the above with the full parameters names
az storage account create --name mdtest4321 --resource-group DataAcademy2024 --location uksouth

# list all accounts
az storage account list -g DataAcademy2024 -o table

# show storage account metadata
az storage account show --resource-group '<resource-group-name>' --name '<storage-account-name>'
az storage account show --resource-group '<resource-group-name>' --name '<storage-account-name>' --query id

# delete the mdtest4321 account
az storage account delete -g DataAcademy2024 -n mdtest4321

# show the connection string to the account
az storage account show-connection-string -n mdtest4321 -g DataAcademy2024
az storage account show-connection-string --query connectionString -n mdtest4321 -g DataAcademy2024
az storage account show-connection-string --query connectionString --name mdtest4321 --resource-group DataAcademy2024

# list all the containers for an account
az storage container list --account-name mdtest4321 --connection-string "<connectionString>" -o table

# delete a container
az storage container delete --name blobcontainer --account-name mdtest4321 --connection-string "<connectionString>"