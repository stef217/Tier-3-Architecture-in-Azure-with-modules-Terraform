resource "random_password" "db_password" {
  length  = 12
  special = true
  lower   = true
  upper   = true
  numeric = true
}

resource "azurerm_mssql_server" "primary" {
  name                         = var.primary_sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sql_server_version
  administrator_login          = var.sql_admin_username
  administrator_login_password = random_password.db_password.result
}

resource "azurerm_mssql_database" "db" {
  name      = var.sql_database_name
  server_id = azurerm_mssql_server.primary.id
  sku_name  = "S0"

}
