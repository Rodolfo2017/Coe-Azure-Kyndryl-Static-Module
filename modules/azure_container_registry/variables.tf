variable "azure_container_registry_name" {
  description = "(Required) Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_resource_group_name" {
  description = "(Required) The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_resource_group_location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_container_registry_sku" {
  description = "(Required) The SKU name of the container registry. Possible values are Basic, Standard and Premium."
  type        = string
}

variable "azure_container_registry_admin_enabled" {
  description = "(Optional) Specifies whether the admin user is enabled. Defaults to false."
  type        = bool
}

variable "tags" {
  description = "Tags to assign to the Azure Container Registry."
  type        = map(string)
  default     = {}
}
#######################################################
#                 High Availability
#######################################################
variable "azure_container_registry_georeplication_location_1" {
  description = "(Required) A location where the container registry should be geo-replicated."
  type        = string
}

variable "azure_container_registry_georeplication_zone_redundancy_enabled_1" {
  description = "(Optional) Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to false."
  type        = bool
}
