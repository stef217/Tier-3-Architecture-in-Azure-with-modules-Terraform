variable "vnet_name" {
  description = "Name of the Vnet"
  type        = string
}

variable "rg_name" {
  description = "Name of the Resource group"
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
variable "public_id" {
  description = "ID of the Network Interface"
}
variable "nsg_id" {
  description = "ID of the Network Security Group"
}
variable "vnetcidr" {}
variable "public_prefixes" {}
variable "private_prefixes" {}
