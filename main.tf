terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

module "azure" {
  source = "./terra/azure/centralus"

}

module "hello_world" {
  source = "./terra/hello_world"
}
