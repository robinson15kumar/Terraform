#### subnet data
data "azurerm_subnet" "datasubnet" {
  name                 = var.subnet-name
  virtual_network_name = var.vnet-name
  resource_group_name  = var.rg-name
}

output "subnet_id" {
  value = data.azurerm_subnet.datasubnet.id
}

#### public ip data
data "azurerm_public_ip" "mypip" {
  name                = var.pip_name
  resource_group_name = var.rg-name
}

output "public_ip_address_id" {
  value = data.azurerm_public_ip.mypip.id
}