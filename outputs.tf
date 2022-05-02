output "registry_id" {
  description = "The ID of the Container Registry."
  value       = azurerm_container_registry.this.id
}

output "registry_name" {
  description = "The name of the Container Registry."
  value       = azurerm_container_registry.this.name
}

output "registry_login_server" {
  description = "The login server of the Container Registry."
  sensitive   = true
  value       = azurerm_container_registry.this.login_server
}

output "registry_admin_username" {
  description = "The admin username of the Container Registry"
  sensitive   = true
  value       = azurerm_container_registry.this.admin_username
}

output "registry_admin_password" {
  description = "The admin password of the Container Registry."
  sensitive   = true
  value       = azurerm_container_registry.this.admin_password
}

output "identity_name" {
  description = "The name of the Managed Identity."
  value       = azurerm_user_assigned_identity.this.name
}

output "identity_id" {
  description = "The ID of the Managed Identity."
  value       = azurerm_user_assigned_identity.this.id
}

output "identity_principal_id" {
  description = "The principal ID of the Managed Identity."
  value       = azurerm_user_assigned_identity.this.principal_id
}

output "identity_client_id" {
  description = "The client ID of the Managed Identity."
  value       = azurerm_user_assigned_identity.this.client_id
}

output "identity_tenant_id" {
  description = "The tenant ID of the Managed Identity."
  value       = azurerm_user_assigned_identity.this.tenant_id
}
