# Variables

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
  default = "westus2"
}

variable "vnet_cidr_range" {
  type = list(string)
  default = "10.100.0.0/16"
}

variable "subnet_prefixes" {
  type = list(string)
  default = ["10.100.1.0/24", "10.100.2.0/24"]
}

variable "subnet_names" {
  type = list(string)
  default = ["subnet1", "subnet2"]
}

# Providers

provider "azurerm" {
}

# Resources

module "vnet-main" {
  source = "Azure/vnet/azurerm"
  resource_group_name = var.resource_group_name
  vnet_location = var.location
  vnet_name = var.resource_group_name
  address_space = var.vnet_cidr_range
  subnet_prefixes = var.subnet_prefixes
  subnet_names = var.subnet_names
  nsg_ids = {}

  tags = {
    environment = "development"
    costcenter = "it"
    }
}

# Outputs

output "vnet_id" {
  value =  module.vnet-main.vnet_id
}
