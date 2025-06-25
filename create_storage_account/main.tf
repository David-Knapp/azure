# Generate a random 5 digit number to add to the end of the storage account name
resource "azurerm_integer" "storage_account_number" {
  min = 100000
  max = 999999
}

# Create the storage account
resource "azurerm_storage_account" "storage_account" {
  name = "${lower(var.storage_account_prefix)}${random_integer.storage_account_number.result}"
  resource_group_name = var.resource_group_name
  location = var.resource_group_location
  account_tier = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

# Create the container for the storage account

resource "azurerm_storage_container" "container" {
  name = ""container"
  storage_account_name = azurerm_storage_account.storage_account.name
}

