#####################################################################################################################
#           Global Variables
#####################################################################################################################
env                                                                = "dev01"
project                                                            = "coe"
primary_region                                                     = "us-west"
secondary_region                                                   = "us-east"
####################################################################################################################
#           Resource Group
####################################################################################################################
azure_resource_group_name                                          = "rg-latam-modernization-peru-westus-001"
azure_resource_group_location                                      = "West US"
###################################################################################################################
#           Azure Storage Account
###################################################################################################################
azure_storage_account_name                                         = "azeu2stacd01"
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
azure_container_registry_name                                      = "azeu2acrd01"
azure_container_registry_sku                                       = "Premium"
azure_container_registry_admin_enabled                             = false
azure_container_registry_georeplication_location_1                 = "East US"
azure_container_registry_georeplication_zone_redundancy_enabled_1  = true
###################################################################################################################
#           Azure Cosmos DB
###################################################################################################################
azure_cosmosdb_account_name                                        = "azwe2cdbd01"
azure_cosmosdb_account_offer_type                                  = "Standard"
azure_cosmosdb_account_kind                                        = "MongoDB"
azure_cosmosdb_account_enable_automatic_failover                   = true
azure_cosmosdb_account_capabilities_name_1                         = "EnableAggregationPipeline"
azure_cosmosdb_account_capabilities_name_2                         = "mongoEnableDocLevelTTL"
azure_cosmosdb_account_capabilities_name_3                         = "MongoDBv3.4"
azure_cosmosdb_account_capabilities_name_4                         = "EnableMongo"
azure_cosmosdb_account_consistency_level                           = "BoundedStaleness"
azure_cosmosdb_account_max_interval_in_seconds                     = 300
azure_cosmosdb_account_max_staleness_prefix                        = 100000
azure_cosmosdb_account_geo_location_location_1                     = "eastus"
azure_cosmosdb_account_geo_location_failover_priority_1            = 1
azure_cosmosdb_account_geo_location_location_2                     = "westus"
azure_cosmosdb_account_geo_location_failover_priority_2            = 0
###################################################################################################################
#           Azure Key Vault
###################################################################################################################
azure_key_vault_name                                               = "keyvault-test-coe-341"
azure_key_vault_enabled_for_disk_encryption                        = true
azure_key_vault_soft_delete_retention_days                         = 7
azure_key_vault_purge_protection_enabled                           = false
azure_key_vault_sku_name                                           = "standard"
azure_key_vault_access_policy_key_permissions                      = "Get"
azure_key_vault_access_policy_secret_permissions                   = "Get"
azure_key_vault_access_policy_storage_permissions                  = "Get"
###################################################################################################################
#           Security Group
###################################################################################################################
azure_network_security_group_name                                  = "security-group-name-coe"
azure_network_security_group_name_nsg_rules_inbound                = [
  {
    name                                                           = "AllowWebIn"
    priority                                                       = 100
    direction                                                      = "Inbound"
    access                                                         = "Allow"
    protocol                                                       = "Tcp"
    source_port_range                                              = "*"
    destination_port_range                                         = "80"
    source_address_prefix                                          = "*"
    destination_address_prefix                                     = "*"
  },
  {
    name                                                           = "AllowSSLIn"
    priority                                                       = 110
    direction                                                      = "Inbound"
    access                                                         = "Allow"
    protocol                                                       = "Tcp"
    source_port_range                                              = "*"
    destination_port_range                                         = "443"
    source_address_prefix                                          = "*"
    destination_address_prefix                                     = "*"
  },
  {
    name                                                           = "AllowRDPIn"
    priority                                                       = 120
    direction                                                      = "Inbound"
    access                                                         = "Allow"
    protocol                                                       = "Tcp"
    source_port_range                                              = "*"
    destination_port_range                                         = "3389"
    source_address_prefix                                          = "*"
    destination_address_prefix                                     = "*"
  }
]
azure_network_security_group_name_nsg_rules_outbound                = [
  {
    name                                                           = "AllowWebOut"
    priority                                                       = 100
    direction                                                      = "Outbound"
    access                                                         = "Allow"
    protocol                                                       = "Tcp"
    source_port_range                                              = "*"
    destination_port_range                                         = "80"
    source_address_prefix                                          = "*"
    destination_address_prefix                                     = "*"
  },
  {
    name                                                           = "AllowSSLOut"
    priority                                                       = 110
    direction                                                      = "Outbound"
    access                                                         = "Allow"
    protocol                                                       = "Tcp"
    source_port_range                                              = "*"
    destination_port_range                                         = "443"
    source_address_prefix                                          = "*"
    destination_address_prefix                                     = "*"
  }
]
###################################################################################################################
#           Azure Networking  - Vnet - Subnet
###################################################################################################################
azure_vnet_name                                                    = "azwe2vnetd01"
azure_vnet_address_space                                           = ["10.0.0.0/16"]
azure_vnet_dns_servers                                             = ["10.0.0.4", "10.0.0.5"]
azure_vnet_private_subnet_name                                     = "private-subnet"
azure_vnet_private_subnet_address_prefixes                         = ["10.0.1.0/24","10.0.2.0/24"]
azure_vnet_public_subnet_name                                      = "public-subnet"
azure_vnet_public_subnet_address_prefixes                          = ["10.0.3.0/24","10.0.4.0/24"]
#Public IP Configuration
azure_public_ip_name                                               = "azwe2-nat-gateway-public-ip-d01"
azure_public_ip_name_allocation_method                             = "Static"
azure_public_ip_sku                                                = "Standard"
#azure_public_ip_zones                                              = ["3"]
azure_public_ip_sku_tier                                           = "Regional"
#azure_public_ip_version                                           = "IPv6"
#Public IP Prefix
azure_public_ip_prefix_name                                        = "azwe2-nat-gateway-public-prefix-ip-d01"
azure_public_ip_prefix_length                                      = 30
#azure_public_ip_prefix_zones                                       = ["3"]
#Nat Gateway Configuration
azure_nat_gateway_name                                             = "azwe2natgd01"
azure_nat_gateway_sku_name                                         = "Standard"
azure_nat_gateway_idle_timeout_in_minutes                          = 10
#azure_nat_gateway_zones                                            = ["3"]
###################################################################################################################
#           Azure Kubernetes Cluster
###################################################################################################################
azure_kubernetes_private_dns_zone_name                             = "privatelink.westus2.azmk8s.io"
azure_kubernetes_user_assigned_identity_name                       = "aks-example-identity"
azure_kubernetes_role_assignment_role_definition_name              = "Private DNS Zone Contributor"
azure_kubernetes_cluster_name                                      = "example-aks1"
azure_kubernetes_cluster_dns_prefix                                = "exampleaks1"
azure_kubernetes_cluster_private_cluster_enabled                   = true
azure_kubernetes_cluster_default_node_pool_name                    = "default-pool-name"
azure_kubernetes_cluster_default_node_pool_vm_size                 = "Standard_D2_v2"
azure_kubernetes_cluster_default_node_pool_enable_auto_scaling     = true
azure_kubernetes_cluster_default_node_pool_type                    = "VirtualMachineScaleSets"
azure_kubernetes_cluster_default_node_pool_node_count              = 1
azure_kubernetes_cluster_default_node_pool_max_count               = 2
azure_kubernetes_cluster_default_node_pool_min_count               = 1
azure_kubernetes_cluster_identity_type                             = "SystemAssigned"