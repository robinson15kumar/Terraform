resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet-name
  resource_group_name  = var.rg-name
  virtual_network_name = var.vnet-name
  address_prefixes     = var.address_prefixes  # ["10.0.1.0/24"]

}

resource "azurerm_network_security_group" "mynsg" {
  name                = var.nsg-name
  location            = var.rg-location
  resource_group_name = var.rg-name

  security_rule {
    name                       = "inboundvm22"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
    security_rule {
    name                       = "inboundvm8080"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "8080"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "nsgnicassoc1" {
  subnet_id                 = azurerm_subnet.subnet1.id
  network_security_group_id = azurerm_network_security_group.mynsg.id
}