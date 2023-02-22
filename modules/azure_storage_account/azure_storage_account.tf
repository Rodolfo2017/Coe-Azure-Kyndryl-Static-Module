resource "azurerm_storage_account" "coe_azure_storage_account" {

  name                     = var.azure_storage_account_name
  resource_group_name      = var.azure_resource_group_name
  location                 = var.azure_resource_group_location
  account_kind             = var.azure_storage_account_account_kind
  account_tier             = var.azure_storage_account_tier
  access_tier              = var.azure_storage_access_tier
  account_replication_type = var.azure_storage_account_replication_type
  tags                     = var.tags

  ###############################################################################
  #                     Security Options
  ###############################################################################
  enable_https_traffic_only = var.azure_storage_account_enable_https_traffic_only
  min_tls_version           = var.azure_storage_account_min_tls_version

  blob_properties {
    delete_retention_policy {
      days = var.azure_storage_account_blob_properties_delete_retention_policy_days
    }
    versioning_enabled = var.azure_storage_account_blob_properties_versioning_enabled
  }
  network_rules {
    default_action = var.azure_storage_account_network_rules_default_action
    ip_rules       = var.azure_storage_account_network_rules_ip_rules
  }
}
