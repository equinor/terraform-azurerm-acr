variable "registry_name" {
  description = "The name of this Container Registry."
  type        = string
  nullable    = false
}

variable "location" {
  description = "The location to create the resources in."
  type        = string
  nullable    = false
}

variable "resource_group_name" {
  description = "The name of the resource group to create the resources in."
  type        = string
  nullable    = false
}

variable "sku" {
  description = "The SKU tier for this Container Registry. Value must be \"Basic\", \"Standard\" or \"Premium\"."
  type        = string
  default     = "Basic"
  nullable    = false

  validation {
    condition     = contains(["Basic", "Standard", "Premium"], var.sku)
    error_message = "SKU must be \"Basic\", \"Standard\" or \"Premium\"."
  }
}

variable "admin_enabled" {
  description = "Is the admin user account enabled for this Container Registry?"
  type        = bool
  default     = false
  nullable    = false
}

variable "public_network_access_enabled" {
  description = "Should public network access be enabled for this Container Registry?"
  type        = bool
  default     = true
  nullable    = false
}

variable "network_rule_bypass_azure_services" {
  description = "Should Azure services be allowed to bypass the network rules for this Container Registry? Only applicable if value of sku is \"Premium\"."
  type        = bool
  default     = true
  nullable    = false
}

variable "network_rule_set_default_action" {
  description = "The default action of the network rule set for this Container Registry. Only applicable if value of sku is \"Premium\"."
  type        = string
  default     = "Deny"
  nullable    = false
}

variable "network_rule_set_ip_rules" {
  description = "The public IPs or IP ranges in CIDR format that should be able to access this Container Registry. Only applicable if value of sku is \"Premium\"."
  type        = list(string)
  default     = []
  nullable    = false
}

variable "georeplications" {
  description = "A list of geo-replications to be configured for this Container Registry. Only applicable if value of sku is \"Premium\"."

  type = list(object({
    location                = string
    zone_redundancy_enabled = optional(bool, false)
  }))

  default  = []
  nullable = false

  validation {
    condition     = length(var.georeplications) == length(distinct([for georeplication in var.georeplications : georeplication.location]))
    error_message = "Value of property \"location\" must be unique for each object."
  }
}

variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics workspace to send diagnostics to."
  type        = string
  nullable    = false
}

variable "diagnostic_setting_enabled_log_categories" {
  description = "A list of log categories to be enabled for this diagnostic setting."
  type        = list(string)
  nullable    = false

  default = [
    "ContainerRegistryLoginEvents",
    "ContainerRegistryRepositoryEvents"
  ]
}

variable "diagnostic_setting_enabled_metric_categories" {
  description = "A list of metric categories to be enabled for this diagnostic setting."
  type        = list(string)
  default     = []
  nullable    = false
}

variable "diagnostic_setting_name" {
  description = "The name of this diagnostic setting."
  type        = string
  default     = "audit-logs"
  nullable    = false
}

variable "tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
  default     = {}
  nullable    = false
}
