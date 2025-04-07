# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "4.25.0"
#     }
#   }
# }

# provider "azurerm" {
#   # Configuration options
#   features {}
#   subscription_id = "845670d0-6329-46a7-97a7-fe36dbdce51b"
# }
# terraform {
#   backend "azurerm" {
#     resource_group_name  = "B17_Rob1"               # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
#     storage_account_name = "b17robinstore1"         # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
#     container_name       = "b17blob1"               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
#     key                  = "prod.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
#   }
# }

resource "azurerm_resource_group" "rg3" {
  name     = "B17_Rob3"
  location = "East US"
}