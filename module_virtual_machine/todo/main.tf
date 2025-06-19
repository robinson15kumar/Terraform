module "rg" {
  source      = "../modules/azurerm_resource_group"
  rg-name     = "robinson-todo"
  rg-location = "Central India"
}

module "front-pip" {
  source      = "../modules/azurerm_public_ip"
  depends_on  = [module.rg]
  pip_name    = "frontend_pip_rob"
  rg-location = "Central India"
  rg-name     = "robinson-todo"
}

module "vnet" {
  source      = "../modules/azurerm_virtual_network"
  depends_on  = [module.rg]
  vnet-name   = "myvnet-rob"
  rg-location = "Central India"
  rg-name     = "robinson-todo"
}

module "front-subnet" {
  source           = "../modules/azurerm_virtual_subnet"
  depends_on       = [module.vnet]
  subnet-name      = "front-subnet-rob"
  rg-name          = "robinson-todo"
  rg-location      = "Central India"
  nsg-name         = "my-rob-nsg"
  address_prefixes = ["10.0.1.0/24"]
  vnet-name        = "myvnet-rob"
}

module "frontend-vm" {
  depends_on     = [module.front-subnet]
  source         = "../modules/azurerm_virtual_machine"
  nic-name       = "rob-front-nic"
  rg-location    = "Central India"
  rg-name        = "robinson-todo"
  my-vm-name     = "rob-frontend-vm"
  ip-config-name = "testconfiguration1"
  vnet-name      = "myvnet-rob"
  # my-subnet-id      = "/subscriptions/<subs_id>/resourceGroups/robinson-todo/providers/Microsoft.Network/virtualNetworks/myvnet-rob/subnets/front-subnet-rob"
  subnet-name = "front-subnet-rob"
  # public_ip_address_id = "/subscriptions/<subs_id>/resourceGroups/robinson-todo/providers/Microsoft.Network/publicIPAddresses/frontend_pip_rob"
  pip_name          = "frontend_pip_rob"
  nsg-name          = "my-rob-nsg"
  my_computer_name  = "front-hostname"
  my_admin_username = "testadmin"
  my_admin_password = "Password1234!"
}