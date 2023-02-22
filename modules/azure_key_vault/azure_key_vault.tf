data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "coe_azure_key_vault" {
  name                        = var.azure_key_vault_name
  location                    = var.azure_resource_group_location
  resource_group_name         = var.azure_resource_group_name
  enabled_for_disk_encryption = var.azure_key_vault_enabled_for_disk_encryption
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.azure_key_vault_soft_delete_retention_days
  purge_protection_enabled    = var.azure_key_vault_purge_protection_enabled
  sku_name                    = var.azure_key_vault_sku_name

  access_policy {
    tenant_id                 = data.azurerm_client_config.current.tenant_id
    object_id                 = data.azurerm_client_config.current.object_id
    key_permissions           = [var.azure_key_vault_access_policy_key_permissions]
    secret_permissions        = [var.azure_key_vault_access_policy_secret_permissions]
    storage_permissions       = [var.azure_key_vault_access_policy_storage_permissions]
  }
  tags                        = var.tags
}