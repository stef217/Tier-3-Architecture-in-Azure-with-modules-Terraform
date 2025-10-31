variable "rg_name" {
  description = "Name of the Resource group"
  type        = string
}

variable "location" {
  description = "Location of the Vnet"
  type        = string
}
variable "key_vault_name" {
  description = "Name of the Azure key vault"
  type        = string
}

variable "vmAdminPassword" {
  description = "Name of the vm Admin password"
  type        = string
}
