resource "azurerm_private_dns_zone" "coe_azure_kubernetes_private_dns_zone" {
  name                    = var.azure_kubernetes_private_dns_zone_name
  #name                    = "privatelink.eastus2.azmk8s.io"
  resource_group_name     = var.azure_resource_group_name
}

resource "azurerm_user_assigned_identity" "coe_azure_kubernetes_user_assigned_identity" {
  name                = var.azure_kubernetes_user_assigned_identity_name
  #name                = "aks-example-identity"
  resource_group_name = var.azure_resource_group_name
  location            = var.azure_resource_group_location
}

resource "azurerm_role_assignment" "coe_azure_kubernetes_role_assignment" {
  scope                = azurerm_private_dns_zone.coe_azure_kubernetes_private_dns_zone.id
  role_definition_name = var.azure_kubernetes_role_assignment_role_definition_name
  #role_definition_name = "Private DNS Zone Contributor"
  principal_id         = azurerm_user_assigned_identity.coe_azure_kubernetes_user_assigned_identity.id
}

resource "azurerm_kubernetes_cluster" "coe_azure_kubernetes_cluster" {
  name                    = var.azure_kubernetes_cluster_name
  location                = var.azure_resource_group_location
  resource_group_name     = var.azure_resource_group_name
  dns_prefix              = var.azure_kubernetes_cluster_dns_prefix
  private_cluster_enabled = var.azure_kubernetes_cluster_private_cluster_enabled
  private_dns_zone_id     = azurerm_private_dns_zone.coe_azure_kubernetes_private_dns_zone.id
  #name                   = "example-aks1"
  #location               = azurerm_resource_group.example.location
  #resource_group_name    = azurerm_resource_group.example.name
  #dns_prefix             = "exampleaks1"

  default_node_pool {
    name                  = var.azure_kubernetes_cluster_default_node_pool_name
    vm_size               = var.azure_kubernetes_cluster_default_node_pool_vm_size
    enable_auto_scaling   = var.azure_kubernetes_cluster_default_node_pool_enable_auto_scaling
    type                  = var.azure_kubernetes_cluster_default_node_pool_type
    node_count            = var.azure_kubernetes_cluster_default_node_pool_node_count
    max_count             = var.azure_kubernetes_cluster_default_node_pool_max_count
    min_count             = var.azure_kubernetes_cluster_default_node_pool_min_count
    vnet_subnet_id        = var.azure_kubernetes_cluster_default_node_pool_vnet_subnet_id
    #name       = "default"
    #node_count = 1
    #vm_size    = "Standard_D2_v2"
  }

  identity {
    type              = var.azure_kubernetes_cluster_identity_type
    #type = "SystemAssigned"
  }

  tags                = var.tags
}