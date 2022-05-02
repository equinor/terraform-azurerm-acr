variable "application" {
  description = "The application to create the resources for."
  type        = string
}

variable "environment" {
  description = "The environment to create the resources for."
  type        = string
}

variable "container_registry_name" {
  description = "Specifies the name of the Container Registry."
  type        = string
  default     = null
}

variable "location" {
  description = "Specifies the supported Azure location where the resources exist."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources."
  type        = string
}

variable "container_registry_sku" {
  description = "The SKU name of the Container Registry."
  type        = string
  default     = "Basic"
}

variable "tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

variable "managed_identity_name" {
  description = "The name of the User Assigned Identity."
  type        = string
  default     = null
}

variable "managed_identity_operators" {
  description = "The IDs of the Principals that should be able to read and assign the User Assigned Identity."
  type        = list(string)
  default     = []
}
