# Create the resource group
resource "azurerm_resource_group" "create_resource_group" {
  location = var.resource_group_location
  name     = var.resource_group_name
}
