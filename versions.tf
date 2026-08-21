terraform {
  required_version = ">= 1.3.0, < 2.0.0"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # Version 4.31.0 is required to use the "enabled_metric" argument for the "azurerm_monitor_diagnostic_setting" resource.
      version = ">= 5.0.0, < 6.0.0"
    }
  }
}
