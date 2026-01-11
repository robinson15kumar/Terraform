terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.50.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "2af63522-f4cf-47c6-a535-08dbd21adcad"
}