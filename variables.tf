variable "app_name" {
  description = "Application name, used to generate resource names"
  type        = string
}

variable "environment_name" {
  description = "Environment name, used to generate resource names"
  type        = string
}

variable "location" {
  description = "Location to create resources in"
  type        = string
}

variable "resource_group_name" {
  description = "Name of resource group to create resources in"
  type        = string
}

variable "container_registry_name" {
  description = "Name of container registry to create, generated if not set"
  type        = string
  default     = null
}

variable "container_registry_sku" {
  description = "SKU of container registry to create"
  type        = string
  default     = "Basic"
}

variable "managed_identity_name" {
  description = "Name of managed identity to create, generated if not set"
  type        = string
  default     = null
}

variable "managed_identity_operators" {
  description = "IDs of Azure AD objects that should be able to read and assign the created managed identity"
  type        = list(string)
  default     = []
}
