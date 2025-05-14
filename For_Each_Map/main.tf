# - This is a sample code to demonstrate the use of for_each with map in terraform.

# - Below is the example of for_each with MAP
# - If we want to create multiple resource groups at different locations, we must use MAP
# - we have declared a variable for map in the terraform.tfvars

# resource "azurerm_resource_group" "my_rg1" {
#   for_each = var.my_rg_name
#   name     = each.value.name
#   location = each.value.location
# }

resource "azurerm_resource_group" "my_rg1" {
  for_each = var.my_rg_name
  name     = each.value.name
  location = each.value.location
  tags     = each.value.tags
}