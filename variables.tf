#########################################################################################
#             Global Variables
########################################################################################
variable "env" {}
variable "project" {}
variable "primary_region" {}
variable "secondary_region" {}
########################################################################################
#         Azure Resource Group Global Variables
########################################################################################
variable "azure_resource_group_name"{}
variable "azure_resource_group_location"{}
#######################################################################################
#                     Azure Storage Account
#######################################################################################
variable "azure_storage_account_name"{}
variable "azure_storage_account_account_kind"{}
variable "azure_storage_account_tier"{}
variable "azure_storage_access_tier" {}
variable "azure_storage_account_replication_type"{}
variable "azure_storage_account_enable_https_traffic_only"{}
variable "azure_storage_account_min_tls_version"{}
variable "azure_storage_account_blob_properties_delete_retention_policy_days"{}
variable "azure_storage_account_blob_properties_versioning_enabled"{}
variable "azure_storage_account_network_rules_default_action"{}
variable "azure_storage_account_network_rules_ip_rules"{}
######################################################################################
#                     Azure Container Registry
######################################################################################
variable "azure_container_registry_name"{}
variable "azure_container_registry_sku" {}
variable "azure_container_registry_admin_enabled"{}
variable "azure_container_registry_georeplication_location_1"{}
variable "azure_container_registry_georeplication_zone_redundancy_enabled_1"{}
######################################################################################
#                     Azure Cosmos DB
######################################################################################
variable "azure_cosmosdb_account_name"{}
variable "azure_cosmosdb_account_offer_type"{}
variable "azure_cosmosdb_account_kind"{}
variable "azure_cosmosdb_account_enable_automatic_failover"{}
variable "azure_cosmosdb_account_capabilities_name_1"{}
variable "azure_cosmosdb_account_capabilities_name_2"{}
variable "azure_cosmosdb_account_capabilities_name_3"{}
variable "azure_cosmosdb_account_capabilities_name_4"{}
variable "azure_cosmosdb_account_consistency_level"{}
variable "azure_cosmosdb_account_max_interval_in_seconds"{}
variable "azure_cosmosdb_account_max_staleness_prefix"{}
variable "azure_cosmosdb_account_geo_location_location_1"{}
variable "azure_cosmosdb_account_geo_location_failover_priority_1"{}
variable "azure_cosmosdb_account_geo_location_location_2"{}
variable "azure_cosmosdb_account_geo_location_failover_priority_2"{}
######################################################################################
#                     Azure Key Vault
######################################################################################
variable "azure_key_vault_name"{}
variable "azure_key_vault_enabled_for_disk_encryption"{}
variable "azure_key_vault_soft_delete_retention_days"{}
variable "azure_key_vault_purge_protection_enabled"{}
variable "azure_key_vault_sku_name"{}
variable "azure_key_vault_access_policy_key_permissions"{}
variable "azure_key_vault_access_policy_secret_permissions"{}
variable "azure_key_vault_access_policy_storage_permissions"{}
######################################################################################
#                    Network Security Group
######################################################################################
variable "azure_network_security_group_name"{}
variable "azure_network_security_group_name_nsg_rules_inbound" {}
variable "azure_network_security_group_name_nsg_rules_outbound" {}
######################################################################################
#                    Networking
######################################################################################
variable "azure_vnet_name"{}
variable "azure_vnet_address_space"{}
variable "azure_vnet_dns_servers"{}
variable "azure_vnet_private_subnet_name"{}
variable "azure_vnet_private_subnet_address_prefixes"{}
variable "azure_vnet_public_subnet_name"{}
variable "azure_vnet_public_subnet_address_prefixes"{}
#Public IP Configuration
variable "azure_public_ip_name"{}
variable "azure_public_ip_name_allocation_method"{}
variable "azure_public_ip_sku"{}
#variable "azure_public_ip_zones"{}
variable "azure_public_ip_sku_tier"{}
#variable "azure_public_ip_version"{}
#Public IP Prefix
variable "azure_public_ip_prefix_name"{}
variable "azure_public_ip_prefix_length"{}
#variable "azure_public_ip_prefix_zones"{}
#Nat Gateway Configuration
variable "azure_nat_gateway_name"{}
variable "azure_nat_gateway_sku_name"{}
variable "azure_nat_gateway_idle_timeout_in_minutes"{}
#variable "azure_nat_gateway_zones"{}
######################################################################################
#                    Kubernetes Cluster
######################################################################################
variable "azure_kubernetes_private_dns_zone_name"{}
variable "azure_kubernetes_user_assigned_identity_name"{}
variable "azure_kubernetes_role_assignment_role_definition_name"{}
variable "azure_kubernetes_cluster_name"{}
variable "azure_kubernetes_cluster_dns_prefix"{}
variable "azure_kubernetes_cluster_private_cluster_enabled"{}
variable "azure_kubernetes_cluster_default_node_pool_name"{}
variable "azure_kubernetes_cluster_default_node_pool_vm_size"{}
variable "azure_kubernetes_cluster_default_node_pool_enable_auto_scaling"{}
variable "azure_kubernetes_cluster_default_node_pool_type"{}
variable "azure_kubernetes_cluster_default_node_pool_node_count"{}
variable "azure_kubernetes_cluster_default_node_pool_max_count"{}
variable "azure_kubernetes_cluster_default_node_pool_min_count"{}
variable "azure_kubernetes_cluster_identity_type"{}