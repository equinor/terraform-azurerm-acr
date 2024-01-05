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

  network_rule_set_ip_rules = ["1.1.1.1", "2.2.2.2", "3.3.3.3"]

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
