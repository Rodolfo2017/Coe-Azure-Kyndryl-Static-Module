output "azure_container_registry_id" {
  description = "The ID of the Container Registry."
  value       = azurerm_container_registry.coe_azure_container_registry.id
}

output "azure_container_registry_login_server" {
  description = "The URL that can be used to log into the container registry."
  value       = azurerm_container_registry.coe_azure_container_registry.login_server
}