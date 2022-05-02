variable "application" {
  description = "The application to create the resources for."
  type        = string
}

variable "environment" {
  description = "The environment to create the resources for."
  type        = string
}

variable "location" {
  description = "The supported Azure location where the resources exist."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources."
  type        = string
}

variable "registry_name" {
  description = "A custom name for the Container Registry."
  type        = string
  default     = null
}

variable "registry_sku" {
  description = "The SKU tier for the Container Registry."
  type        = string
  default     = "Basic"
}

variable "identity_name" {
  description = "A custom name for the Managed Identity."
  type        = string
  default     = null
}

variable "identity_operators" {
  description = "The IDs of the principals that should be able to read and assign the Managed Identity."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
  default     = {}
}
