#module "azure_resource_group"{
#  source = "./modules/azure_resource_group"
#  azure_resource_group_name              = "rg-latam-modernization-peru-westus-001"
#  azure_resource_group_location          = "West US"
#  #azure_resource_group_location          = var.azure_resource_group_location
#  tags = merge(
#     local.tags,
#     {
#       Name : "${var.env}-${var.project}-azeu2regrod01"
#       Createdby: "Kyndryl"
#     },
#   )
#}
module "azure_storage_account" {
  source                                                             = "./modules/azure_storage_account"
  azure_storage_account_name                                         = var.azure_storage_account_name
  azure_resource_group_name                                          = var.azure_resource_group_name
  azure_resource_group_location                                      = var.azure_resource_group_location
  azure_storage_account_account_kind                                 = var.azure_storage_account_account_kind
  azure_storage_account_tier                                         = var.azure_storage_account_tier
  azure_storage_access_tier                                          = var.azure_storage_access_tier
  azure_storage_account_replication_type                             = var.azure_storage_account_replication_type
  #Security Options
  azure_storage_account_enable_https_traffic_only                    = var.azure_storage_account_enable_https_traffic_only
  azure_storage_account_min_tls_version                              = var.azure_storage_account_min_tls_version
  azure_storage_account_blob_properties_delete_retention_policy_days = var.azure_storage_account_blob_properties_delete_retention_policy_days
  azure_storage_account_blob_properties_versioning_enabled           = var.azure_storage_account_blob_properties_versioning_enabled
  azure_storage_account_network_rules_default_action                 = var.azure_storage_account_network_rules_default_action
  azure_storage_account_network_rules_ip_rules                       = var.azure_storage_account_network_rules_ip_rules
  tags = merge(
     local.tags,
     {
       Name     : "${var.env}-${var.project}-azwe1stacd01"
       Createdby: "Kyndryl"
     },
  )
}

module "azure_container_registry" {
  source                                                            = "./modules/azure_container_registry"
  azure_container_registry_name                                     = var.azure_container_registry_name
  azure_resource_group_name                                         = var.azure_resource_group_name
  azure_resource_group_location                                     = var.azure_resource_group_location
  azure_container_registry_sku                                      = var.azure_container_registry_sku
  azure_container_registry_admin_enabled                            = var.azure_container_registry_admin_enabled
  #High Availability
  azure_container_registry_georeplication_location_1                = var.azure_container_registry_georeplication_location_1
  azure_container_registry_georeplication_zone_redundancy_enabled_1 = var.azure_container_registry_georeplication_zone_redundancy_enabled_1
  tags = merge(
     local.tags,
     {
       Name     : "${var.env}-${var.project}-azwe12acrd01"
       Createdby: "Kyndryl"
     },
  )
}

module "azure_cosmosdb"{
  source                                                            = "./modules/azure_cosmosdb"
  azure_cosmosdb_account_name                                       = var.azure_cosmosdb_account_name
  azure_resource_group_name                                         = var.azure_resource_group_name
  azure_resource_group_location                                     = var.azure_resource_group_location
  azure_cosmosdb_account_offer_type                                 = var.azure_cosmosdb_account_offer_type
  azure_cosmosdb_account_kind                                       = var.azure_cosmosdb_account_kind
  azure_cosmosdb_account_enable_automatic_failover                  = var.azure_cosmosdb_account_enable_automatic_failover
  azure_cosmosdb_account_capabilities_name_1                        = var.azure_cosmosdb_account_capabilities_name_1
  azure_cosmosdb_account_capabilities_name_2                        = var.azure_cosmosdb_account_capabilities_name_2
  azure_cosmosdb_account_capabilities_name_3                        = var.azure_cosmosdb_account_capabilities_name_3
  azure_cosmosdb_account_capabilities_name_4                        = var.azure_cosmosdb_account_capabilities_name_4
  azure_cosmosdb_account_consistency_level                          = var.azure_cosmosdb_account_consistency_level
  azure_cosmosdb_account_max_interval_in_seconds                    = var.azure_cosmosdb_account_max_interval_in_seconds
  azure_cosmosdb_account_max_staleness_prefix                       = var.azure_cosmosdb_account_max_staleness_prefix
  azure_cosmosdb_account_geo_location_location_1                    = var.azure_cosmosdb_account_geo_location_location_1
  azure_cosmosdb_account_geo_location_failover_priority_1           = var.azure_cosmosdb_account_geo_location_failover_priority_1
  azure_cosmosdb_account_geo_location_location_2                    = var.azure_cosmosdb_account_geo_location_location_2
  azure_cosmosdb_account_geo_location_failover_priority_2           = var.azure_cosmosdb_account_geo_location_failover_priority_2
  tags = merge(
     local.tags,
     {
       Name     : "${var.env}-${var.project}-azwe2cdbd01"
       Createdby: "Kyndryl"
     },
  )
}

module "azure_key_vault" {
  source                                                            = "./modules/azure_key_vault"
  azure_key_vault_name                                              = var.azure_key_vault_name
  azure_resource_group_name                                         = var.azure_resource_group_name
  azure_resource_group_location                                     = var.azure_resource_group_location
  azure_key_vault_enabled_for_disk_encryption                       = var.azure_key_vault_enabled_for_disk_encryption
  azure_key_vault_soft_delete_retention_days                        = var.azure_key_vault_soft_delete_retention_days
  azure_key_vault_purge_protection_enabled                          = var.azure_key_vault_purge_protection_enabled
  azure_key_vault_sku_name                                          = var.azure_key_vault_sku_name
  azure_key_vault_access_policy_key_permissions                     = var.azure_key_vault_access_policy_key_permissions
  azure_key_vault_access_policy_secret_permissions                  = var.azure_key_vault_access_policy_secret_permissions
  azure_key_vault_access_policy_storage_permissions                 = var.azure_key_vault_access_policy_storage_permissions
  tags = merge(
     local.tags,
     {
       Name     : "${var.env}-${var.project}-azwe2cdbd01"
       Createdby: "Kyndryl"
     },
  )
}

module "azure_security_group" {
  source                                                            = "./modules/azure_security_group"
  azure_network_security_group_name                                 = var.azure_network_security_group_name
  azure_resource_group_location                                     = var.azure_resource_group_location
  azure_resource_group_name                                         = var.azure_resource_group_name
  azure_network_security_group_name_nsg_rules_inbound               = var.azure_network_security_group_name_nsg_rules_inbound
  azure_network_security_group_name_nsg_rules_outbound              = var.azure_network_security_group_name_nsg_rules_outbound
  tags = merge(
     local.tags,
     {
       Name     : "${var.env}-${var.project}-azwe2segd01"
       Createdby: "Kyndryl"
     },
  )
}

module "azure_networking" {
  depends_on                                                        = [module.azure_security_group]
  source                                                            = "./modules/azure_networking"
  azure_vnet_name                                                   = var.azure_vnet_name
  azure_resource_group_location                                     = var.azure_resource_group_location
  azure_resource_group_name                                         = var.azure_resource_group_name
  azure_vnet_address_space                                          = var.azure_vnet_address_space
  azure_vnet_dns_servers                                            = var.azure_vnet_dns_servers
  azure_vnet_private_subnet_name                                    = var.azure_vnet_private_subnet_name
  azure_vnet_private_subnet_address_prefixes                        = var.azure_vnet_private_subnet_address_prefixes
  azure_vnet_private_subnet_security_group                          = module.azure_security_group.nsg_id
  azure_vnet_public_subnet_name                                     = var.azure_vnet_public_subnet_name
  azure_vnet_public_subnet_address_prefixes                         = var.azure_vnet_public_subnet_address_prefixes
#  azure_vnet_public_subnet_security_group                           = module.azure_security_group.nsg_id
  #Public IP Configuration
  azure_public_ip_name                                              = var.azure_public_ip_name
  azure_public_ip_name_allocation_method                            = var.azure_public_ip_name_allocation_method
  azure_public_ip_sku                                               = var.azure_public_ip_sku
  #azure_public_ip_zones                                             = var.azure_public_ip_zones
  azure_public_ip_sku_tier                                          = var.azure_public_ip_sku_tier
  #azure_public_ip_version                                           = var.azure_public_ip_version
  #Public IP Prefix
  azure_public_ip_prefix_name                                       = var.azure_public_ip_prefix_name
  azure_public_ip_prefix_length                                     = var.azure_public_ip_prefix_length
  #azure_public_ip_prefix_zones                                      = var.azure_public_ip_prefix_zones
  #Nat Gateway Configuration
  azure_nat_gateway_name                                            = var.azure_nat_gateway_name
  azure_nat_gateway_sku_name                                        = var.azure_nat_gateway_sku_name
  azure_nat_gateway_idle_timeout_in_minutes                         = var.azure_nat_gateway_idle_timeout_in_minutes
  #azure_nat_gateway_zones                                           = var.azure_nat_gateway_zones

  tags = merge(
     local.tags,
     {
       Name     : "${var.env}-${var.project}-azwe2vnetd01"
       Createdby: "Kyndryl"
     },
  )
}

module "azure_kubernetes" {
  depends_on                                                        = [module.azure_networking]
  source                                                            = "./modules/azure_kubernetes"
  azure_kubernetes_private_dns_zone_name                            = var.azure_kubernetes_private_dns_zone_name
  azure_kubernetes_user_assigned_identity_name                      = var.azure_kubernetes_user_assigned_identity_name
  azure_kubernetes_role_assignment_role_definition_name             = var.azure_kubernetes_role_assignment_role_definition_name
  azure_kubernetes_cluster_name                                     = var.azure_kubernetes_cluster_name
  azure_resource_group_location                                     = var.azure_resource_group_location
  azure_resource_group_name                                         = var.azure_resource_group_name
  azure_kubernetes_cluster_dns_prefix                               = var.azure_kubernetes_cluster_dns_prefix
  azure_kubernetes_cluster_private_cluster_enabled                  = var.azure_kubernetes_cluster_private_cluster_enabled
  azure_kubernetes_cluster_default_node_pool_name                   = var.azure_kubernetes_cluster_default_node_pool_name
  azure_kubernetes_cluster_default_node_pool_vm_size                = var.azure_kubernetes_cluster_default_node_pool_vm_size
  azure_kubernetes_cluster_default_node_pool_enable_auto_scaling    = var.azure_kubernetes_cluster_default_node_pool_enable_auto_scaling
  azure_kubernetes_cluster_default_node_pool_type                   = var.azure_kubernetes_cluster_default_node_pool_type
  azure_kubernetes_cluster_default_node_pool_node_count             = var.azure_kubernetes_cluster_default_node_pool_node_count
  azure_kubernetes_cluster_default_node_pool_max_count              = var.azure_kubernetes_cluster_default_node_pool_max_count
  azure_kubernetes_cluster_default_node_pool_min_count              = var.azure_kubernetes_cluster_default_node_pool_min_count
  azure_kubernetes_cluster_default_node_pool_vnet_subnet_id         = module.azure_networking.private_subnet_id
  azure_kubernetes_cluster_identity_type                            = var.azure_kubernetes_cluster_identity_type
  tags = merge(
     local.tags,
     {
       Name     : "${var.env}-${var.project}-azwe2aksd01"
       Createdby: "Kyndryl"
     },
  )
}