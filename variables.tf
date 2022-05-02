variable "application" {
  description = "The application to create the resources for."
  type        = string
}

variable "environment" {
  description = "The environment to create the resources for."
  type        = string
}

variable "container_registry_name" {
  description = "A custom name for the Container Registry."
  type        = string
  default     = null
}

variable "location" {
  description = "The supported Azure location where the resources exist."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources."
  type        = string
}

variable "container_registry_sku" {
  description = "The SKU tier for the Container Registry."
  type        = string
  default     = "Basic"
}

variable "tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

variable "managed_identity_name" {
  description = "A custom name for the Managed Identity."
  type        = string
  default     = null
}

variable "managed_identity_operators" {
  description = "A list of IDs of the Azure AD objects that should be able to read and assign the Managed Identity."
  type        = list(string)
  default     = []
}
