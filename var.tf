variable "rg_name" {
  description = "Name of the Resource group"
  type        = string
}
variable "vnet_name" {
  description = "Name of the Vnet"
  type        = string
}

variable "location" {
  description = "Location of the Vnet"
  type        = string
}

variable "private_subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "public_subnet_name" {
  description = "Name of the subnet"
  type        = string
}
variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "nic_name" {
  description = "Name of the NIC"
  type        = string
}

variable "nic_id" {
  description = "ID of the NIC"
  type        = string
}
variable "vm_name" {
  description = "Name of the VM"
  type        = string
}
variable "vnetcidr" {}
variable "public_prefixes" {}
variable "private_prefixes" {}
