variable "azure_vnet_name" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_resource_group_name" {
  description = "(Required) The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_resource_group_location" {
  description = "(Required) The location/region where the virtual network is created. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_vnet_address_space" {
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
  type        = list(string)
}

variable "azure_vnet_dns_servers" {
  description = "(Optional) List of IP addresses of DNS servers"
  type        = list(string)
}

variable "azure_vnet_private_subnet_name" {
  description = "(Required) The name of the subnet."
  type        = string
}

variable "azure_vnet_private_subnet_address_prefixes" {
  description = "(Required) The address prefix to use for the subnet."
  type        = list(string)
}

variable "azure_vnet_private_subnet_security_group" {
  description = "(Optional) The Network Security Group to associate with the subnet. (Referenced by id, ie. azurerm_network_security_group.example.id)"
  type        = string
}

variable "azure_vnet_public_subnet_name" {
  description = "(Required) The name of the subnet."
  type        = string
}

variable "azure_vnet_public_subnet_address_prefixes" {
  description = "(Required) The address prefix to use for the subnet."
  type        = list(string)
}

variable "azure_public_ip_name" {
  description = "(Required) Specifies the name of the Public IP. Changing this forces a new Public IP to be created."
  type        = string
}

variable "azure_public_ip_name_allocation_method" {
  description = "(Required) Defines the allocation method for this IP address. Possible values are Static or Dynamic."
  type        = string
}

variable "azure_public_ip_sku" {
  description = "(Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_public_ip_sku_tier" {
  description = "(Optional) The SKU Tier that should be used for the Public IP. Possible values are Regional and Global. Defaults to Regional. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_public_ip_prefix_name" {
  description = "(Required) Specifies the name of the Public IP Prefix resource . Changing this forces a new resource to be created."
  type        = string
}

variable "azure_public_ip_prefix_length" {
  description = "(Required) Specifies the name of the Public IP Prefix resource . Changing this forces a new resource to be created."
  type        = number
}

variable "azure_nat_gateway_name" {
  description = "(Required) Specifies the name of the NAT Gateway. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_nat_gateway_sku_name" {
  description = "(Optional) The SKU which should be used. At this time the only supported value is Standard. Defaults to Standard."
  type        = string
}

variable "azure_nat_gateway_idle_timeout_in_minutes" {
  description = "(Optional) The idle timeout which should be used in minutes. Defaults to 4."
  type        = number
}

variable "tags" {
  description = "Tags to assign to the bucket."
  type        = map(string)
  default     = {}
}