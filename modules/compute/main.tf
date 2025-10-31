#data "azurerm_key_vault_secret" "vm_password" {
# name         = azurerm_key_vault_secret.vm_password.name
#key_vault_id = azurerm_key_vault.key_vault_id }

resource "random_password" "vm_password" {
  length  = 20
  special = true
  lower   = true
  upper   = true
  numeric = true
}
resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.vm_subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm_name
  location            = var.location
  resource_group_name = var.rg_name
  size                = "Standard_B1s"
  admin_username      = "Administator"
  admin_password      = random_password.vm_password.result
  #admin_password = data.azurerm_key_vault_secret.vm_password.value
  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}



