terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  
  }
    backend "azurerm" {
     resource_group_name  = "b17myterraform"
     storage_account_name = "b17robstorageaccount"
     container_name       = "mycontainer"
     key                  = "terraform.tfstate"
   }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "4666927b-089e-4cfc-8592-146c2e04657e"
}
