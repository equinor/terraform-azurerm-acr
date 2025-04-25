# Terraform module for Azure Container Registry

[![GitHub License](https://img.shields.io/github/license/equinor/terraform-azurerm-acr)](https://github.com/equinor/terraform-azurerm-acr/blob/main/LICENSE)
[![GitHub Release](https://img.shields.io/github/v/release/equinor/terraform-azurerm-acr)](https://github.com/equinor/terraform-azurerm-acr/releases/latest)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?logo=conventionalcommits&logoColor=white)](https://conventionalcommits.org)
[![SCM Compliance](https://scm-compliance-api.radix.equinor.com/repos/equinor/terraform-azurerm-acr/badge)](https://developer.equinor.com/governance/scm-policy/)

Terraform module which creates Azure Container Registry (ACR) resources.

## Features

- Admin user account disabled by default.
- *(Premium tier only)* Public network access denied by default.
- Audit logs sent to given Log Analytics workspace by default.

## Prerequisites

- Azure role `Contributor` at the resource group scope.
- Azure role `Log Analytics Contributor` at the Log Analytics workspace scope.

## Usage

### Standard tier

```terraform
provider "azurerm" {
  features {}
}

module "acr" {
  source  = "equinor/acr/azurerm"
  version = "~> 6.3"

  registry_name              = "exampleacr"
  resource_group_name        = azurerm_resource_group.example.name
  location                   = azurerm_resource_group.example.location
  sku                        = "Standard"
  log_analytics_workspace_id = module.log_analytics.workspace_id
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "northeurope"
}

module "log_analytics" {
  source  = "equinor/log-analytics/azurerm"
  version = "~> 2.3"

  workspace_name      = "example-workspace"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
}
```

### Premium tier

```terraform
provider "azurerm" {
  features {}
}

module "acr" {
  source  = "equinor/acr/azurerm"
  version = "~> 6.3"

  registry_name              = "exampleacr"
  resource_group_name        = azurerm_resource_group.example.name
  location                   = azurerm_resource_group.example.location
  sku                        = "Premium"
  network_rule_set_ip_rules  = ["1.1.1.1", "2.2.2.2", "3.3.3.3"]
  log_analytics_workspace_id = module.log_analytics.workspace_id
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "northeurope"
}

module "log_analytics" {
  source  = "equinor/log-analytics/azurerm"
  version = "~> 2.3"

  workspace_name      = "example-workspace"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
}
```

## Contributing

See [Contributing guidelines](https://github.com/equinor/terraform-baseline/blob/main/CONTRIBUTING.md).
