variable "rgs" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
}

variable "mynetwork" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = optional(list(string))
    dns_servers         = optional(list(string))
    ip_address_pool = optional(list(object({
      id                     = string
      number_of_ip_addresses = string
      }
    )))
    subnet = optional(list(object({
      name             = string
      address_prefixes = list(string)
      }
    )))
    }
  ))
}