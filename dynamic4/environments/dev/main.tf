
module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "network" {
  source    = "../../modules/azurerm_networking"
  mynetwork = var.mynetwork
}