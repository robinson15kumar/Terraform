variable "my_rg_name" {}

resource "azurerm_resource_group" "my_rg1" {
    for_each = var.my_rg_name
    name     = each.value.name
    location = each.value.location
    tags     = each.value.tags
}