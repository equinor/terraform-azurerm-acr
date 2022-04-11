provider "azurerm" {
  features {}
}

locals {
  app_name         = "ops-acr"
  environment_name = "example"
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "example" {
  name     = "rg-${local.app_name}-${local.environment_name}"
  location = "northeurope"
}

module "acr" {
  source = "../.."

  app_name            = local.app_name
  environment_name    = local.environment_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  managed_identity_operators = [data.azurerm_client_config.current.object_id]
}
