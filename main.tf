terraform {
  required_version = ">= 1.1.0"
}

module "azure" {
  source = "./terra/azure/centralus"
}

module "hello_world" {
  source = "./terra/hello_world"
}
