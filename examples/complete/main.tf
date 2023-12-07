provider "azurerm" {
  features {}
}

resource "random_id" "this" {
  byte_length = 8
}

module "log_analytics" {
  source = "github.com/equinor/terraform-azurerm-log-analytics?ref=v2.1.1"

  workspace_name      = "log-${random_id.this.hex}"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "acr" {
  # source = "github.com/equinor/terraform-azurerm-acr"
  source = "../.."

  registry_name              = "cr${random_id.this.hex}"
  resource_group_name        = var.resource_group_name
  location                   = var.location
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
}
