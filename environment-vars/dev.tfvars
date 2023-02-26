#####################################################################################################################
#           Global Variables
#####################################################################################################################
env              = "dev01"
cloud            = "az"
region           = "uw2"
project          = "coe"
primary_region   = "us-west"
secondary_region = "us-east"
####################################################################################################################
#           Resource Group
####################################################################################################################
azure_resource_group_name     = "rg-latam-modernization-peru-westus-001"
azure_resource_group_location = "West US"
###################################################################################################################
#           Azure Storage Account
###################################################################################################################
azure_storage_account_name                                         = "azuw2stacd01"
azure_storage_account_account_kind                                 = "StorageV2"
azure_storage_account_tier                                         = "Standard"
azure_storage_access_tier                                          = "Hot"
azure_storage_account_replication_type                             = "GRS"
azure_storage_account_enable_https_traffic_only                    = true
azure_storage_account_min_tls_version                              = "TLS1_2"
azure_storage_account_blob_properties_delete_retention_policy_days = 5
azure_storage_account_blob_properties_versioning_enabled           = true
azure_storage_account_network_rules_default_action                 = "Allow"
azure_storage_account_network_rules_ip_rules                       = ["100.0.0.1"]
###################################################################################################################
#           Azure Container Registry
###################################################################################################################
azure_container_registry_name                                     = "azuw2acrd01"
azure_container_registry_sku                                      = "Premium"
azure_container_registry_admin_enabled                            = false
azure_container_registry_georeplication_location_1                = "East US"
azure_container_registry_georeplication_zone_redundancy_enabled_1 = true
###################################################################################################################
#           Azure Cosmos DB
###################################################################################################################
azure_cosmosdb_account_name                             = "azuw2cdbd01"
azure_cosmosdb_account_offer_type                       = "Standard"
azure_cosmosdb_account_kind                             = "MongoDB"
azure_cosmosdb_account_enable_automatic_failover        = true
azure_cosmosdb_account_capabilities_name_1              = "EnableAggregationPipeline"
azure_cosmosdb_account_capabilities_name_2              = "mongoEnableDocLevelTTL"
azure_cosmosdb_account_capabilities_name_3              = "MongoDBv3.4"
azure_cosmosdb_account_capabilities_name_4              = "EnableMongo"
azure_cosmosdb_account_consistency_level                = "BoundedStaleness"
azure_cosmosdb_account_max_interval_in_seconds          = 300
azure_cosmosdb_account_max_staleness_prefix             = 100000
azure_cosmosdb_account_geo_location_location_1          = "eastus"
azure_cosmosdb_account_geo_location_failover_priority_1 = 1
azure_cosmosdb_account_geo_location_location_2          = "westus"
azure_cosmosdb_account_geo_location_failover_priority_2 = 0
###################################################################################################################
#           Azure Key Vault
###################################################################################################################
azure_key_vault_name                              = "azuw2kevd01"
azure_key_vault_enabled_for_disk_encryption       = true
azure_key_vault_soft_delete_retention_days        = 7
azure_key_vault_purge_protection_enabled          = false
azure_key_vault_sku_name                          = "standard"
azure_key_vault_access_policy_key_permissions     = "Get"
azure_key_vault_access_policy_secret_permissions  = "Get"
azure_key_vault_access_policy_storage_permissions = "Get"
###################################################################################################################
#           Security Group
###################################################################################################################
azure_network_security_group_name = "azuw2segd01"
azure_network_security_group_name_nsg_rules_inbound = [
  {
    name                       = "AllowWebIn"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  {
    name                       = "AllowSSLIn"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  {
    name                       = "AllowRDPIn"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
]
azure_network_security_group_name_nsg_rules_outbound = [
  {
    name                       = "AllowWebOut"
    priority                   = 100
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  {
    name                       = "AllowSSLOut"
    priority                   = 110
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
]
###################################################################################################################
#           Azure Networking  - Vnet - Subnet
###################################################################################################################
azure_vnet_name                            = "azuw2vnetd01"
azure_vnet_address_space                   = ["10.1.0.0/16"]
azure_vnet_dns_servers                     = ["10.1.0.4", "10.1.0.5"]
azure_vnet_private_subnet_name             = "private-subnet"
azure_vnet_private_subnet_address_prefixes = ["10.1.1.0/24"]
azure_vnet_public_subnet_name              = "public-subnet"
azure_vnet_public_subnet_address_prefixes  = ["10.1.3.0/24"]
#Public IP Configuration
azure_public_ip_name                   = "azuw2natgatewaypublicipd01"
azure_public_ip_name_allocation_method = "Static"
azure_public_ip_sku                    = "Standard"
azure_public_ip_sku_tier = "Regional"
#Public IP Prefix
azure_public_ip_prefix_name   = "azuw2natgatewaypublicprefixipd01"
azure_public_ip_prefix_length = 30
#Nat Gateway Configuration
azure_nat_gateway_name                    = "azuw2natgd01"
azure_nat_gateway_sku_name                = "Standard"
azure_nat_gateway_idle_timeout_in_minutes = 10
###################################################################################################################
#           Azure Kubernetes Cluster
###################################################################################################################
azure_kubernetes_cluster_name                                            = "azuw2aksd01"
azure_kubernetes_cluster_kubernetes_version                              = "1.24.9"
azure_kubernetes_cluster_sku_tier                                        = "Free"
azure_kubernetes_cluster_dns_prefix                                      = "uw2coeaks"
azure_kubernetes_cluster_private_cluster_enabled                         = false
azure_kubernetes_cluster_public_network_access_enabled                   = true
azure_kubernetes_cluster_auto_scaler_profile_balance_similar_node_groups = true
azure_kubernetes_cluster_auto_scaler_profile_expander                    = "priority"
azure_kubernetes_cluster_role_based_access_control_enabled               = true
azure_kubernetes_cluster_api_server_access_profile_authorized_ip_ranges  = ["0.0.0.0/32"]
azure_kubernetes_cluster_service_principal_client_id                     = "6fa04f34-4904-4620-8325-edc8d512380c"
azure_kubernetes_cluster_service_principal_client_secret                 = "kTQ8Q~ZN954q4WNLjy9hRLz~2nhIpCFrISoAIdx7"
azure_kubernetes_cluster_default_node_pool_name                          = "azuw2aksnode"
azure_kubernetes_cluster_default_node_pool_node_count                    = 1
azure_kubernetes_cluster_default_node_pool_vm_size                       = "Standard_D2_v2"
azure_kubernetes_cluster_default_node_pool_enable_auto_scaling           = true
azure_kubernetes_cluster_default_node_pool_max_count                     = 3
azure_kubernetes_cluster_default_node_pool_min_count                     = 1
azure_kubernetes_cluster_default_node_pool_type                          = "VirtualMachineScaleSets"
azure_kubernetes_cluster_default_node_pool_scale_down_mode               = "Delete"
tags_node_pool                                                           = "cluster-aks-coe-node-pool"
