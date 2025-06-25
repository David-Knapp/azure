# This is a Terraform configuration file that can be used to create a storage account in Azure

Directions:

1.  git clone for initial download or git pull to synchronize the latest changes
2.  modify the variables in the main.tf file
3.  terraform.exe init   
4.  terraform.exe plan -var resource_group_name=<"name of the resource group"> -var subscription_id=<"Azure subscription id"> -out storage_account.tfplan
5.  terraform.exe apply "storage_account.tfplan"
