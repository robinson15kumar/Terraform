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
    for_each = {
      "subnet1" = ["10.0.1.0/24"]
      "subnet2" = ["10.0.2.0/24"]
      "subnet3" = ["10.0.3.0/24"]
    }
    content {
      name             = subnet.key
      address_prefixes = subnet.value
    }
  }


  #   subnet {
  #     name             = "subnet1"
  #     address_prefixes = ["10.0.1.0/24"]
  #   }

  #   subnet {
  #     name             = "subnet2"
  #     address_prefixes = ["10.0.2.0/24"]
  #   }

  #   subnet {
  #     name             = "subnet3"
  #     address_prefixes = ["10.0.3.0/24"]
  #   }
}