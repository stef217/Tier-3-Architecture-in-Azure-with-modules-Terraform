output "generated_db_password" {
  description = "The randomly generated password"
  value       = random_password.db_password.result
  sensitive   = true
}
