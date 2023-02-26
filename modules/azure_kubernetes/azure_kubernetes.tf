resource "azurerm_kubernetes_cluster" "coe_azure_kubernetes_cluster" {
  name                          = var.azure_kubernetes_cluster_name
  kubernetes_version            = var.azure_kubernetes_cluster_kubernetes_version
  sku_tier                      = var.azure_kubernetes_cluster_sku_tier
  location                      = var.azure_resource_group_location
  resource_group_name           = var.azure_resource_group_name
  dns_prefix                    = var.azure_kubernetes_cluster_dns_prefix
  private_cluster_enabled       = var.azure_kubernetes_cluster_private_cluster_enabled
  public_network_access_enabled = var.azure_kubernetes_cluster_public_network_access_enabled
  tags                          = var.tags
  ##################################################################
  # High Availability  Options
  ##################################################################

  auto_scaler_profile {
    balance_similar_node_groups = var.azure_kubernetes_cluster_auto_scaler_profile_balance_similar_node_groups
    expander                    = var.azure_kubernetes_cluster_auto_scaler_profile_expander
  }

  ##################################################################
  # Security Options
  ##################################################################
  role_based_access_control_enabled = var.azure_kubernetes_cluster_role_based_access_control_enabled

  api_server_access_profile {
    authorized_ip_ranges = var.azure_kubernetes_cluster_api_server_access_profile_authorized_ip_ranges
  }

  service_principal {
    client_id     = var.azure_kubernetes_cluster_service_principal_client_id
    client_secret = var.azure_kubernetes_cluster_service_principal_client_secret
  }

  ##################################################################
  # Default Node Pool Options
  ##################################################################

  default_node_pool {
    name                = var.azure_kubernetes_cluster_default_node_pool_name
    node_count          = var.azure_kubernetes_cluster_default_node_pool_node_count
    vm_size             = var.azure_kubernetes_cluster_default_node_pool_vm_size
    enable_auto_scaling = var.azure_kubernetes_cluster_default_node_pool_enable_auto_scaling
    max_count           = var.azure_kubernetes_cluster_default_node_pool_max_count
    min_count           = var.azure_kubernetes_cluster_default_node_pool_min_count
    type                = var.azure_kubernetes_cluster_default_node_pool_type
    scale_down_mode     = var.azure_kubernetes_cluster_default_node_pool_scale_down_mode
    tags                = var.tags_node_pool
  }
}