resource "azurerm_resource_group" "my_rg1" {
  # count = 4
  count    = length(var.my_rg_name) 
  # name     = "dev-rob-rg-${count.index}"
  name     = var.my_rg_name[count.index]
  location = "West US"
}