terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "d6b5caa4-f6c2-4013-a822-74a06faa55c0"
}