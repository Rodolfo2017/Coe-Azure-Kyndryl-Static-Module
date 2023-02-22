variable "azure_storage_account_name" {
  description = "Name of the bucket"
  type        = string
}

variable "azure_resource_group_name" {
  description = "(Required) The name of the resource group in which to create the storage account. Changing this forces a new resource to be created."
  type        = string
}
variable "azure_resource_group_location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_storage_account_account_kind" {
  description = "(Optional) Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Defaults to StorageV2."
  type        = string
}

variable "azure_storage_account_tier" {
  description = "(Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_storage_access_tier" {
  description = "(Optional) Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts. Valid options are Hot and Cool, defaults to Hot."
  type        = string
}

variable "azure_storage_account_replication_type" {
  description = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. Changing this forces a new resource to be created when types LRS, GRS and RAGRS are changed to ZRS, GZRS or RAGZRS and vice versa."
  type        = string
}

variable "tags" {
  description = "Tags to assign to the storage account."
  type        = map(string)
  default     = {}
}

###############################################################################
#                     Security Options Variables
###############################################################################
variable "azure_storage_account_enable_https_traffic_only" {
  description = "(Optional) Boolean flag which forces HTTPS if enabled, see here for more information. Defaults to true."
  type        = bool
}

variable "azure_storage_account_min_tls_version" {
  description = "(Optional) The minimum supported TLS version for the storage account. Possible values are TLS1_0, TLS1_1, and TLS1_2. Defaults to TLS1_2 for new storage accounts."
  type        = string
}

variable "azure_storage_account_blob_properties_delete_retention_policy_days" {
  description = "(Optional) Specifies the number of days that the blob should be retained, between 1 and 365 days. Defaults to 7."
  type        = number
}

variable "azure_storage_account_blob_properties_versioning_enabled" {
  description = "(Optional) Is versioning enabled? Default to false."
  type        = bool
}

variable "azure_storage_account_network_rules_default_action" {
  description = "(Required) Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow."
  type        = string
}

variable "azure_storage_account_network_rules_ip_rules" {
  description = "(Required) Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow."
  type        = list(string)
}