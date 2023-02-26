
variable "azure_kubernetes_cluster_name" {
  description = "(Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created"
  type        = string
}

variable "azure_kubernetes_cluster_kubernetes_version" {
  description = "(Optional) Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as 1.22 are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in the documentation."
  type        = string
}

variable "azure_kubernetes_cluster_sku_tier" {
  description = "(Optional) The SKU Tier that should be used for this Kubernetes Cluster. Possible values are Free and Paid (which includes the Uptime SLA). Defaults to Free."
  type        = string
}

variable "azure_resource_group_location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_resource_group_name" {
  description = "(Required) The name of the resource group in which the AKS is created. Changing this forces a new resource to be created."
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

variable "azure_kubernetes_cluster_public_network_access_enabled" {
  description = "(Optional) Whether public network access is allowed for this Kubernetes Cluster. Defaults to true. Changing this forces a new resource to be created."
  type        = bool
}

variable "azure_kubernetes_cluster_auto_scaler_profile_balance_similar_node_groups" {
  description = "(Optional) Detect similar node groups and balance the number of nodes between them. Defaults to false."
  type        = bool
}

variable "azure_kubernetes_cluster_auto_scaler_profile_expander" {
  description = "(Optional) Expander to use. Possible values are least-waste, priority, most-pods and random. Defaults to random."
  type        = string
}

variable "azure_kubernetes_cluster_role_based_access_control_enabled" {
  description = "(Optional) Whether Role Based Access Control for the Kubernetes Cluster should be enabled. Defaults to true. Changing this forces a new resource to be created."
  type        = bool
}

variable "azure_kubernetes_cluster_api_server_access_profile_authorized_ip_ranges" {
  description = "(Optional) Set of authorized IP ranges to allow access to API server, e.g. [198.51.100.0/24]."
  type        = list(string)
}

variable "azure_kubernetes_cluster_service_principal_client_id" {
  description = "(Required) The Client ID for the Service Principal."
  type        = string
}

variable "azure_kubernetes_cluster_service_principal_client_secret" {
  description = "(Required) The Client Secret for the Service Principal."
  type        = string
}

variable "azure_kubernetes_cluster_default_node_pool_name" {
  description = "(Required) The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_kubernetes_cluster_default_node_pool_node_count" {
  description = "(Optional) The initial number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000 and between min_count and max_count."
  type        = number
}

variable "azure_kubernetes_cluster_default_node_pool_vm_size" {
  description = "(Required) The size of the Virtual Machine, such as Standard_DS2_v2. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_kubernetes_cluster_default_node_pool_enable_auto_scaling" {
  description = "(Optional) Should the Kubernetes Auto Scaler be enabled for this Node Pool?"
  type        = bool
}

variable "azure_kubernetes_cluster_default_node_pool_max_count" {
  description = "(Optional) The maximum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000."
  type        = number
}

variable "azure_kubernetes_cluster_default_node_pool_min_count" {
  description = "(Optional) The minimum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000."
  type        = number
}

variable "azure_kubernetes_cluster_default_node_pool_type" {
  description = "(Required) Specifies the type of Managed Service Identity that should be configured on this Kubernetes Cluster. Possible values are SystemAssigned or UserAssigned."
  type        = string
}

variable "azure_kubernetes_cluster_default_node_pool_scale_down_mode" {
  description = "(Optional) Specifies the autoscaling behaviour of the Kubernetes Cluster. Allowed values are Delete and Deallocate. Defaults to Delete."
  type        = string
}

variable "tags_node_pool" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = map(string)
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}