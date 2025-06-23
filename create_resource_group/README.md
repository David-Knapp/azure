# This is a Teffaform configuration file that can be used to create a resource group in Azure

Directions:

1.  git clone for initial download or git pull to synchronize the latest changes
2.  terraform.exe init
3.  terraform.exe plan -var resource_group_name=<"name of the resource group"> -var subscription_id=<"Azure subscription id"> -out vnet.tfplan
4.  terraform.exe apply "vnet.tfplan"
