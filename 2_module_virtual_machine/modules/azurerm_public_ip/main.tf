
resource "azurerm_public_ip" "example" {
  name                = var.pip_name   #"frontend_pip_rob" / "backend_pip_rob"
  resource_group_name = var.rg-name
  location            = var.rg-location
  allocation_method   = "Static"
}