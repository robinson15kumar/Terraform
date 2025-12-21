resource "azurerm_virtual_network" "main" {
  name                = var.vnet-name
  address_space       = ["10.0.0.0/16"]
  location            = var.rg-location
  resource_group_name = var.rg-name
}