# - This is a sample code to demonstrate the use of for_each in terraform.
# - It creates multiple resource groups in Azure using the azurerm_resource_group resource.

# resource "azurerm_resource_group" "my_rg1" {
#     for_each = ["dev-rob", "qa-rob", "pre-rob", "prod-rob"]
#     name     = "my_rg"
#     location = "West US"
# }

# - Block  line 4 to 8 error dega 
# - Error : The given "for_each" argument value is unsuitable: the "for_each" argument must be a map, or set of strings,
# -        and you have provided a value of type tuple. Kyuki for_each me list ya tuple nahi le sakte.
# -        for_each me hamesha map ya set of strings hi le sakte hai.
# - Solution :  list/tuple ko hame set/map me convert karna hoga , uske liye toset or tomap function ka use karna hoga.

# resource "azurerm_resource_group" "my_rg1" {
#     for_each = toset(["dev-rob", "qa-rob", "pre-rob", "prod-rob"])
#     name     = "my_rg"
#     location = "West US"
# }

# - Block line 18 me humne toset function ka use kiya hai, jo list ko set me convert karta hai.
# - isse yaha pe RG k 4 instances banenge par sab RG ka naam same hoga "my_rg". 
# - Error :  resource group ka naam alag alag hona chahiye.
# - solution : Hume each.key ya each.value ka use karna hoga, jo ki for_each me jo bhi value hai, wahi naam lega.

# resource "azurerm_resource_group" "my_rg1" {
#     for_each = toset(["dev-rob", "qa-rob", "pre-rob", "prod-rob"])
#     name     = each.value
#     location = "West US"
# }

# - ab hum set ko alag varibale me declare kar k try karte hai
# - hum set k values ko terraform.tfvars me daal dete hai
# - terraform.tfvars se pahle aapko variable.tf bhi banana padega 

resource "azurerm_resource_group" "my_rg1" {
    for_each = toset(var.my_rg_name)
    # for_each = toset(["dev-rob", "qa-rob", "pre-rob", "prod-rob"])
    name     = each.key
    location = "West US"
}