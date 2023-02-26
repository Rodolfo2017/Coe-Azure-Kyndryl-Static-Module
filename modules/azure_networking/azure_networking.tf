resource "azurerm_virtual_network" "coe_azure_vnet" {
  name                         = var.azure_vnet_name
  location                     = var.azure_resource_group_location
  resource_group_name          = var.azure_resource_group_name
  address_space                = var.azure_vnet_address_space
  dns_servers                  = var.azure_vnet_dns_servers
  tags                = var.tags
}

resource "azurerm_subnet" "coe_azure_private_subnet" {
  name                        = var.azure_vnet_private_subnet_name
  resource_group_name         = var.azure_resource_group_name
  virtual_network_name        = azurerm_virtual_network.coe_azure_vnet.name
  address_prefixes            = var.azure_vnet_private_subnet_address_prefixes
}

resource "azurerm_subnet" "coe_azure_public_subnet" {
  name                        = var.azure_vnet_public_subnet_name
  resource_group_name         = var.azure_resource_group_name
  virtual_network_name        = azurerm_virtual_network.coe_azure_vnet.name
  address_prefixes            = var.azure_vnet_public_subnet_address_prefixes
}

resource "azurerm_subnet_network_security_group_association" "coe_azure_subnet_network_security_group_association" {
  subnet_id                   = azurerm_subnet.coe_azure_private_subnet.id
  network_security_group_id   = var.azure_vnet_private_subnet_security_group
}

resource "azurerm_public_ip" "coe_azure_public_ip" {
  name                        = var.azure_public_ip_name
  location                    = var.azure_resource_group_location
  resource_group_name         = var.azure_resource_group_name
  allocation_method           = var.azure_public_ip_name_allocation_method
  sku                         = var.azure_public_ip_sku
  sku_tier                    = var.azure_public_ip_sku_tier
  tags                        = var.tags
}

resource "azurerm_public_ip_prefix" "coe_azure_public_ip_prefix" {
  name                        = var.azure_public_ip_prefix_name
  location                    = var.azure_resource_group_location
  resource_group_name         = var.azure_resource_group_name
  prefix_length               = var.azure_public_ip_prefix_length
  tags                        = var.tags
}

resource "azurerm_nat_gateway" "coe_azure_nat_gateway" {
  name                        = var.azure_nat_gateway_name
  location                    = var.azure_resource_group_location
  resource_group_name         = var.azure_resource_group_name
  sku_name                    = var.azure_nat_gateway_sku_name
  idle_timeout_in_minutes     = var.azure_nat_gateway_idle_timeout_in_minutes
  tags                        = var.tags
}

resource "azurerm_subnet_nat_gateway_association" "coe_azure_nat_gateway_with_subnet_association" {
  subnet_id                   = azurerm_subnet.coe_azure_public_subnet.id
  nat_gateway_id              = azurerm_nat_gateway.coe_azure_nat_gateway.id
}

resource "azurerm_nat_gateway_public_ip_association" "coe_azure_nat_gateway_with_public_ip_association" {
  nat_gateway_id       = azurerm_nat_gateway.coe_azure_nat_gateway.id
  public_ip_address_id = azurerm_public_ip.coe_azure_public_ip.id
}
