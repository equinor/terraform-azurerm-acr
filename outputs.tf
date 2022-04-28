output "container_registry_id" {
  description = "The ID of the Container Registry."
  value       = azurerm_container_registry.this.id
}

output "container_registry_name" {
  description = "The name of the Container Registry."
  value       = azurerm_container_registry.this.name
}

output "container_registry_login_server" {
  description = "The URL that can be used to log into the Container Registry."
  sensitive   = true
  value       = azurerm_container_registry.this.login_server
}

output "container_registry_admin_username" {
  description = "The Username associated with the Container Registry Admin account."
  sensitive   = true
  value       = azurerm_container_registry.this.admin_username
}

output "container_registry_admin_password" {
  description = "The Password associated with the Container Registry Admin account."
  sensitive   = true
  value       = azurerm_container_registry.this.admin_password
}

output "user_assigned_identity_name" {
  description = "The name of the User Assigned Identity."
  value       = azurerm_user_assigned_identity.this.name
}

output "user_assigned_identity_id" {
  description = "The ID of the User Assigned Identity."
  value       = azurerm_user_assigned_identity.this.id
}

output "user_assigned_identity_principal_id" {
  description = "Client ID associated with the user assigned identity."
  value       = azurerm_user_assigned_identity.this.principal_id
}

output "user_assigned_identity_client_id" {
  description = "Client ID associated with the user assigned identity."
  value       = azurerm_user_assigned_identity.this.client_id
}

output "user_assigned_identity_tenant_id" {
  description = "Tenant ID associated with the user assigned identity."
  value       = azurerm_user_assigned_identity.this.tenant_id
}
