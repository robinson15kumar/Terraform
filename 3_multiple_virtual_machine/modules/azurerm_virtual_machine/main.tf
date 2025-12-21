
resource "azurerm_network_interface" "main" {
  name                = var.nic-name
  location            = var.rg-location
  resource_group_name = var.rg-name

  ip_configuration {
    name                          = var.ip-config-name
    subnet_id                     = data.azurerm_subnet.datasubnet.id   # var.my-subnet-id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.mypip.id      
  }
}

resource "azurerm_virtual_machine" "main" {
  name                  = var.my-vm-name
  location              = var.rg-location
  resource_group_name   = var.rg-name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = "Standard_B1s"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = var.my_computer_name
    admin_username = var.my_admin_username
    admin_password = var.my_admin_password 
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}