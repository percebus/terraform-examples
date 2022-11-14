
resource "azurerm_resource_group" "resourceGroup" {
  name     = var.az_resource_group_name
  location = var.az_region
}

output "az_region" {
  value = var.az_resource_group_name
}

output "az_resource_group" {
  value = var.az_resource_group_name
}
