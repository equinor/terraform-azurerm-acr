resource "azurerm_container_registry" "this" {
  name                = var.registry_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  admin_enabled       = var.admin_enabled

  dynamic "georeplications" {
    for_each = var.georeplications

    content {
      location                = georeplications.value["location"]
      zone_redundancy_enabled = georeplications.value["zone_redundancy_enabled"]
    }
  }

  tags = var.tags
}

resource "azurerm_container_registry_webhook" "this" {
  for_each = var.webhooks

  name                = each.value.name
  registry_name       = azurerm_container_registry.this.name
  location            = var.location
  resource_group_name = var.resource_group_name

  service_uri = each.value.service_uri
  actions     = each.value.actions
  status      = each.value.status
  scope       = each.value.scope

  tags = var.tags
}

resource "azurerm_monitor_diagnostic_setting" "this" {
  name                           = var.diagnostic_setting_name
  target_resource_id             = azurerm_container_registry.this.id
  log_analytics_workspace_id     = var.log_analytics_workspace_id
  log_analytics_destination_type = var.log_analytics_destination_type

  dynamic "enabled_log" {
    for_each = toset(var.diagnostic_setting_enabled_log_categories)

    content {
      category = enabled_log.value
    }
  }

  metric {
    category = "AllMetrics"
    enabled  = true

    retention_policy {
      days    = 0
      enabled = false
    }
  }
}
