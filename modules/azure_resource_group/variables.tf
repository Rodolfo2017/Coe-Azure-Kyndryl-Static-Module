variable "azure_resource_group_name" {
  description = "(Required) The name of the resource group in which to create the storage account. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_resource_group_location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "tags" {
  description = "Tags to assign to the bucket."
  type        = map(string)
  default     = {}
}