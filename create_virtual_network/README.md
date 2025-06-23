# This is a Teffaform configuration file that can be used to create a virtual network in Azure

Directions:

1.  git clone
2.  terraform.exe init   
3.  terraform.exe plan -var resource_group_name=<name of the resource group where to put the virtual network> -var subscription_id=<Azure subscription ID> -out vnet.tfplan
4.  terraform.exe apply "vnet.tfplan"
