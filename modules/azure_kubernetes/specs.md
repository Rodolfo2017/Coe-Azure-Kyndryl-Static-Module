## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Module

<h2> azure_kubernetes</h2>

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.coe_azure_kubernetes_cluster](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_kubernetes_cluster_api_server_access_profile_authorized_ip_ranges"></a> [azure\_kubernetes\_cluster\_api\_server\_access\_profile\_authorized\_ip\_ranges](#input\_azure\_kubernetes\_cluster\_api\_server\_access\_profile\_authorized\_ip\_ranges) | (Optional) Set of authorized IP ranges to allow access to API server, e.g. [198.51.100.0/24]. | `list(string)` | n/a | no |
| <a name="input_azure_kubernetes_cluster_auto_scaler_profile_balance_similar_node_groups"></a> [azure\_kubernetes\_cluster\_auto\_scaler\_profile\_balance\_similar\_node\_groups](#input\_azure\_kubernetes\_cluster\_auto\_scaler\_profile\_balance\_similar\_node\_groups) | (Optional) Detect similar node groups and balance the number of nodes between them. Defaults to false. | `bool` | false | no |
| <a name="input_azure_kubernetes_cluster_auto_scaler_profile_expander"></a> [azure\_kubernetes\_cluster\_auto\_scaler\_profile\_expander](#input\_azure\_kubernetes\_cluster\_auto\_scaler\_profile\_expander) | (Optional) Expander to use. Possible values are least-waste, priority, most-pods and random. Defaults to random. | `string` | n/a | no |
| <a name="input_azure_kubernetes_cluster_default_node_pool_enable_auto_scaling"></a> [azure\_kubernetes\_cluster\_default\_node\_pool\_enable\_auto\_scaling](#input\_azure\_kubernetes\_cluster\_default\_node\_pool\_enable\_auto\_scaling) | (Optional) Should the Kubernetes Auto Scaler be enabled for this Node Pool? | `bool` | n/a | no |
| <a name="input_azure_kubernetes_cluster_default_node_pool_max_count"></a> [azure\_kubernetes\_cluster\_default\_node\_pool\_max\_count](#input\_azure\_kubernetes\_cluster\_default\_node\_pool\_max\_count) | (Optional) The maximum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000. | `number` | n/a | no |
| <a name="input_azure_kubernetes_cluster_default_node_pool_min_count"></a> [azure\_kubernetes\_cluster\_default\_node\_pool\_min\_count](#input\_azure\_kubernetes\_cluster\_default\_node\_pool\_min\_count) | (Optional) The minimum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000. | `number` | n/a | no |
| <a name="input_azure_kubernetes_cluster_default_node_pool_name"></a> [azure\_kubernetes\_cluster\_default\_node\_pool\_name](#input\_azure\_kubernetes\_cluster\_default\_node\_pool\_name) | (Required) The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_kubernetes_cluster_default_node_pool_node_count"></a> [azure\_kubernetes\_cluster\_default\_node\_pool\_node\_count](#input\_azure\_kubernetes\_cluster\_default\_node\_pool\_node\_count) | (Optional) The initial number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000 and between min\_count and max\_count. | `number` | n/a | no |
| <a name="input_azure_kubernetes_cluster_default_node_pool_scale_down_mode"></a> [azure\_kubernetes\_cluster\_default\_node\_pool\_scale\_down\_mode](#input\_azure\_kubernetes\_cluster\_default\_node\_pool\_scale\_down\_mode) | (Optional) Specifies the autoscaling behaviour of the Kubernetes Cluster. Allowed values are Delete and Deallocate. Defaults to Delete. | `string` | Delete | no |
| <a name="input_azure_kubernetes_cluster_default_node_pool_type"></a> [azure\_kubernetes\_cluster\_default\_node\_pool\_type](#input\_azure\_kubernetes\_cluster\_default\_node\_pool\_type) | (Required) Specifies the type of Managed Service Identity that should be configured on this Kubernetes Cluster. Possible values are SystemAssigned or UserAssigned. | `string` | n/a | yes |
| <a name="input_azure_kubernetes_cluster_default_node_pool_vm_size"></a> [azure\_kubernetes\_cluster\_default\_node\_pool\_vm\_size](#input\_azure\_kubernetes\_cluster\_default\_node\_pool\_vm\_size) | (Required) The size of the Virtual Machine, such as Standard\_DS2\_v2. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_kubernetes_cluster_dns_prefix"></a> [azure\_kubernetes\_cluster\_dns\_prefix](#input\_azure\_kubernetes\_cluster\_dns\_prefix) | (Optional) DNS prefix specified when creating the managed cluster. Changing this forces a new resource to be created. | `string` | n/a | no |
| <a name="input_azure_kubernetes_cluster_kubernetes_version"></a> [azure\_kubernetes\_cluster\_kubernetes\_version](#input\_azure\_kubernetes\_cluster\_kubernetes\_version) | (Optional) Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as 1.22 are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in the documentation. | `string` | n/a | no |
| <a name="input_azure_kubernetes_cluster_name"></a> [azure\_kubernetes\_cluster\_name](#input\_azure\_kubernetes\_cluster\_name) | (Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_azure_kubernetes_cluster_private_cluster_enabled"></a> [azure\_kubernetes\_cluster\_private\_cluster\_enabled](#input\_azure\_kubernetes\_cluster\_private\_cluster\_enabled) | (Optional) Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to false. Changing this forces a new resource to be created. | `bool` | n/a | no |
| <a name="input_azure_kubernetes_cluster_public_network_access_enabled"></a> [azure\_kubernetes\_cluster\_public\_network\_access\_enabled](#input\_azure\_kubernetes\_cluster\_public\_network\_access\_enabled) | (Optional) Whether public network access is allowed for this Kubernetes Cluster. Defaults to true. Changing this forces a new resource to be created. | `bool` | n/a | no |
| <a name="input_azure_kubernetes_cluster_role_based_access_control_enabled"></a> [azure\_kubernetes\_cluster\_role\_based\_access\_control\_enabled](#input\_azure\_kubernetes\_cluster\_role\_based\_access\_control\_enabled) | (Optional) Whether Role Based Access Control for the Kubernetes Cluster should be enabled. Defaults to true. Changing this forces a new resource to be created. | `bool` | n/a | no |
| <a name="input_azure_kubernetes_cluster_service_principal_client_id"></a> [azure\_kubernetes\_cluster\_service\_principal\_client\_id](#input\_azure\_kubernetes\_cluster\_service\_principal\_client\_id) | (Required) The Client ID for the Service Principal. | `string` | n/a | yes |
| <a name="input_azure_kubernetes_cluster_service_principal_client_secret"></a> [azure\_kubernetes\_cluster\_service\_principal\_client\_secret](#input\_azure\_kubernetes\_cluster\_service\_principal\_client\_secret) | (Required) The Client Secret for the Service Principal. | `string` | n/a | yes |
| <a name="input_azure_kubernetes_cluster_sku_tier"></a> [azure\_kubernetes\_cluster\_sku\_tier](#input\_azure\_kubernetes\_cluster\_sku\_tier) | (Optional) The SKU Tier that should be used for this Kubernetes Cluster. Possible values are Free and Paid (which includes the Uptime SLA). Defaults to Free. | `string` | n/a | no |
| <a name="input_azure_resource_group_location"></a> [azure\_resource\_group\_location](#input\_azure\_resource\_group\_location) | (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_resource_group_name"></a> [azure\_resource\_group\_name](#input\_azure\_resource\_group\_name) | (Required) The name of the resource group in which the AKS is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_tags_node_pool"></a> [tags\_node\_pool](#input\_tags\_node\_pool) | (Optional) A mapping of tags to assign to the resource. | `map(string)` | n/a | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_certificate"></a> [client\_certificate](#output\_client\_certificate) | n/a |
| <a name="output_kube_config"></a> [kube\_config](#output\_kube\_config) | n/a |
| <a name="output_kubernetes_cluster_id"></a> [kubernetes\_cluster\_id](#output\_kubernetes\_cluster\_id) | The Kubernetes Managed Cluster ID. |
