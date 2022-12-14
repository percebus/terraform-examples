terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 0.12.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resourceGroup" {
  name     = var.az_resource_group_name
  location = var.az_region
}


output "az_region" {
  value = var.az_region
}

output "az_resource_group" {
  value = var.az_resource_group_name
}
