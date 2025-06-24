# Generate a random 5 digit number to add to the end of the storage account name
resource "azurerm_integer" "storage_account_number" {
  min = 100000
  max = 999999
}

#

resource "azurerm_storage_account" "storage_account" {
  name = 
  resource_group_name = var.resource_group_name
  location = var.resource_group_location
  account_tier = var.storage_account_tier
  account_replication_type = var.storage_account_type
}

