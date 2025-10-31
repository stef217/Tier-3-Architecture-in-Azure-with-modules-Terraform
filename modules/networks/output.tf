
output "public_id" {
  value       = azurerm_subnet.public.id
  description = "Id of public in the network"
}

output "private_id" {
  value       = azurerm_subnet.private.id
  description = "Id of private in the network"
}
