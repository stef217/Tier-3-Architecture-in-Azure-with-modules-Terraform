<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.43.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_compute"></a> [compute](#module\_compute) | ./modules/compute | n/a |
| <a name="module_database"></a> [database](#module\_database) | ./modules/database | n/a |
| <a name="module_networks"></a> [networks](#module\_networks) | ./modules/networks | n/a |
| <a name="module_security"></a> [security](#module\_security) | ./modules/security | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Location of the Vnet | `string` | n/a | yes |
| <a name="input_nic_id"></a> [nic\_id](#input\_nic\_id) | ID of the NIC | `string` | n/a | yes |
| <a name="input_nic_name"></a> [nic\_name](#input\_nic\_name) | Name of the NIC | `string` | n/a | yes |
| <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name) | Name of the Network Security Group | `string` | n/a | yes |
| <a name="input_primary_sql_server_name"></a> [primary\_sql\_server\_name](#input\_primary\_sql\_server\_name) | Specifies the name of the Azure SQL Server that will host the database. The name must be globally unique within Azure. | `string` | n/a | yes |
| <a name="input_private_prefixes"></a> [private\_prefixes](#input\_private\_prefixes) | n/a | `any` | n/a | yes |
| <a name="input_private_subnet_name"></a> [private\_subnet\_name](#input\_private\_subnet\_name) | Name of the subnet | `string` | n/a | yes |
| <a name="input_public_prefixes"></a> [public\_prefixes](#input\_public\_prefixes) | n/a | `any` | n/a | yes |
| <a name="input_public_subnet_name"></a> [public\_subnet\_name](#input\_public\_subnet\_name) | Name of the subnet | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Name of the Resource group | `string` | n/a | yes |
| <a name="input_sql_admin_username"></a> [sql\_admin\_username](#input\_sql\_admin\_username) | The administrator login name for the Azure SQL Server. This username will be used to connect to the server. | `string` | n/a | yes |
| <a name="input_sql_database_name"></a> [sql\_database\_name](#input\_sql\_database\_name) | Specifies the name of the Azure SQL Database to be created within the SQL Server. | `string` | n/a | yes |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | Name of the VM | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Name of the Vnet | `string` | n/a | yes |
| <a name="input_vnetcidr"></a> [vnetcidr](#input\_vnetcidr) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_password"></a> [db\_password](#output\_db\_password) | The randomly generated database password from the database module |
| <a name="output_vm_password"></a> [vm\_password](#output\_vm\_password) | The randomly generated vm password from the compute module |
<!-- END_TF_DOCS -->