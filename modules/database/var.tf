variable "resource_group_name" {
  description = "The name of the existing Azure Resource Group where the SQL resources will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region where the SQL Server and database will be created (e.g., 'East US', 'West Europe')."
  type        = string
}

variable "primary_sql_server_name" {
  description = "Specifies the name of the Azure SQL Server that will host the database. The name must be globally unique within Azure."
  type        = string
}

variable "sql_database_name" {
  description = "Specifies the name of the Azure SQL Database to be created within the SQL Server."
  type        = string
}

variable "sql_server_version" {
  description = "The version of the Azure SQL Server to use. Azure currently supports only version '12.0'."
  type        = string
  default     = "12.0"

  validation {
    condition     = var.sql_server_version == "12.0"
    error_message = "Only version '12.0' is supported for Azure SQL logical servers."
  }
}

variable "sql_admin_username" {
  description = "The administrator login name for the Azure SQL Server. This username will be used to connect to the server."
  type        = string
}
