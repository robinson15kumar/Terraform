terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "72067257-51d9-44f1-a8c6-1e64e7c3b6f9"
}