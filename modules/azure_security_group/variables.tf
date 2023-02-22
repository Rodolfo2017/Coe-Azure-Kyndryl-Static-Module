variable "azure_network_security_group_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "azure_resource_group_name" {
  description = "value"
  type        = string
}

variable "azure_resource_group_location" {
  description = "value"
  type        = string
}

variable "azure_network_security_group_name_nsg_rules_inbound" {
  description = "The values for each NSG rule inbound"
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}

variable "azure_network_security_group_name_nsg_rules_outbound" {
  description = "The values for each NSG rule outbound"
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}

variable "tags" {
  description = "Tags to assign to the security groups."
  type        = map(string)
  default     = {}
}