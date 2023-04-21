provider "azurerm" {
  features {}
}

resource "random_id" "this" {
  byte_length = 8
}

resource "azurerm_resource_group" "this" {
  name     = "rg-${random_id.this.hex}"
  location = var.location
}

module "log_analytics" {
  source = "github.com/equinor/terraform-azurerm-log-analytics?ref=v1.5.0"

  workspace_name      = "log-${random_id.this.hex}"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
}

module "acr" {
  # source = "github.com/equinor/terraform-azurerm-acr"
  source = "../.."

  registry_name              = "cr${random_id.this.hex}"
  location                   = azurerm_resource_group.this.location
  resource_group_name        = azurerm_resource_group.this.name
  log_analytics_workspace_id = module.log_analytics.workspace_id
  admin_enabled              = false
  sku                        = "Premium"

  # If one or more georeplications block is specified, they are expected to follow the alphabetic order on the location property.
  georeplications = [
    {
      location                = "Norway East"
      zone_redundancy_enabled = false
    },
    {
      location                = "West Europe"
      zone_redundancy_enabled = false
    }
  ]

  webhooks = {
    "webapp" = {
      name        = "webappwebhook"
      service_uri = "https://webappwebhookreceiver.example/webapptag"
      actions     = ["push"]
      status      = "enabled"
      scope       = "webapptag:*"
    }
    "sql" = {
      name        = "sqlwebhook"
      service_uri = "https://sqlwebhookreceiver.example"
      actions     = ["push"]
    }
  }
}
