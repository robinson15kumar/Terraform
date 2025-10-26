resource "azurerm_resource_group" "rg1" {
  name     = "rg-robin"
  location = "Central India"
}

resource "azurerm_virtual_network" "vnet1" {
  name                = "rob-virtual-network1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = ["10.0.0.0/16"]

  dynamic "subnet" {
    for_each = var.mysubnet
    content {
      name             = subnet.key
      address_prefixes = subnet.value
    }
  }
}

resource "azurerm_network_security_group" "nsg1" {
  name                = "RobTestSecurityGroup01"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  dynamic "security_rule" {
    for_each = var.mysecurityrule
    content {
      name                       = security_rule.value.name
      priority                   = security_rule.value.priority
      direction                  = security_rule.value.direction
      access                     = security_rule.value.access
      protocol                   = security_rule.value.protocol
      source_port_range          = security_rule.value.source_port_range
      destination_port_range     = security_rule.value.destination_port_range
      source_address_prefix      = security_rule.value.source_address_prefix
      destination_address_prefix = security_rule.value.destination_address_prefix
    }
  }
}