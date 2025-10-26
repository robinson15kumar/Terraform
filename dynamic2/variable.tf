variable "mysubnet" {
    description = "Map of subnet names to list of CIDR in address space"
    type = map(list(string))
    default = {
        "subnet1" = ["10.0.1.0/24"]
    }
 }

variable "mysecurityrule" {
  description = "Map of Network Security Group (NSG) rules"
  type = map(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))

  default = {
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
  }
}