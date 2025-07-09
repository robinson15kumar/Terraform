resource "azurerm_resource_group" "rg1" {
  name     = "b17myterraform"
  location = "Central India"
}

resource "azurerm_storage_account" "example" {
  name                     = "b17robstorageaccount"
  resource_group_name      =  "b17myterraform"
  location                 =  azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  depends_on = [ azurerm_resource_group.rg1 ]
}

resource "azurerm_resource_group" "rg3" {
  name     = "b17myterraform3"
  location = "Central India"
}
