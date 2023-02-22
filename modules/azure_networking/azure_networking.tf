resource "azurerm_virtual_network" "coe_azure_vnet" {
  name                         = var.azure_vnet_name
  location                     = var.azure_resource_group_location
  resource_group_name          = var.azure_resource_group_name
  address_space                = var.azure_vnet_address_space
  dns_servers                  = var.azure_vnet_dns_servers
#  subnet {
#    name              = data.azurerm_subnet.coe_azure_private_subnet.name
  #  address_prefix    = var.azure_vnet_private_subnet_address_prefix
#    security_group    = var.azure_vnet_private_subnet_security_group
#  }
#
#  subnet {
#    name              = var.azure_vnet_public_subnet_name
#    address_prefix    = var.azure_vnet_public_subnet_address_prefix
#    security_group    = var.azure_vnet_public_subnet_security_group
#  }
  tags                = var.tags
}

resource "azurerm_subnet" "coe_azure_private_subnet" {
  name                        = var.azure_vnet_private_subnet_name
  resource_group_name         = var.azure_resource_group_name
  virtual_network_name        = azurerm_virtual_network.coe_azure_vnet.name
  address_prefixes            = var.azure_vnet_private_subnet_address_prefixes
  #["10.0.1.0/24","10.0.2.0/24"]
}

resource "azurerm_subnet" "coe_azure_public_subnet" {
  name                        = var.azure_vnet_public_subnet_name
  resource_group_name         = var.azure_resource_group_name
  virtual_network_name        = azurerm_virtual_network.coe_azure_vnet.name
  address_prefixes            = var.azure_vnet_public_subnet_address_prefixes
  #["10.0.3.0/24","10.0.4.0/24"]
}

resource "azurerm_subnet_network_security_group_association" "coe_azure_subnet_network_security_group_association" {
  subnet_id                   = azurerm_subnet.coe_azure_private_subnet.id
  network_security_group_id   = var.azure_vnet_private_subnet_security_group
}

resource "azurerm_public_ip" "coe_azure_public_ip" {
  name                        = var.azure_public_ip_name
  #name                        = "nat-gateway-publicIP"
  location                    = var.azure_resource_group_location
  resource_group_name         = var.azure_resource_group_name
  allocation_method           = var.azure_public_ip_name_allocation_method
  sku                         = var.azure_public_ip_sku
  #zones                       = var.azure_public_ip_zones
  sku_tier                    = var.azure_public_ip_sku_tier
  #ip_version                  = var.azure_public_ip_version
  #ip_vesion                   = "IPv4"
  #allocation_method           = "Static"
  #sku                         = "Standard"
  #zones                       = ["1"]
  tags                        = var.tags
}

resource "azurerm_public_ip_prefix" "coe_azure_public_ip_prefix" {
  name                        = var.azure_public_ip_prefix_name
  #name                        = "nat-gateway-publicIPPrefix"
  location                    = var.azure_resource_group_location
  resource_group_name         = var.azure_resource_group_name
  prefix_length               = var.azure_public_ip_prefix_length
  #zones                       = var.azure_public_ip_prefix_zones
  #prefix_length               = 30
  #zones                       = ["1"]
  tags                        = var.tags
}

resource "azurerm_nat_gateway" "coe_azure_nat_gateway" {
  name                        = var.azure_nat_gateway_name
  #name                        = "example-natgateway"
  location                    = var.azure_resource_group_location
  resource_group_name         = var.azure_resource_group_name
  sku_name                    = var.azure_nat_gateway_sku_name
  idle_timeout_in_minutes     = var.azure_nat_gateway_idle_timeout_in_minutes
  #zones                       = var.azure_nat_gateway_zones
  #sku_name                    = "Standard"
  #idle_timeout_in_minutes     = 10
  #zones                       = ["1"]
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

#resource "azurerm_subnet" "example" {
#  name                 = "example-subnet"
#  resource_group_name  = azurerm_resource_group.example.name
#  virtual_network_name = azurerm_virtual_network.example.name
#  address_prefixes     = ["10.0.2.0/24"]
#}
#