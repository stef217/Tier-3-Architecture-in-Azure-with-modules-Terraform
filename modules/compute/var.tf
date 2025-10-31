variable "rg_name" {
  description = "Name of the Resource group"
  type        = string
}

variable "location" {
  description = "Location of the Vnet"
  type        = string
}

variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}


variable "nic_name" {
  description = "Name of the NIC"
  type        = string
}

variable "nic_id" {
  description = "ID of the Network Interface"
}
variable "vm_subnet_id" {
  description = "ID of the Network Interface"
}

#variable "key_vault_id" {}
#variable "vm_password_secret_name" {}
