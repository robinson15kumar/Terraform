terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "e939c0ee-ab91-49f3-b854-6a4cab5b9219"
}