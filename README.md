# Azure Container Registry Terraform module

Terraform module which creates Azure Container Registry resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 2.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The supported Azure location where the resources exist. | `string` | n/a | yes |
| <a name="input_registry_name"></a> [registry\_name](#input\_registry\_name) | The name of this Container registry. | `any` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the resources. | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | The SKU tier for the Container Registry. | `string` | `"Basic"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_registry_admin_password"></a> [registry\_admin\_password](#output\_registry\_admin\_password) | The admin username of the Container Registry. |
| <a name="output_registry_admin_username"></a> [registry\_admin\_username](#output\_registry\_admin\_username) | The admin username of the Container Registry. |
| <a name="output_registry_id"></a> [registry\_id](#output\_registry\_id) | The ID of the Container Registry. |
| <a name="output_registry_login_server"></a> [registry\_login\_server](#output\_registry\_login\_server) | The login server of the Container Registry. |
| <a name="output_registry_name"></a> [registry\_name](#output\_registry\_name) | The name of the Container Registry. |
<!-- END_TF_DOCS -->