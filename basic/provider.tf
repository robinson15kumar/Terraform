terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  
  }
  #   backend "azurerm" {
  #   resource_group_name  = "b17myterraform"
  #   storage_account_name = "b17robstorageaccount"
  #   container_name       = "mycontainer"
  #   key                  = "terraform.tfstate"
  # }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "0fb3b41d-23bc-47d2-861e-1582e1789bd5"
}