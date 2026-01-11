
resource "azurerm_virtual_network" "network1" {
  for_each =  var.mynetwork
    name                = each.value.name
    location            = each.value.location
    resource_group_name = each.value.resource_group_name
    address_space       = each.value.address_space      #  ["10.0.0.0/16"]
    dns_servers         = each.value.dns_servers        #  ["10.0.0.4", "10.0.0.5"]

    dynamic "ip_address_pool" {
      for_each = each.value.ip_address_pool == null ? [] : each.value.ip_address_pool
      content   {
        id                     = ip_address_pool.value.id
        number_of_ip_addresses = ip_address_pool.value.number_of_ip_addresses
      }
    }

    dynamic "subnet" {
      for_each = each.value.subnet == null ? [] : each.value.subnet
      content   {
        name             = subnet.value.name
        address_prefixes = subnet.value.address_prefixes
      }
    }
}