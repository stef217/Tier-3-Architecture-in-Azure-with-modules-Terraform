
module "networks" {
  source              = "./modules/networks"
  rg_name             = var.rg_name
  location            = var.location
  vnet_name           = var.vnet_name
  vnetcidr            = var.vnetcidr
  private_prefixes    = var.private_prefixes
  private_subnet_name = var.private_subnet_name
  public_prefixes     = var.public_prefixes
  public_subnet_name  = var.public_subnet_name
}

module "security" {
  source   = "./modules/security"
  rg_name  = var.rg_name
  location = var.location
  nsg_name = var.nsg_name
}

module "compute" {
  source       = "./modules/compute"
  location     = var.location
  rg_name      = var.rg_name
  vm_name      = var.vm_name
  nic_name     = var.nic_name
  nic_id       = var.nic_id
  nsg_id       = module.security.nsg_id
  vm_subnet_id = module.networks.public_id
  #  key_vault_id            = module.security.key_vault_id
  #  vm_password_secret_name = module.security.vm_password_secret_name
}
