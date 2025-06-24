# Create a resource group using the generated random name
resource "azurerm_resource_group" "create_resource_group" {
  location = var.resource_group_location
  name     = var.resource_group_name
}

