output "db_password" {
  description = "The randomly generated db password"
  value       = random_password.db_password.result
  sensitive   = true
}
