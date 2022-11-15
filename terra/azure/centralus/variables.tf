
variable "az_resource_group_name" {
  type    = string
  default = "JCGuerrero-terraform-examples-module"
}

# australiacentral, australiacentral2, australiaeast, australiasoutheast
# brazilsouth, brazilsoutheast, brazilus
# canadacentral, canadaeast
# centralindia, jioindiacentral, jioindiawest, southindia, westindia
# centralus, centraluseuap, eastus, eastus2, northcentralus, southcentralus, westcentralus, westus,westus2,westus3
# eastus2euap
# eastasia, southeastasia
# francecentral, francesouth
# germanynorth, germanywestcentral
# japaneast, japanwest
# koreacentral, koreasouth
# northeurope, westeurope
# norwayeast, norwaywest
# qatarcentral
# southafricanorth, southafricawest
# swedencentral, swedensouth
# switzerlandnorth, switzerlandwest
# uaecentral, uaenorth
# uksouth, ukwest
# austriaeast
# eastusslv
# israelcentral
# italynorth
# malaysiasouth
# mexicocentral
# polandcentral
# spaincentral
# taiwannorth, taiwannorthwest
variable "az_region" {
  type    = string
  default = "centralus"
}
