variable "azure_kubernetes_private_dns_zone_name" {
  description = "(Required) azure_kubernetes_private_dns_zone_name"
  type        = string
}

variable "azure_kubernetes_user_assigned_identity_name" {
  description = "(Required) azure_kubernetes_user_assigned_identity_name"
  type        = string
}

variable "azure_kubernetes_role_assignment_role_definition_name" {
  description = "(Required) azure_kubernetes_role_assignment_role_definition_name"
  type        = string
}

variable "azure_kubernetes_cluster_name" {
  description = "(Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_resource_group_name" {
  description = "(Required) The name of the resource group in which to create the storage account. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_resource_group_location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_kubernetes_cluster_dns_prefix" {
  description = "(Optional) DNS prefix specified when creating the managed cluster. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_kubernetes_cluster_private_cluster_enabled" {
  description = "(Optional) Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to false. Changing this forces a new resource to be created."
  type        = bool
}

variable "azure_kubernetes_cluster_default_node_pool_name" {
  description = "(Required) The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_kubernetes_cluster_default_node_pool_vm_size" {
  description = "(Required) The size of the Virtual Machine, such as Standard_DS2_v2. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_kubernetes_cluster_default_node_pool_enable_auto_scaling" {
  description = "(Optional) Should the Kubernetes Auto Scaler be enabled for this Node Pool?"
  type        = bool
}

variable "azure_kubernetes_cluster_default_node_pool_type" {
  description = "(Optional) The type of Node Pool which should be created. Possible values are AvailabilitySet and VirtualMachineScaleSets. Defaults to VirtualMachineScaleSets. Changing this forces a new resource to be created."
  type        =  string
}

variable "azure_kubernetes_cluster_default_node_pool_node_count" {
  description = "(Optional) The initial number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000 and between min_count and max_count."
  type        = number
}

variable "azure_kubernetes_cluster_default_node_pool_max_count" {
  description = "(Optional) The maximum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000."
  type        = number
}

variable "azure_kubernetes_cluster_default_node_pool_min_count" {
  description = "(Optional) The minimum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000."
  type        = number
}

variable "azure_kubernetes_cluster_default_node_pool_vnet_subnet_id" {
  description = "The ID of a Subnet where the Kubernetes Node Pool should exist. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_kubernetes_cluster_identity_type" {
  description = "(Required) Specifies the type of Managed Service Identity that should be configured on this Kubernetes Cluster. Possible values are SystemAssigned or UserAssigned."
  type        = string
}

variable "tags" {
  description = "Tags to assign to the bucket."
  type        = map(string)
  default     = {}
}