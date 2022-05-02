locals {
  application_alnum = join("", regexall("[a-z0-9]", lower(var.application)))

  tags = merge({ application = var.application, environment = var.environment }, var.tags)
}

resource "azurerm_container_registry" "this" {
  name                = coalesce(var.registry_name, "cr${local.application_alnum}${var.environment}")
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.registry_sku
  admin_enabled       = true

  tags = local.tags
}

resource "azurerm_user_assigned_identity" "this" {
  name                = coalesce(var.identity_name, "id-acr-user-${var.application}-${var.environment}")
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = local.tags
}

resource "azurerm_role_assignment" "acr_pull" {
  scope                = azurerm_container_registry.this.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_user_assigned_identity.this.principal_id
}

resource "azurerm_role_assignment" "identity_operator" {
  for_each = toset(var.identity_operators)

  scope                = azurerm_user_assigned_identity.this.id
  role_definition_name = "Managed Identity Operator"
  principal_id         = each.value
}
