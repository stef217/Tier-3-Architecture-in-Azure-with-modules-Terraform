output "vm_password" {
  description = "The randomly generated vm password from the compute module"
  value       = module.compute.vm_password
  sensitive   = true
}

output "db_password" {
  description = "The randomly generated database password from the database module"
  value       = module.database.db_password
  sensitive   = true
}
