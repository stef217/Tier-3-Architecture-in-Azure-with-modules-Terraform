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

variable "primary_sql_server_name" {
  description = "Specifies the name of the Azure SQL Server that will host the database. The name must be globally unique within Azure."
  type        = string
}

variable "sql_database_name" {
  description = "Specifies the name of the Azure SQL Database to be created within the SQL Server."
  type        = string
}

variable "sql_admin_username" {
  description = "The administrator login name for the Azure SQL Server. This username will be used to connect to the server."
  type        = string
}
