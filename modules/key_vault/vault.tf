resource "azurerm_key_vault" "key_vault" {
  name                        = var.key_vault_name
  location                    = var.location
  resource_group_name          = var.rg_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
  purge_protection_enabled    = true
  soft_delete_retention_days  = 7
}

resource "random_password" "vmpassword" {
  length  = 16
  special = true
}

resource "azurerm_key_vault_secret" "vm_password" {
  name         = var.vmAdminPassword
  value        = random_password.vmpassword.result
  key_vault_id = azurerm_key_vault.key_vault.id
}
