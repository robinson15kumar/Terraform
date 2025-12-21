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
  subscription_id = "98473d5b-c639-404e-9bf2-91559fe65ff8"
}