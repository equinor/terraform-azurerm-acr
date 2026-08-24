terraform {
  required_version = ">= 1.3.0, < 2.0.0"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # Version 5.0.0 is required to use the "global_endpoint_routing_enabled" argument for the "azurerm_container_registry.georeplications" block.
      version = ">= 5.0.0, < 6.0.0"
    }
  }
}
