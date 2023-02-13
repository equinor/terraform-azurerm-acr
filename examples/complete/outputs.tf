output "container_registry_sku" {
  description = "The SKU tier for this Container Registry."
  value       = module.acr.sku
}
