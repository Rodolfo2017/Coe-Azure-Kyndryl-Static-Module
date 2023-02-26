## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

<h2>azure_networking</h2>

## Resources

| Name | Type |
|------|------|
| [azurerm_nat_gateway.coe_azure_nat_gateway](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/nat_gateway) | resource |
| [azurerm_nat_gateway_public_ip_association.coe_azure_nat_gateway_with_public_ip_association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/nat_gateway_public_ip_association) | resource |
| [azurerm_public_ip.coe_azure_public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_public_ip_prefix.coe_azure_public_ip_prefix](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip_prefix) | resource |
| [azurerm_subnet.coe_azure_private_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.coe_azure_public_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet_nat_gateway_association.coe_azure_nat_gateway_with_subnet_association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_nat_gateway_association) | resource |
| [azurerm_subnet_network_security_group_association.coe_azure_subnet_network_security_group_association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_virtual_network.coe_azure_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_nat_gateway_idle_timeout_in_minutes"></a> [azure\_nat\_gateway\_idle\_timeout\_in\_minutes](#input\_azure\_nat\_gateway\_idle\_timeout\_in\_minutes) | (Optional) The idle timeout which should be used in minutes. Defaults to 4. | `number` | 4 | no |
| <a name="input_azure_nat_gateway_name"></a> [azure\_nat\_gateway\_name](#input\_azure\_nat\_gateway\_name) | (Required) Specifies the name of the NAT Gateway. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_nat_gateway_sku_name"></a> [azure\_nat\_gateway\_sku\_name](#input\_azure\_nat\_gateway\_sku\_name) | (Optional) The SKU which should be used. At this time the only supported value is Standard. Defaults to Standard. | `string` | Standard | no |
| <a name="input_azure_public_ip_name"></a> [azure\_public\_ip\_name](#input\_azure\_public\_ip\_name) | (Required) Specifies the name of the Public IP. Changing this forces a new Public IP to be created. | `string` | n/a | yes |
| <a name="input_azure_public_ip_name_allocation_method"></a> [azure\_public\_ip\_name\_allocation\_method](#input\_azure\_public\_ip\_name\_allocation\_method) | (Required) Defines the allocation method for this IP address. Possible values are Static or Dynamic. | `string` | n/a | yes |
| <a name="input_azure_public_ip_prefix_length"></a> [azure\_public\_ip\_prefix\_length](#input\_azure\_public\_ip\_prefix\_length) | (Required) Specifies the name of the Public IP Prefix resource . Changing this forces a new resource to be created. | `number` | n/a | yes |
| <a name="input_azure_public_ip_prefix_name"></a> [azure\_public\_ip\_prefix\_name](#input\_azure\_public\_ip\_prefix\_name) | (Required) Specifies the name of the Public IP Prefix resource . Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_public_ip_sku"></a> [azure\_public\_ip\_sku](#input\_azure\_public\_ip\_sku) | (Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic. Changing this forces a new resource to be created. | `string` | Basic | no |
| <a name="input_azure_public_ip_sku_tier"></a> [azure\_public\_ip\_sku\_tier](#input\_azure\_public\_ip\_sku\_tier) | (Optional) The SKU Tier that should be used for the Public IP. Possible values are Regional and Global. Defaults to Regional. Changing this forces a new resource to be created. | `string` | Regional | no |
| <a name="input_azure_resource_group_location"></a> [azure\_resource\_group\_location](#input\_azure\_resource\_group\_location) | (Required) The location/region where the virtual network is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_resource_group_name"></a> [azure\_resource\_group\_name](#input\_azure\_resource\_group\_name) | (Required) The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_vnet_address_space"></a> [azure\_vnet\_address\_space](#input\_azure\_vnet\_address\_space) | (Required) The address space that is used the virtual network. You can supply more than one address space. | `list(string)` | n/a | yes |
| <a name="input_azure_vnet_dns_servers"></a> [azure\_vnet\_dns\_servers](#input\_azure\_vnet\_dns\_servers) | (Optional) List of IP addresses of DNS servers | `list(string)` | n/a | no |
| <a name="input_azure_vnet_name"></a> [azure\_vnet\_name](#input\_azure\_vnet\_name) | (Required) The name of the virtual network. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_vnet_private_subnet_address_prefixes"></a> [azure\_vnet\_private\_subnet\_address\_prefixes](#input\_azure\_vnet\_private\_subnet\_address\_prefixes) | (Required) The address prefix to use for the subnet. | `list(string)` | n/a | yes |
| <a name="input_azure_vnet_private_subnet_name"></a> [azure\_vnet\_private\_subnet\_name](#input\_azure\_vnet\_private\_subnet\_name) | (Required) The name of the subnet. | `string` | n/a | yes |
| <a name="input_azure_vnet_private_subnet_security_group"></a> [azure\_vnet\_private\_subnet\_security\_group](#input\_azure\_vnet\_private\_subnet\_security\_group) | (Optional) The Network Security Group to associate with the subnet. (Referenced by id, ie. azurerm\_network\_security\_group.example.id) | `string` | n/a | no |
| <a name="input_azure_vnet_public_subnet_address_prefixes"></a> [azure\_vnet\_public\_subnet\_address\_prefixes](#input\_azure\_vnet\_public\_subnet\_address\_prefixes) | (Required) The address prefix to use for the subnet. | `list(string)` | n/a | yes |
| <a name="input_azure_vnet_public_subnet_name"></a> [azure\_vnet\_public\_subnet\_name](#input\_azure\_vnet\_public\_subnet\_name) | (Required) The name of the subnet. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the bucket. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnet_id"></a> [private\_subnet\_id](#output\_private\_subnet\_id) | Vnet private subnet id |
| <a name="output_public_subnet_id"></a> [public\_subnet\_id](#output\_public\_subnet\_id) | Vnet public subnet id |
| <a name="output_vnet_address_space"></a> [vnet\_address\_space](#output\_vnet\_address\_space) | (Required) The list of address spaces used by the virtual network. |
| <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id) | Id Vnet |
| <a name="output_vnet_name"></a> [vnet\_name](#output\_vnet\_name) | (Required) The name of the virtual network. Changing this forces a new resource to be created |
