output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}

output "vm_password" {
  description = "The randomly generated vm password"
  value       = random_password.vm_password.result
  sensitive   = true
}
