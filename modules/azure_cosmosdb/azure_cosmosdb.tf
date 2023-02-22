resource "azurerm_cosmosdb_account" "coe_azure_cosmosdb_account" {
  name                      = var.azure_cosmosdb_account_name
  resource_group_name       = var.azure_resource_group_name
  location                  = var.azure_resource_group_location
  offer_type                = var.azure_cosmosdb_account_offer_type
  kind                      = var.azure_cosmosdb_account_kind
  enable_automatic_failover = var.azure_cosmosdb_account_enable_automatic_failover

  capabilities {
    name = var.azure_cosmosdb_account_capabilities_name_1
  }

  capabilities {
    name = var.azure_cosmosdb_account_capabilities_name_2
  }

  capabilities {
    name = var.azure_cosmosdb_account_capabilities_name_3
  }

  capabilities {
    name = var.azure_cosmosdb_account_capabilities_name_4
  }

  ###############################################################################
  #       Consistency Policy Options configures the database consistency
  ###############################################################################

  consistency_policy {
    consistency_level       = var.azure_cosmosdb_account_consistency_level
    max_interval_in_seconds = var.azure_cosmosdb_account_max_interval_in_seconds
    max_staleness_prefix    = var.azure_cosmosdb_account_max_staleness_prefix
  }

  ###############################################################################
  #                    High availability Options
  ###############################################################################

  geo_location {
    location          = var.azure_cosmosdb_account_geo_location_location_1
    failover_priority = var.azure_cosmosdb_account_geo_location_failover_priority_1
  }

  geo_location {
    location          = var.azure_cosmosdb_account_geo_location_location_2
    failover_priority = var.azure_cosmosdb_account_geo_location_failover_priority_2
  }
  tags = var.tags
}
