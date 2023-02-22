resource "azurerm_container_registry" "coe_azure_container_registry" {
  name                = var.azure_container_registry_name
  resource_group_name = var.azure_resource_group_name
  location            = var.azure_resource_group_location
  sku                 = var.azure_container_registry_sku
  admin_enabled       = var.azure_container_registry_admin_enabled
  ################################################################################
  # High Availability features
  #################################################################################
  georeplications {
    location                = var.azure_container_registry_georeplication_location_1
    zone_redundancy_enabled = var.azure_container_registry_georeplication_zone_redundancy_enabled_1
    tags                    = var.tags
  }
}