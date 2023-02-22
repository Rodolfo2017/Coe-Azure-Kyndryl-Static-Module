## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Module

<h2> azure_security_group </h2>

## Resources

| Name | Type |
|------|------|
| [azurerm_network_security_group.network_security_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_network_security_group_name"></a> [azure\_network\_security\_group\_name](#input\_azure\_network\_security\_group\_name) | Name of the Network Security Group | `string` | n/a | yes |
| <a name="input_azure_network_security_group_name_nsg_rules_inbound"></a> [azure\_network\_security\_group\_name\_nsg\_rules\_inbound](#input\_azure\_network\_security\_group\_name\_nsg\_rules\_inbound) | The values for each NSG rule inbound | <pre>list(object({<br>    name                       = string<br>    priority                   = number<br>    direction                  = string<br>    access                     = string<br>    protocol                   = string<br>    source_port_range          = string<br>    destination_port_range     = string<br>    source_address_prefix      = string<br>    destination_address_prefix = string<br>  }))</pre> | n/a | yes |
| <a name="input_azure_network_security_group_name_nsg_rules_outbound"></a> [azure\_network\_security\_group\_name\_nsg\_rules\_outbound](#input\_azure\_network\_security\_group\_name\_nsg\_rules\_outbound) | The values for each NSG rule outbound | <pre>list(object({<br>    name                       = string<br>    priority                   = number<br>    direction                  = string<br>    access                     = string<br>    protocol                   = string<br>    source_port_range          = string<br>    destination_port_range     = string<br>    source_address_prefix      = string<br>    destination_address_prefix = string<br>  }))</pre> | n/a | yes |
| <a name="input_azure_resource_group_location"></a> [azure\_resource\_group\_location](#input\_azure\_resource\_group\_location) | value | `string` | n/a | yes |
| <a name="input_azure_resource_group_name"></a> [azure\_resource\_group\_name](#input\_azure\_resource\_group\_name) | value | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the security groups. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nsg_id"></a> [nsg\_id](#output\_nsg\_id) | The value of the NSG ID |
