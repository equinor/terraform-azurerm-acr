output "container_registry_id" {
  description = "The ID of the Container Registry."
  value       = azurerm_container_registry.this.id
}

output "container_registry_name" {
  description = "The name of the Container Registry."
  value       = azurerm_container_registry.this.name
}

output "container_registry_login_server" {
  description = "The login server of the Container Registry."
  value       = azurerm_container_registry.this.login_server
}

output "container_registry_admin_username" {
  description = "The admin username of the Container Registry."
  value       = azurerm_container_registry.this.admin_username
}

output "container_registry_admin_password" {
  description = "The admin username of the Container Registry."
  sensitive   = true
  value       = azurerm_container_registry.this.admin_password
}

output "managed_identity_name" {
  description = "The name of the Managed Identity."
  value       = azurerm_user_assigned_identity.this.name
}

output "managed_identity_id" {
  description = "The ID of the Managed Identity."
  value       = azurerm_user_assigned_identity.this.id
}

output "managed_identity_principal_id" {
  description = "The principal ID of the Managed Identity."
  value       = azurerm_user_assigned_identity.this.principal_id
}

output "managed_identity_client_id" {
  description = "The client ID of the Managed Identity."
  value       = azurerm_user_assigned_identity.this.client_id
}

output "managed_identity_tenant_id" {
  description = "The tenant ID of the Managed Identity."
  value       = azurerm_user_assigned_identity.this.tenant_id
}
