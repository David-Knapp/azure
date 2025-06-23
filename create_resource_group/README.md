# This is a Terraform configuration file that can be used to create a resource group in Azure

Directions:

1.  git clone for initial download or git pull to synchronize the latest changes
2.  modify the variables in the variables.tf file
3.  terraform.exe init
4.  terraform.exe plan -var resource_group_name=<"name of the resource group"> -var subscription_id=<"Azure subscription id"> -out rg.tfplan
5.  terraform.exe apply "rg.tfplan"
