# This is a Terraform configuration file that can be used to create a storage account in Azure
Directions:

git clone for initial download or git pull to synchronize the latest changes
modify the variables in the main.tf file
terraform.exe init
terraform.exe plan -var resource_group_name=<"name of the resource group"> -var subscription_id=<"Azure subscription id"> -out storage_account.tfplan
terraform.exe apply "storage_account.tfplan"
