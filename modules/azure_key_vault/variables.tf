variable "azure_key_vault_name" {
  description = "(Required) Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name."
  type        = string
}

variable "azure_resource_group_name" {
  description = "(Required) The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_resource_group_location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_key_vault_enabled_for_disk_encryption" {
  description = "(Optional) Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys."
  type        = bool
}

variable "azure_key_vault_soft_delete_retention_days" {
  description = "(Optional) The number of days that items should be retained for once soft-deleted. This value can be between 7 and 90 (the default) days."
  type        = number
}

variable "azure_key_vault_purge_protection_enabled" {
  description = "(Optional) Is Purge Protection enabled for this Key Vault?"
  type        = bool
}

variable "azure_key_vault_sku_name" {
  description = "(Required) The Name of the SKU used for this Key Vault. Possible values are standard and premium."
  type        = string
}

variable "azure_key_vault_access_policy_key_permissions" {
  description = "(Optional) List of key permissions. Possible values are Backup, Create, Decrypt, Delete, Encrypt, Get, Import, List, Purge, Recover, Restore, Sign, UnwrapKey, Update, Verify, WrapKey, Release, Rotate, GetRotationPolicy and SetRotationPolicy."
  type        = string
}

variable "azure_key_vault_access_policy_secret_permissions" {
  description = "(Optional) List of secret permissions, must be one or more from the following: Backup, Delete, Get, List, Purge, Recover, Restore and Set."
  type        = string
}

variable "azure_key_vault_access_policy_storage_permissions" {
  description = "(Optional) List of storage permissions, must be one or more from the following: Backup, Delete, DeleteSAS, Get, GetSAS, List, ListSAS, Purge, Recover, RegenerateKey, Restore, Set, SetSAS and Update."
  type        = string
}

variable "tags" {
  description = "Tags to assign to the Azure Key Vault."
  type        = map(string)
  default     = {}
}