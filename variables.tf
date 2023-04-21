variable "registry_name" {
  description = "The name of this Container Registry."
}

variable "location" {
  description = "The supported Azure location where the resources exist."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources."
  type        = string
}

variable "sku" {
  description = "The SKU tier for the Container Registry."
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Is admin enabled for this Container Registry?"
  type        = bool
  default     = false
}

variable "georeplications" {
  description = "A list of properties of the geo-replication blocks for this Container Registry. Only availiable for Premium SKU."

  type = list(object({
    location                = string                # The location where this Container Registry should be geo-replicated.
    zone_redundancy_enabled = optional(bool, false) # Is zone redundancy enabled for this replication location?
  }))

  default = []
}

variable "webhooks" {
  description = "A map of webhooks to create for this Container Registry."

  type = map(object({
    name        = string
    service_uri = string
    actions     = optional(list(string), ["push"])
    status      = optional(string, "enabled")
    scope       = optional(string, "")
  }))

  default = {}
}

variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics workspace to send diagnostics to."
  type        = string
}

variable "log_analytics_destination_type" {
  description = "The type of log analytics destination to use for this Log Analytics Workspace."
  type        = string
  default     = null
}

variable "diagnostic_setting_enabled_log_categories" {
  description = "A list of log categories to be enabled for this diagnostic setting."
  type        = list(string)

  default = [
    "ContainerRegistryLoginEvents",
    "ContainerRegistryRepositoryEvents"
  ]
}

variable "diagnostic_setting_name" {
  description = "The name of this Diagnostic Setting."
  type        = string
  default     = "audit-logs"
}

variable "tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
  default     = {}
}
