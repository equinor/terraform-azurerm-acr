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
| [azurerm_role_assignment.acr_pull](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.managed_identity_operator](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_user_assigned_identity.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | The application to create the resources for. | `string` | n/a | yes |
| <a name="input_container_registry_name"></a> [container\_registry\_name](#input\_container\_registry\_name) | A custom name for the Container Registry. | `string` | `null` | no |
| <a name="input_container_registry_sku"></a> [container\_registry\_sku](#input\_container\_registry\_sku) | The SKU tier for the Container Registry. | `string` | `"Basic"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment to create the resources for. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The supported Azure location where the resources exist. | `string` | n/a | yes |
| <a name="input_managed_identity_name"></a> [managed\_identity\_name](#input\_managed\_identity\_name) | A custom name for the Managed Identity. | `string` | `null` | no |
| <a name="input_managed_identity_operators"></a> [managed\_identity\_operators](#input\_managed\_identity\_operators) | A list of IDs of the Azure AD objects that should be able to read and assign the Managed Identity. | `list(string)` | `[]` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the resources. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_registry_admin_password"></a> [container\_registry\_admin\_password](#output\_container\_registry\_admin\_password) | The admin username of the Container Registry. |
| <a name="output_container_registry_admin_username"></a> [container\_registry\_admin\_username](#output\_container\_registry\_admin\_username) | The admin username of the Container Registry. |
| <a name="output_container_registry_id"></a> [container\_registry\_id](#output\_container\_registry\_id) | The ID of the Container Registry. |
| <a name="output_container_registry_login_server"></a> [container\_registry\_login\_server](#output\_container\_registry\_login\_server) | The login server of the Container Registry. |
| <a name="output_container_registry_name"></a> [container\_registry\_name](#output\_container\_registry\_name) | The name of the Container Registry. |
| <a name="output_managed_identity_client_id"></a> [managed\_identity\_client\_id](#output\_managed\_identity\_client\_id) | The client ID of the Managed Identity. |
| <a name="output_managed_identity_id"></a> [managed\_identity\_id](#output\_managed\_identity\_id) | The ID of the Managed Identity. |
| <a name="output_managed_identity_name"></a> [managed\_identity\_name](#output\_managed\_identity\_name) | The name of the Managed Identity. |
| <a name="output_managed_identity_principal_id"></a> [managed\_identity\_principal\_id](#output\_managed\_identity\_principal\_id) | The principal ID of the Managed Identity. |
| <a name="output_managed_identity_tenant_id"></a> [managed\_identity\_tenant\_id](#output\_managed\_identity\_tenant\_id) | The tenant ID of the Managed Identity. |
<!-- END_TF_DOCS -->