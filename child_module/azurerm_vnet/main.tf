resource "azurerm_virtual_network" "vnetwala" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = "East US"
  resource_group_name = var.rg_name
  }