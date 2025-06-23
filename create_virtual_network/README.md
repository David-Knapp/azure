# This is a Terraform configuration file that can be used to create a virtual network in Azure

Directions:

1.  git clone
2.  terraform.exe init   
3.  terraform.exe plan -var resource_group_name=<"name of the resource group"> -var subscription_id=<"Azure subscription id"> -out rg.tfplan
4.  terraform.exe apply "rg.tfplan"
