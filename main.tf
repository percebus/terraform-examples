# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

# TODO
# resource "azurerm_resource_group" "rg" {
#   name     = var.az_resource_group_name
#   location = var.az_region
# }

output "message" {
  value = var.output_message
}
