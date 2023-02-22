output "nsg_id" {
  description = "The value of the NSG ID"
  value       = azurerm_network_security_group.network_security_group.id
}