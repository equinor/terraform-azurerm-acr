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

variable "webhook" {
  description = "A map of identifiers for this Webhook."
  type = list(object({
    name        = string
    service_uri = string
    status      = string
    scope       = string
    actions     = list(string)
  }))
  default = []
}

variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics workspace to send diagnostics to."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
  default     = {}
}
