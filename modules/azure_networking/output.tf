output "vnet_id" {
  description = "Id Vnet"
  value       = azurerm_virtual_network.coe_azure_vnet.id
}

output "vnet_name" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created"
  value       = azurerm_virtual_network.coe_azure_vnet.name
}

output "vnet_address_space" {
  description = "(Required) The list of address spaces used by the virtual network."
  value       = azurerm_virtual_network.coe_azure_vnet.address_space
}

output "private_subnet_id" {
  description = "Vnet private subnet id"
  value       = azurerm_subnet.coe_azure_private_subnet.id
  #value       = azurerm_virtual_network.coe_azure_vnet.id
}