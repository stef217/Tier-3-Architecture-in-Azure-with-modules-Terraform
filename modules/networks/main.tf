resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.vnetcidr
}

resource "azurerm_subnet" "private" {
  name                 = var.private_subnet_name
  address_prefixes     = var.private_prefixes
  resource_group_name  = azurerm_virtual_network.vnet.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
}

resource "azurerm_subnet" "public" {
  name                 = var.public_subnet_name
  address_prefixes     = var.public_prefixes
  resource_group_name  = azurerm_virtual_network.vnet.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
}

resource "azurerm_subnet_network_security_group_association" "nsg_link" {
  subnet_id                 = var.public_id
  network_security_group_id = var.nsg_id
}

