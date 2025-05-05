terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.24"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "247d5ce7-c0a1-4b83-8d9c-30b55c958e6c"
}

# Priority 1 = Hardcoded values in main.tf file.
# Priority 2 = -var and -var-file are used to pass values in variables at 'manual.tfvars'. # terraform apply -var-file = "manual.tfvars"  
# Priority 3 = *.auto.tfvars files are automatically loaded by Terraform.
# Priority 4 = terraform.tfvars files are automatically loaded by Terraform.
# Priority 5 =environment variables 
# Priority 6 = default values in variables.tf file

resource "azurerm_resource_group" "rg9" {
  name     = var.my_rg1
  location = "West US"
}
 resource "azurerm_storage_account" "sa9" {
  name                     = var.my_store_acc1
  resource_group_name      = azurerm_resource_group.rg9.name
  location                 = azurerm_resource_group.rg9.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
