terraform {
  required_version = ">= 0.12.0"
}


module "hello_world" {
  source         = "./terra/hello_world"
  output_message = var.output_message
}

output "message" {
  value = var.output_message
}


# FIXME
# module "azure" {
#   source = "./terra/azure/centralus"
#   az_region = var.az_region
#   az_resource_group_name = var.az_resource_group_name
# }

output "az_region" {
  value = var.az_region
}

output "az_resource_group" {
  value = var.az_resource_group_name
}
