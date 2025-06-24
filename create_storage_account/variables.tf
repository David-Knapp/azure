variable "resource_group_location" {
  type        = string
  default     = "westus2"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "resource_group_example"
  description = "Name of the resource group."
}

variable "subscription_id" {
  type = string
}

variable "storage_account_tier" {
  type = string
  default = "Standard"
}

variable "storage_account_replication_type" {
  type = string
  default = "LRS"
}

