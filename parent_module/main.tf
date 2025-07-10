module "rgpd" {
  source = "../child_module/azurerm_resource_grp"
  rg_name = "pdwala6-rg"
  }

  module "vnetpd" {
    depends_on = [ module.rgpd ]
    source = "../child_module/azurerm_virtual_network"
    vnet_name    = "pdwala-vnet"
    address_space = ["10.0.0.0/16"]
    rg_name      = module.rgpd.rg_name
  }

    module "subnetpd" {
    source = "../child_module/azurerm_subnet"
    subnet_name = "subnetpdwala"
    rg_name = module.rgpd.rg_name
    vnet_name = "pdwala-vnet"
    address_prefixes = ["10.0.0.0/16"]
  }