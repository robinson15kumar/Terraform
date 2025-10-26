mysubnet = {
  "subnet1" = ["10.0.1.0/24"]
  "subnet2" = ["10.0.2.0/24"]
  "subnet3" = ["10.0.3.0/24"]
}

mysecurityrule = {
  "rule1" = {
    name                       = "mynsg01"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  "rule2" = {
    name                       = "mynsg02"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Udp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}