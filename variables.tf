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

variable "public_network_access_enabled" {
  description = "Should public network access be enabled for this Container Registry?"
  type        = bool
  default     = true
}

variable "network_rule_bypass_azure_services" {
  description = "Should Azure services be allowd to bypass the network rules for this Container Registry? Only applicable when SKU is Premium."
  type        = bool
  default     = true
}

variable "network_rule_set_default_action" {
  description = "The default action of the network rule set for this Container Registry. Only applicable when SKU is Premium."
  type        = string
  default     = "Deny"
}

variable "network_rule_set_ip_rules" {
  description = "The public IPs or IP ranges in CIDR format that should be able to access this Container Registry. Only applicable when SKU is Premium."
  type        = list(string)
  default     = []
}

variable "georeplications" {
  description = "A list of properties of the geo-replication blocks for this Container Registry. Only availiable for Premium SKU."

  type = list(object({
    location                = string                # The location where this Container Registry should be geo-replicated.
    zone_redundancy_enabled = optional(bool, false) # Is zone redundancy enabled for this replication location?
  }))

  default = []

  validation {
    condition     = length(var.georeplications) == length(distinct([for georeplication in var.georeplications : georeplication.location]))
    error_message = "Value of property \"location\" must be unique for each object."
  }
}

variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics workspace to send diagnostics to."
  type        = string
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
