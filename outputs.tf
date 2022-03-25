output "container_registry_name" {
  description = "Name of the created container registry"
  value       = azurerm_container_registry.this.name
}

output "container_regsitry_id" {
  description = "ID of the created container registry"
  value       = azurerm_container_registry.this.id
}

output "container_registry_admin_username" {
  description = "Admin username for the created container registry"
  sensitive   = true
  value       = azurerm_container_registry.this.admin_username
}

output "container_registry_admin_password" {
  description = "Admin password for the created container registry"
  sensitive   = true
  value       = azurerm_container_registry.this.admin_password
}

output "managed_identity_name" {
  description = "Name of the created managed identity"
  value       = azurerm_user_assigned_identity.this.name
}

output "managed_identity_id" {
  description = "ID of the created managed identity"
  value       = azurerm_user_assigned_identity.this.id
}

output "managed_identity_client_id" {
  description = "Client ID of the created managed identity"
  value       = azurerm_user_assigned_identity.this.client_id
}
