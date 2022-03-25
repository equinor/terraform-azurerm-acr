locals {
  app_name_alnum = join("", regexall("[a-z0-9]", lower(var.app_name)))
}

resource "azurerm_container_registry" "this" {
  name                = coalesce(var.container_registry_name, "cr${local.app_name_alnum}${var.environment_name}")
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.container_registry_sku
  admin_enabled       = true
}

resource "azurerm_user_assigned_identity" "this" {
  name                = coalesce(var.managed_identity_name, "id-acr-user-${var.app_name}-${var.environment_name}")
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_role_assignment" "acr_user" {
  scope                = azurerm_container_registry.this.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_user_assigned_identity.this.principal_id
}

resource "azurerm_role_assignment" "managed_identity_operator" {
  for_each = toset(var.managed_identity_operators)

  scope                = azurerm_user_assigned_identity.this.id
  role_definition_name = "Managed Identity Operator"
  principal_id         = each.value
}
