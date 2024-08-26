output "registry_id" {
  description = "The ID of this Container Registry."
  value       = azurerm_container_registry.this.id
}

output "registry_name" {
  description = "The name of this Container Registry."
  value       = azurerm_container_registry.this.name
}

output "registry_login_server" {
  description = "The login server of this Container Registry."
  value       = azurerm_container_registry.this.login_server
}

output "registry_admin_username" {
  description = "The admin username of this Container Registry."
  value       = azurerm_container_registry.this.admin_username
}

output "registry_admin_password" {
  description = "The admin username of this Container Registry."
  sensitive   = true
  value       = azurerm_container_registry.this.admin_password
}

output "sku" {
  description = "The SKU tier of this Container Registry."
  value       = azurerm_container_registry.this.sku
}
